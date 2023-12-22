import 'package:freezed_annotation/freezed_annotation.dart';

import 'column.dart';

part 'high_qi_sheet_columns.freezed.dart';
part 'high_qi_sheet_columns.g.dart';

@freezed
class HighQISheetColumnList with _$HighQISheetColumnList {
  factory HighQISheetColumnList({
    List<Column>? column,
  }) = _HighQISheetColumnList;

  factory HighQISheetColumnList.fromJson(Map<String, dynamic> json) =>
      _$HighQISheetColumnListFromJson(json);
}
