import 'dart:convert';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:high_q_replication/highq.dart';
import 'package:high_q_replication/providers/highq.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:oauth2/oauth2.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

part 'highq_status.g.dart';

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

class HighQDomainMeta {
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
  Client? _oauthClient;

  HighQDomainMeta();

  HighQDomainMeta.fromJson(HighQDomain domain, Map<String, dynamic> json) {
    var credentials = Credentials.fromJson(json['credentials']);
    _oauthClient = Client(
      credentials,
      identifier: domain.clientId,
      secret: domain.clientSecret,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "credentials": _oauthClient?.credentials.toJson(),
    };
  }

  void useClient(Client client) {
    _oauthClient = client;
  }

  void loadClient(Credentials credentials, HighQDomain domain) {}
}

@riverpod
class HighQDomainStatusRegistry extends _$HighQDomainStatusRegistry {
  String get _preferenceKey {
    return "highq_authorization_${domain.name}";
  }

  Future<HighQDomainMeta?> loadFromDisk() async {
    var preferences = await SharedPreferences.getInstance();
    var str = preferences.getString(_preferenceKey);
    if (str == null || str.isEmpty) {
      return null;
    }

    Map<String, dynamic> decoded = jsonDecode(str);
    return HighQDomainMeta.fromJson(domain, decoded);
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
  Future<HighQDomainMeta> build(HighQDomain domain) async {
    HighQDomainMeta? fromDisk = await loadFromDisk();
    if (fromDisk != null) {
      return fromDisk;
    }

    return HighQDomainMeta();
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
          known.useClient(client);
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
