// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'high_qi_sheet.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HighQiSheetList _$HighQiSheetListFromJson(Map<String, dynamic> json) {
  return _HighQiSheet.fromJson(json);
}

/// @nodoc
mixin _$HighQiSheetList {
  List<Isheet>? get isheet => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HighQiSheetListCopyWith<HighQiSheetList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HighQiSheetListCopyWith<$Res> {
  factory $HighQiSheetListCopyWith(
          HighQiSheetList value, $Res Function(HighQiSheetList) then) =
      _$HighQiSheetListCopyWithImpl<$Res, HighQiSheetList>;
  @useResult
  $Res call({List<Isheet>? isheet});
}

/// @nodoc
class _$HighQiSheetListCopyWithImpl<$Res, $Val extends HighQiSheetList>
    implements $HighQiSheetListCopyWith<$Res> {
  _$HighQiSheetListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isheet = freezed,
  }) {
    return _then(_value.copyWith(
      isheet: freezed == isheet
          ? _value.isheet
          : isheet // ignore: cast_nullable_to_non_nullable
              as List<Isheet>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HighQiSheetImplCopyWith<$Res>
    implements $HighQiSheetListCopyWith<$Res> {
  factory _$$HighQiSheetImplCopyWith(
          _$HighQiSheetImpl value, $Res Function(_$HighQiSheetImpl) then) =
      __$$HighQiSheetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Isheet>? isheet});
}

/// @nodoc
class __$$HighQiSheetImplCopyWithImpl<$Res>
    extends _$HighQiSheetListCopyWithImpl<$Res, _$HighQiSheetImpl>
    implements _$$HighQiSheetImplCopyWith<$Res> {
  __$$HighQiSheetImplCopyWithImpl(
      _$HighQiSheetImpl _value, $Res Function(_$HighQiSheetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isheet = freezed,
  }) {
    return _then(_$HighQiSheetImpl(
      isheet: freezed == isheet
          ? _value._isheet
          : isheet // ignore: cast_nullable_to_non_nullable
              as List<Isheet>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HighQiSheetImpl implements _HighQiSheet {
  _$HighQiSheetImpl({final List<Isheet>? isheet}) : _isheet = isheet;

  factory _$HighQiSheetImpl.fromJson(Map<String, dynamic> json) =>
      _$$HighQiSheetImplFromJson(json);

  final List<Isheet>? _isheet;
  @override
  List<Isheet>? get isheet {
    final value = _isheet;
    if (value == null) return null;
    if (_isheet is EqualUnmodifiableListView) return _isheet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HighQiSheetList(isheet: $isheet)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HighQiSheetImpl &&
            const DeepCollectionEquality().equals(other._isheet, _isheet));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_isheet));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HighQiSheetImplCopyWith<_$HighQiSheetImpl> get copyWith =>
      __$$HighQiSheetImplCopyWithImpl<_$HighQiSheetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HighQiSheetImplToJson(
      this,
    );
  }
}

abstract class _HighQiSheet implements HighQiSheetList {
  factory _HighQiSheet({final List<Isheet>? isheet}) = _$HighQiSheetImpl;

  factory _HighQiSheet.fromJson(Map<String, dynamic> json) =
      _$HighQiSheetImpl.fromJson;

  @override
  List<Isheet>? get isheet;
  @override
  @JsonKey(ignore: true)
  _$$HighQiSheetImplCopyWith<_$HighQiSheetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
