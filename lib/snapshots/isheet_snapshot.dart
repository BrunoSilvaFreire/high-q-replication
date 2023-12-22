import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:high_q_replication/models/columns/column.dart';
import 'package:high_q_replication/models/columns/high_qi_sheet_columns.dart';
import 'package:high_q_replication/models/isheet/high_qi_sheet.dart';
import 'package:high_q_replication/models/isheet/isheet.dart';

part 'isheet_snapshot.g.dart';
part 'isheet_snapshot.freezed.dart';

abstract class Snapshot {}

@freezed
class iSheetSnapshot extends Snapshot with _$iSheetSnapshot {
  const factory iSheetSnapshot({
    required Isheet sheet,
    required List<HighQColumn> columns,
  }) = _iSheetSnapshot;

  factory iSheetSnapshot.fromJson(Map<String, dynamic> json) =>
      _$iSheetSnapshotFromJson(json);
}
