// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'high_qi_sheet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HighQiSheetImpl _$$HighQiSheetImplFromJson(Map<String, dynamic> json) =>
    _$HighQiSheetImpl(
      isheet: (json['isheet'] as List<dynamic>?)
          ?.map((e) => Isheet.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HighQiSheetImplToJson(_$HighQiSheetImpl instance) =>
    <String, dynamic>{
      'isheet': instance.isheet,
    };
