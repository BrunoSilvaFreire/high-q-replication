import 'package:freezed_annotation/freezed_annotation.dart';

import 'isheet.dart';

part 'high_qi_sheet.freezed.dart';
part 'high_qi_sheet.g.dart';

@freezed
class HighQiSheet with _$HighQiSheet {
  factory HighQiSheet({
    List<Isheet>? isheet,
  }) = _HighQiSheet;

  factory HighQiSheet.fromJson(Map<String, dynamic> json) =>
      _$HighQiSheetFromJson(json);
}
