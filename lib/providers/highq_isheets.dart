import 'dart:convert';

import 'package:high_q_replication/models/isheet/high_qi_sheet.dart';
import 'package:high_q_replication/providers/highq.dart';
import 'package:high_q_replication/providers/highq_api.dart';
import 'package:high_q_replication/providers/highq_sites.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'highq_isheets.g.dart';

@riverpod
class HighQISheets extends _$HighQISheets {
  @override
  Future<HighQiSheetList?> build(HighQSite site, HighQDomain domain) async {
    var api = ref.watch(highQDomainAPIRegistryProvider.call(domain));

    var future = api.whenOrNull(
      data: (data) async {
        var response = await data.get(
          "/isheets",
          queryParameters: {"siteid": site.id.toString()},
        );
        var json = jsonDecode(response.body);
        return HighQiSheetList.fromJson(json);
      },
    );
    if (future != null) {
      return await future;
    }
    return null;
  }
}
