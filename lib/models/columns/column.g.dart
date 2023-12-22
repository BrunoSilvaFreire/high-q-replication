// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'column.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HighQColumnImpl _$$HighQColumnImplFromJson(Map<String, dynamic> json) =>
    _$HighQColumnImpl(
      title: json['title'] as String?,
      type: json['type'] as String?,
      mendatory: json['mendatory'] as bool?,
      columnId: json['columnID'] as int?,
    );

Map<String, dynamic> _$$HighQColumnImplToJson(_$HighQColumnImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'type': instance.type,
      'mendatory': instance.mendatory,
      'columnID': instance.columnId,
    };
