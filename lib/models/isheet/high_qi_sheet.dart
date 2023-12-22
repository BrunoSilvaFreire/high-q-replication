import 'package:freezed_annotation/freezed_annotation.dart';

import 'isheet.dart';

part 'high_qi_sheet.freezed.dart';
part 'high_qi_sheet.g.dart';

@freezed
class HighQiSheetList with _$HighQiSheetList {
  factory HighQiSheetList({
    List<Isheet>? isheet,
  }) = _HighQiSheet;

  factory HighQiSheetList.fromJson(Map<String, dynamic> json) =>
      _$HighQiSheetListFromJson(json);
}
