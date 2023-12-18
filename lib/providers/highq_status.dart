import 'dart:convert';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:high_q_replication/highq.dart';
import 'package:high_q_replication/providers/highq.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:oauth2/oauth2.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'highq_status.g.dart';

enum HighQDomainStatus {
  unauthenticated,
  unauthorized,
  healthy,
}

class HighQDomainMeta {
  HighQDomainStatus status = HighQDomainStatus.unauthenticated;
  final Credentials credentials;
  late Client _oauthClient;

  HighQDomainMeta(this.credentials);

  static HighQDomainMeta fromJson(Map<String, dynamic> json) {
    var credentials = Credentials.fromJson(json['credentials']);
    return HighQDomainMeta(credentials);
  }

  Map<String, dynamic> toJson() {
    return {"credentials": credentials.toJson()};
  }

  void loadClient(HighQDomain domain) {
    _oauthClient = Client(
      credentials,
      identifier: domain.clientId,
      secret: domain.secret,
    );
  }
}

@riverpod
class HighQDomainStatusRegistry extends _$HighQDomainStatusRegistry {
  final _httpClient = HttpClient();

  Future<Map<String, HighQDomainMeta>> loadFromDisk() async {
    var preferences = await SharedPreferences.getInstance();
    var str = preferences.getString("highq_authorization");
    if (str == null || str.isEmpty) {
      return <String, HighQDomainMeta>{};
    }

    Map<String, dynamic> decoded = jsonDecode(str);
    return decoded.map(
      (key, value) => MapEntry(
        key,
        HighQDomainMeta.fromJson(value),
      ),
    );
  }

  @override
  Stream<Map<String, HighQDomainMeta>> build(WidgetRef ref) async* {
    var registry = ref.watch(highQDomainRegistryProvider);
    var data = registry.asData;
    if (data == null) {
      return;
    }

    Map<String, HighQDomainMeta> fromDisk = await loadFromDisk();
    for (var domain in data.value) {
      var meta = fromDisk[domain.clientId];
      if (meta != null) {
        meta.loadClient(domain);
      }
    }

    yield fromDisk;
  }

  void authenticate(HighQDomain domain) {
    var grant = AuthorizationCodeGrant(
      domain.clientId,
      HighQ.getAuthorizationEndpoint(domain),
      HighQ.getTokenEndpoint(domain),
      secret: domain.secret,
    );
    var redirectUrl = Uri(
      scheme: "https",
      host: "localhost",

    );
    var authorizationUrl = grant.getAuthorizationUrl(redirectUrl);
  }
}
