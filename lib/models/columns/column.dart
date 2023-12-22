import 'package:freezed_annotation/freezed_annotation.dart';

part 'column.freezed.dart';
part 'column.g.dart';

@freezed
class Column with _$Column {
  factory Column({
    String? title,
    String? type,
    bool? mendatory,
    @JsonKey(name: 'columnID') int? columnId
  }) = _Column;

  factory Column.fromJson(Map<String, dynamic> json) => _$ColumnFromJson(json);
}
