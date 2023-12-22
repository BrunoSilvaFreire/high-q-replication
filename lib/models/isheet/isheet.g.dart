// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isheet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IsheetImpl _$$IsheetImplFromJson(Map<String, dynamic> json) => _$IsheetImpl(
      metaData: json['metaData'],
      head: json['head'],
      data: json['data'],
      isheetRecordId: json['IsheetRecordID'],
      name: json['name'] as String?,
      id: json['id'] as int?,
      type: json['type'] as String?,
      templateId: json['templateID'],
    );

Map<String, dynamic> _$$IsheetImplToJson(_$IsheetImpl instance) =>
    <String, dynamic>{
      'metaData': instance.metaData,
      'head': instance.head,
      'data': instance.data,
      'IsheetRecordID': instance.isheetRecordId,
      'name': instance.name,
      'id': instance.id,
      'type': instance.type,
      'templateID': instance.templateId,
    };
