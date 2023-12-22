// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'isheet_snapshot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

iSheetSnapshot _$iSheetSnapshotFromJson(Map<String, dynamic> json) {
  return _iSheetSnapshot.fromJson(json);
}

/// @nodoc
mixin _$iSheetSnapshot {
  Isheet get sheet => throw _privateConstructorUsedError;
  List<HighQColumn> get columns => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $iSheetSnapshotCopyWith<iSheetSnapshot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $iSheetSnapshotCopyWith<$Res> {
  factory $iSheetSnapshotCopyWith(
          iSheetSnapshot value, $Res Function(iSheetSnapshot) then) =
      _$iSheetSnapshotCopyWithImpl<$Res, iSheetSnapshot>;
  @useResult
  $Res call({Isheet sheet, List<HighQColumn> columns});

  $IsheetCopyWith<$Res> get sheet;
}

/// @nodoc
class _$iSheetSnapshotCopyWithImpl<$Res, $Val extends iSheetSnapshot>
    implements $iSheetSnapshotCopyWith<$Res> {
  _$iSheetSnapshotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sheet = null,
    Object? columns = null,
  }) {
    return _then(_value.copyWith(
      sheet: null == sheet
          ? _value.sheet
          : sheet // ignore: cast_nullable_to_non_nullable
              as Isheet,
      columns: null == columns
          ? _value.columns
          : columns // ignore: cast_nullable_to_non_nullable
              as List<HighQColumn>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IsheetCopyWith<$Res> get sheet {
    return $IsheetCopyWith<$Res>(_value.sheet, (value) {
      return _then(_value.copyWith(sheet: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$iSheetSnapshotImplCopyWith<$Res>
    implements $iSheetSnapshotCopyWith<$Res> {
  factory _$$iSheetSnapshotImplCopyWith(_$iSheetSnapshotImpl value,
          $Res Function(_$iSheetSnapshotImpl) then) =
      __$$iSheetSnapshotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Isheet sheet, List<HighQColumn> columns});

  @override
  $IsheetCopyWith<$Res> get sheet;
}

/// @nodoc
class __$$iSheetSnapshotImplCopyWithImpl<$Res>
    extends _$iSheetSnapshotCopyWithImpl<$Res, _$iSheetSnapshotImpl>
    implements _$$iSheetSnapshotImplCopyWith<$Res> {
  __$$iSheetSnapshotImplCopyWithImpl(
      _$iSheetSnapshotImpl _value, $Res Function(_$iSheetSnapshotImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sheet = null,
    Object? columns = null,
  }) {
    return _then(_$iSheetSnapshotImpl(
      sheet: null == sheet
          ? _value.sheet
          : sheet // ignore: cast_nullable_to_non_nullable
              as Isheet,
      columns: null == columns
          ? _value._columns
          : columns // ignore: cast_nullable_to_non_nullable
              as List<HighQColumn>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$iSheetSnapshotImpl implements _iSheetSnapshot {
  const _$iSheetSnapshotImpl(
      {required this.sheet, required final List<HighQColumn> columns})
      : _columns = columns;

  factory _$iSheetSnapshotImpl.fromJson(Map<String, dynamic> json) =>
      _$$iSheetSnapshotImplFromJson(json);

  @override
  final Isheet sheet;
  final List<HighQColumn> _columns;
  @override
  List<HighQColumn> get columns {
    if (_columns is EqualUnmodifiableListView) return _columns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_columns);
  }

  @override
  String toString() {
    return 'iSheetSnapshot(sheet: $sheet, columns: $columns)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$iSheetSnapshotImpl &&
            (identical(other.sheet, sheet) || other.sheet == sheet) &&
            const DeepCollectionEquality().equals(other._columns, _columns));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, sheet, const DeepCollectionEquality().hash(_columns));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$iSheetSnapshotImplCopyWith<_$iSheetSnapshotImpl> get copyWith =>
      __$$iSheetSnapshotImplCopyWithImpl<_$iSheetSnapshotImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$iSheetSnapshotImplToJson(
      this,
    );
  }
}

abstract class _iSheetSnapshot implements iSheetSnapshot {
  const factory _iSheetSnapshot(
      {required final Isheet sheet,
      required final List<HighQColumn> columns}) = _$iSheetSnapshotImpl;

  factory _iSheetSnapshot.fromJson(Map<String, dynamic> json) =
      _$iSheetSnapshotImpl.fromJson;

  @override
  Isheet get sheet;
  @override
  List<HighQColumn> get columns;
  @override
  @JsonKey(ignore: true)
  _$$iSheetSnapshotImplCopyWith<_$iSheetSnapshotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
