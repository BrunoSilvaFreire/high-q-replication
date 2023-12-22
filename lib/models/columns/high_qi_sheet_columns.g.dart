// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'high_qi_sheet_columns.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HighQISheetColumnListImpl _$$HighQISheetColumnListImplFromJson(
        Map<String, dynamic> json) =>
    _$HighQISheetColumnListImpl(
      column: (json['column'] as List<dynamic>?)
          ?.map((e) => HighQColumn.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HighQISheetColumnListImplToJson(
        _$HighQISheetColumnListImpl instance) =>
    <String, dynamic>{
      'column': instance.column,
    };
