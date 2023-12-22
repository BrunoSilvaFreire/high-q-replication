import 'package:freezed_annotation/freezed_annotation.dart';

part 'isheet.freezed.dart';
part 'isheet.g.dart';

@freezed
class Isheet with _$Isheet {
  factory Isheet({
    dynamic metaData,
    dynamic head,
    dynamic data,
    @JsonKey(name: 'IsheetRecordID') dynamic isheetRecordId,
    String? name,
    int? id,
    String? type,
    @JsonKey(name: 'templateID') dynamic templateId,
  }) = _Isheet;

  factory Isheet.fromJson(Map<String, dynamic> json) => _$IsheetFromJson(json);
}
