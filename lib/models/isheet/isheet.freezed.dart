// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'isheet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Isheet _$IsheetFromJson(Map<String, dynamic> json) {
  return _Isheet.fromJson(json);
}

/// @nodoc
mixin _$Isheet {
  dynamic get metaData => throw _privateConstructorUsedError;
  dynamic get head => throw _privateConstructorUsedError;
  dynamic get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'IsheetRecordID')
  dynamic get isheetRecordId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'templateID')
  dynamic get templateId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IsheetCopyWith<Isheet> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IsheetCopyWith<$Res> {
  factory $IsheetCopyWith(Isheet value, $Res Function(Isheet) then) =
      _$IsheetCopyWithImpl<$Res, Isheet>;
  @useResult
  $Res call(
      {dynamic metaData,
      dynamic head,
      dynamic data,
      @JsonKey(name: 'IsheetRecordID') dynamic isheetRecordId,
      String? name,
      int? id,
      String? type,
      @JsonKey(name: 'templateID') dynamic templateId});
}

/// @nodoc
class _$IsheetCopyWithImpl<$Res, $Val extends Isheet>
    implements $IsheetCopyWith<$Res> {
  _$IsheetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metaData = freezed,
    Object? head = freezed,
    Object? data = freezed,
    Object? isheetRecordId = freezed,
    Object? name = freezed,
    Object? id = freezed,
    Object? type = freezed,
    Object? templateId = freezed,
  }) {
    return _then(_value.copyWith(
      metaData: freezed == metaData
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as dynamic,
      head: freezed == head
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as dynamic,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isheetRecordId: freezed == isheetRecordId
          ? _value.isheetRecordId
          : isheetRecordId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      templateId: freezed == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IsheetImplCopyWith<$Res> implements $IsheetCopyWith<$Res> {
  factory _$$IsheetImplCopyWith(
          _$IsheetImpl value, $Res Function(_$IsheetImpl) then) =
      __$$IsheetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic metaData,
      dynamic head,
      dynamic data,
      @JsonKey(name: 'IsheetRecordID') dynamic isheetRecordId,
      String? name,
      int? id,
      String? type,
      @JsonKey(name: 'templateID') dynamic templateId});
}

/// @nodoc
class __$$IsheetImplCopyWithImpl<$Res>
    extends _$IsheetCopyWithImpl<$Res, _$IsheetImpl>
    implements _$$IsheetImplCopyWith<$Res> {
  __$$IsheetImplCopyWithImpl(
      _$IsheetImpl _value, $Res Function(_$IsheetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metaData = freezed,
    Object? head = freezed,
    Object? data = freezed,
    Object? isheetRecordId = freezed,
    Object? name = freezed,
    Object? id = freezed,
    Object? type = freezed,
    Object? templateId = freezed,
  }) {
    return _then(_$IsheetImpl(
      metaData: freezed == metaData
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as dynamic,
      head: freezed == head
          ? _value.head
          : head // ignore: cast_nullable_to_non_nullable
              as dynamic,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isheetRecordId: freezed == isheetRecordId
          ? _value.isheetRecordId
          : isheetRecordId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      templateId: freezed == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IsheetImpl implements _Isheet {
  _$IsheetImpl(
      {this.metaData,
      this.head,
      this.data,
      @JsonKey(name: 'IsheetRecordID') this.isheetRecordId,
      this.name,
      this.id,
      this.type,
      @JsonKey(name: 'templateID') this.templateId});

  factory _$IsheetImpl.fromJson(Map<String, dynamic> json) =>
      _$$IsheetImplFromJson(json);

  @override
  final dynamic metaData;
  @override
  final dynamic head;
  @override
  final dynamic data;
  @override
  @JsonKey(name: 'IsheetRecordID')
  final dynamic isheetRecordId;
  @override
  final String? name;
  @override
  final int? id;
  @override
  final String? type;
  @override
  @JsonKey(name: 'templateID')
  final dynamic templateId;

  @override
  String toString() {
    return 'Isheet(metaData: $metaData, head: $head, data: $data, isheetRecordId: $isheetRecordId, name: $name, id: $id, type: $type, templateId: $templateId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsheetImpl &&
            const DeepCollectionEquality().equals(other.metaData, metaData) &&
            const DeepCollectionEquality().equals(other.head, head) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality()
                .equals(other.isheetRecordId, isheetRecordId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other.templateId, templateId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(metaData),
      const DeepCollectionEquality().hash(head),
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(isheetRecordId),
      name,
      id,
      type,
      const DeepCollectionEquality().hash(templateId));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IsheetImplCopyWith<_$IsheetImpl> get copyWith =>
      __$$IsheetImplCopyWithImpl<_$IsheetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IsheetImplToJson(
      this,
    );
  }
}

abstract class _Isheet implements Isheet {
  factory _Isheet(
      {final dynamic metaData,
      final dynamic head,
      final dynamic data,
      @JsonKey(name: 'IsheetRecordID') final dynamic isheetRecordId,
      final String? name,
      final int? id,
      final String? type,
      @JsonKey(name: 'templateID') final dynamic templateId}) = _$IsheetImpl;

  factory _Isheet.fromJson(Map<String, dynamic> json) = _$IsheetImpl.fromJson;

  @override
  dynamic get metaData;
  @override
  dynamic get head;
  @override
  dynamic get data;
  @override
  @JsonKey(name: 'IsheetRecordID')
  dynamic get isheetRecordId;
  @override
  String? get name;
  @override
  int? get id;
  @override
  String? get type;
  @override
  @JsonKey(name: 'templateID')
  dynamic get templateId;
  @override
  @JsonKey(ignore: true)
  _$$IsheetImplCopyWith<_$IsheetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
