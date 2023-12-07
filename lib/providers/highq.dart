import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'highq.g.dart';

part 'highq.freezed.dart';

@freezed
class HighQDomain with _$HighQDomain {
  const factory HighQDomain(
    String name,
    String domain,
    String clientId,
    String secret,
  ) = _HighQDomain;

  factory HighQDomain.fromJson(Map<String, Object?> json) =>
      _$HighQDomainFromJson(json);
}

@riverpod
class HighQDomainRegistry extends _$HighQDomainRegistry {
  @override
  Future<List<HighQDomain>> build() async {
    var preferences = await SharedPreferences.getInstance();
    var domains = preferences.getStringList("highq_domains");
    if (domains == null) {
      return [];
    }
    return domains.map((e) => HighQDomain.fromJson(jsonDecode(e))).toList();
  }

  Future addDomain(HighQDomain domain) async {
    var preferences = await SharedPreferences.getInstance();
    var newDomains = [...state.requireValue, domain];

    await preferences.setStringList(
      "highq_domains",
      newDomains.map((e) => jsonEncode(e.toJson())).toList(),
    );

    state = AsyncData(newDomains);
  }

  Future removeDomain(HighQDomain domain) async {
    var newDomains = state.requireValue..remove(domain);
    state = const AsyncLoading();
    var preferences = await SharedPreferences.getInstance();

    await preferences.setStringList(
      "highq_domains",
      newDomains.map((e) => jsonEncode(e.toJson())).toList(),
    );

    state = AsyncData(newDomains);
  }
}
