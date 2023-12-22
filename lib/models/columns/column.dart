import 'package:freezed_annotation/freezed_annotation.dart';

part 'column.freezed.dart';
part 'column.g.dart';

@freezed
class HighQColumn with _$HighQColumn {
  factory HighQColumn({
    String? title,
    String? type,
    bool? mendatory,
    @JsonKey(name: 'columnID') int? columnId
  }) = _HighQColumn;

  factory HighQColumn.fromJson(Map<String, dynamic> json) => _$HighQColumnFromJson(json);
}
