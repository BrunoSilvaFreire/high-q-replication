import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:high_q_replication/collections.dart';
import 'package:high_q_replication/providers/highq.dart';
import 'package:high_q_replication/providers/highq_api.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'highq_sites.g.dart';

part 'highq_sites.freezed.dart';

@freezed
class HighQSite with _$HighQSite {
  const factory HighQSite(
    int id,
    String? sitename,
    String? createddate,
    String? status,
  ) = _HighQSite;

  factory HighQSite.fromJson(Map<String, Object?> json) =>
      _$HighQSiteFromJson(json);
}

@freezed
class HighQSiteList with _$HighQSiteList {
  const factory HighQSiteList(
    List<HighQSite> site,
  ) = _HighQSiteList;

  factory HighQSiteList.fromJson(Map<String, Object?> json) =>
      _$HighQSiteListFromJson(json);
}

@riverpod
class HighQSites extends _$HighQSites {
  Future<HighQSiteList?> build(HighQDomain domain) async {
    var api = ref.watch(highQDomainAPIRegistryProvider.call(domain));
    if (api.hasValue) {
      var response = await api.requireValue.get("/sites");
      return HighQSiteList.fromJson(jsonDecode(response.body));
    }

    return null;
  }
}

@riverpod
class HighQSiteQuery extends _$HighQSiteQuery {
  Future<HighQSite?> build(int index, HighQDomain domain) async {
    var api = ref.watch(highQSitesProvider.call(domain));
    return api.whenOrNull(
      data: (data) {
        return data?.site.firstOrNullWhere((element) => element.id == index);
      },
    );
  }
}
