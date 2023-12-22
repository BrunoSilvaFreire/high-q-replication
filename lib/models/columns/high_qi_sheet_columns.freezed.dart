// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'high_qi_sheet_columns.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HighQiSheetColumnList _$HighQiSheetColumnListFromJson(
    Map<String, dynamic> json) {
  return _HighQISheetColumnList.fromJson(json);
}

/// @nodoc
mixin _$HighQiSheetColumnList {
  List<HighQColumn>? get column => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HighQiSheetColumnListCopyWith<HighQiSheetColumnList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HighQiSheetColumnListCopyWith<$Res> {
  factory $HighQiSheetColumnListCopyWith(HighQiSheetColumnList value,
          $Res Function(HighQiSheetColumnList) then) =
      _$HighQiSheetColumnListCopyWithImpl<$Res, HighQiSheetColumnList>;
  @useResult
  $Res call({List<HighQColumn>? column});
}

/// @nodoc
class _$HighQiSheetColumnListCopyWithImpl<$Res,
        $Val extends HighQiSheetColumnList>
    implements $HighQiSheetColumnListCopyWith<$Res> {
  _$HighQiSheetColumnListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? column = freezed,
  }) {
    return _then(_value.copyWith(
      column: freezed == column
          ? _value.column
          : column // ignore: cast_nullable_to_non_nullable
              as List<HighQColumn>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HighQISheetColumnListImplCopyWith<$Res>
    implements $HighQiSheetColumnListCopyWith<$Res> {
  factory _$$HighQISheetColumnListImplCopyWith(
          _$HighQISheetColumnListImpl value,
          $Res Function(_$HighQISheetColumnListImpl) then) =
      __$$HighQISheetColumnListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<HighQColumn>? column});
}

/// @nodoc
class __$$HighQISheetColumnListImplCopyWithImpl<$Res>
    extends _$HighQiSheetColumnListCopyWithImpl<$Res,
        _$HighQISheetColumnListImpl>
    implements _$$HighQISheetColumnListImplCopyWith<$Res> {
  __$$HighQISheetColumnListImplCopyWithImpl(_$HighQISheetColumnListImpl _value,
      $Res Function(_$HighQISheetColumnListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? column = freezed,
  }) {
    return _then(_$HighQISheetColumnListImpl(
      column: freezed == column
          ? _value._column
          : column // ignore: cast_nullable_to_non_nullable
              as List<HighQColumn>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HighQISheetColumnListImpl implements _HighQISheetColumnList {
  _$HighQISheetColumnListImpl({final List<HighQColumn>? column})
      : _column = column;

  factory _$HighQISheetColumnListImpl.fromJson(Map<String, dynamic> json) =>
      _$$HighQISheetColumnListImplFromJson(json);

  final List<HighQColumn>? _column;
  @override
  List<HighQColumn>? get column {
    final value = _column;
    if (value == null) return null;
    if (_column is EqualUnmodifiableListView) return _column;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HighQiSheetColumnList(column: $column)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HighQISheetColumnListImpl &&
            const DeepCollectionEquality().equals(other._column, _column));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_column));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HighQISheetColumnListImplCopyWith<_$HighQISheetColumnListImpl>
      get copyWith => __$$HighQISheetColumnListImplCopyWithImpl<
          _$HighQISheetColumnListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HighQISheetColumnListImplToJson(
      this,
    );
  }
}

abstract class _HighQISheetColumnList implements HighQiSheetColumnList {
  factory _HighQISheetColumnList({final List<HighQColumn>? column}) =
      _$HighQISheetColumnListImpl;

  factory _HighQISheetColumnList.fromJson(Map<String, dynamic> json) =
      _$HighQISheetColumnListImpl.fromJson;

  @override
  List<HighQColumn>? get column;
  @override
  @JsonKey(ignore: true)
  _$$HighQISheetColumnListImplCopyWith<_$HighQISheetColumnListImpl>
      get copyWith => throw _privateConstructorUsedError;
}
