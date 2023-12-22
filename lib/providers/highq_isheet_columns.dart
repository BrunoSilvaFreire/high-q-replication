import 'dart:convert';

import 'package:high_q_replication/models/columns/high_qi_sheet_columns.dart';
import 'package:high_q_replication/models/isheet/high_qi_sheet.dart';
import 'package:high_q_replication/providers/highq.dart';
import 'package:high_q_replication/providers/highq_api.dart';
import 'package:high_q_replication/providers/highq_sites.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'highq_isheet_columns.g.dart';

@riverpod
class HighQISheetColumns extends _$HighQISheetColumns {
  @override
  Future<HighQISheetColumnList?> build(int sheetId, HighQDomain domain) async {
    var api = ref.watch(highQDomainAPIRegistryProvider.call(domain));

    var future = api.whenOrNull(
      data: (data) async {
        var response = await data.get(
          "/isheets/$sheetId/columns"
        );
        var json = jsonDecode(response.body);
        return HighQISheetColumnList.fromJson(json);
      },
    );
    if (future != null) {
      return await future;
    }
    return null;
  }
}
