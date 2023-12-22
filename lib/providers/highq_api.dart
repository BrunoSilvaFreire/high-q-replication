import 'dart:convert';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:high_q_replication/highq.dart';
import 'package:high_q_replication/providers/highq.dart';
import 'package:http/src/response.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:oauth2/oauth2.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

part 'highq_api.g.dart';

enum HighQDomainStatus {
  // We have no token
  unauthenticated,
  // Our token doesn't work
  unauthorized,
  // We have a token but haven't used yet
  authenticated,
  // Our token's working
  healthy,
}

class HighQDomainAPI {
  HighQDomainStatus get status {
    if (_oauthClient != null) {
      if (_erroed) {
        return HighQDomainStatus.unauthorized;
      }
      if (_healthy) {
        return HighQDomainStatus.healthy;
      }
      return HighQDomainStatus.authenticated;
    }
    return HighQDomainStatus.unauthenticated;
  }

  bool _erroed = false;
  bool _healthy = false;
  HighQDomain? _domain;
  Client? _oauthClient;

  HighQDomainAPI();

  HighQDomainAPI.fromJson(HighQDomain domain, Map<String, dynamic> json) {
    var credentials = Credentials.fromJson(json['credentials']);
    _oauthClient = Client(
      credentials,
      identifier: domain.clientId,
      secret: domain.clientSecret,
    );
    _domain = domain;
  }

  Client? get client => _oauthClient;

  Map<String, dynamic> toJson() {
    return {
      "credentials": _oauthClient?.credentials.toJson(),
    };
  }

  void useClient(HighQDomain domain, Client client) {
    _domain = domain;
    _oauthClient = client;
  }

  Future<Response> get<T>(
    String path, {
    Map<String, String>? queryParameters,
  }) async {
    Uri uri = _buildUri(path, queryParameters);
    var headers = {HttpHeaders.acceptHeader: "application/json"};
    return await _oauthClient!.get(uri, headers: headers);
  }

  Uri _buildUri(String path, Map<String, String>? queryParameters) {
    var d = _domain!;
    StringBuffer buffer =
        StringBuffer("${d.domain}${d.getUniqueName()}/api/17$path");
    if (queryParameters != null) {
      buffer.write("?");
      var entries = queryParameters.entries.toList();
      var lastIndex = entries.length - 1;
      for (var (index, pair) in entries.indexed) {
        buffer.write("${pair.key}=${pair.value}");
        if (index != lastIndex) {
          buffer.write("&");
        }
      }
    }
    var uri = Uri.parse(buffer.toString());
    return uri;
  }
}

@riverpod
class HighQDomainAPIRegistry extends _$HighQDomainAPIRegistry {
  String get _preferenceKey {
    return "highq_authorization_${domain.name}";
  }

  Future<HighQDomainAPI?> loadFromDisk() async {
    var preferences = await SharedPreferences.getInstance();
    var str = preferences.getString(_preferenceKey);
    if (str == null || str.isEmpty) {
      return null;
    }

    Map<String, dynamic> decoded = jsonDecode(str);
    return HighQDomainAPI.fromJson(domain, decoded);
  }

  Future<bool> saveToDisk() async {
    var entry = await future;
    var preferences = await SharedPreferences.getInstance();

    return await preferences.setString(
      _preferenceKey,
      jsonEncode(entry),
    );
  }

  @override
  Future<HighQDomainAPI> build(HighQDomain domain) async {
    HighQDomainAPI? fromDisk = await loadFromDisk();
    if (fromDisk != null) {
      return fromDisk;
    }

    return HighQDomainAPI();
  }

  Future<String?> authenticate() async {
    var known = await future;

    if (known.status == HighQDomainStatus.healthy) {
      return null;
    }

    const portNumber = 8088;
    var socket = await ServerSocket.bind("localhost", portNumber);
    var server = HttpServer.listenOn(socket);

    var grant = AuthorizationCodeGrant(
      domain.clientId,
      HighQ.getAuthorizationEndpoint(domain),
      HighQ.getTokenEndpoint(domain),
      secret: domain.clientSecret,
      basicAuth: false,
    );

    var redirectUrl = Uri.http("localhost:$portNumber");
    var authorizationUrl = grant.getAuthorizationUrl(redirectUrl);

    String? token;
    var result = await launchUrl(authorizationUrl);
    if (result) {
      bool done = false;
      await for (var request in server) {
        try {
          var client = await grant.handleAuthorizationResponse(
            request.uri.queryParameters,
          );
          known.useClient(domain, client);
          await saveToDisk();
          request.response.statusCode = HttpStatus.ok;
          request.response
              .write("Authentication complete, you may close this window.");
          done = true;
        } catch (e) {
          request.response.statusCode = HttpStatus.badRequest;
          request.response.write(e);
        }
        await request.response.close();
        if (done) {
          break;
        }
      }
    }

    await server.close();
    await socket.close();
    ref.invalidateSelf();
    return token;
  }
}
