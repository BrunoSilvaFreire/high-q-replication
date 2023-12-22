// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isheet_snapshot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$iSheetSnapshotImpl _$$iSheetSnapshotImplFromJson(Map<String, dynamic> json) =>
    _$iSheetSnapshotImpl(
      sheet: Isheet.fromJson(json['sheet'] as Map<String, dynamic>),
      columns: (json['columns'] as List<dynamic>)
          .map((e) => HighQColumn.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$iSheetSnapshotImplToJson(
        _$iSheetSnapshotImpl instance) =>
    <String, dynamic>{
      'sheet': instance.sheet,
      'columns': instance.columns,
    };
