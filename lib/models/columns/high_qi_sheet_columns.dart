import 'package:freezed_annotation/freezed_annotation.dart';

import 'column.dart';

part 'high_qi_sheet_columns.freezed.dart';
part 'high_qi_sheet_columns.g.dart';

@freezed
class HighQiSheetColumnList with _$HighQiSheetColumnList {
  factory HighQiSheetColumnList({
    List<HighQColumn>? column,
  }) = _HighQISheetColumnList;

  factory HighQiSheetColumnList.fromJson(Map<String, dynamic> json) =>
      _$HighQiSheetColumnListFromJson(json);
}
