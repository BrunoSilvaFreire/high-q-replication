// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'column.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Column _$ColumnFromJson(Map<String, dynamic> json) {
  return _Column.fromJson(json);
}

/// @nodoc
mixin _$Column {
  String? get title => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  bool? get mendatory => throw _privateConstructorUsedError;
  @JsonKey(name: 'columnID')
  int? get columnId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ColumnCopyWith<Column> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ColumnCopyWith<$Res> {
  factory $ColumnCopyWith(Column value, $Res Function(Column) then) =
      _$ColumnCopyWithImpl<$Res, Column>;
  @useResult
  $Res call(
      {String? title,
      String? type,
      bool? mendatory,
      @JsonKey(name: 'columnID') int? columnId});
}

/// @nodoc
class _$ColumnCopyWithImpl<$Res, $Val extends Column>
    implements $ColumnCopyWith<$Res> {
  _$ColumnCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? type = freezed,
    Object? mendatory = freezed,
    Object? columnId = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      mendatory: freezed == mendatory
          ? _value.mendatory
          : mendatory // ignore: cast_nullable_to_non_nullable
              as bool?,
      columnId: freezed == columnId
          ? _value.columnId
          : columnId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ColumnImplCopyWith<$Res> implements $ColumnCopyWith<$Res> {
  factory _$$ColumnImplCopyWith(
          _$ColumnImpl value, $Res Function(_$ColumnImpl) then) =
      __$$ColumnImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? type,
      bool? mendatory,
      @JsonKey(name: 'columnID') int? columnId});
}

/// @nodoc
class __$$ColumnImplCopyWithImpl<$Res>
    extends _$ColumnCopyWithImpl<$Res, _$ColumnImpl>
    implements _$$ColumnImplCopyWith<$Res> {
  __$$ColumnImplCopyWithImpl(
      _$ColumnImpl _value, $Res Function(_$ColumnImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? type = freezed,
    Object? mendatory = freezed,
    Object? columnId = freezed,
  }) {
    return _then(_$ColumnImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      mendatory: freezed == mendatory
          ? _value.mendatory
          : mendatory // ignore: cast_nullable_to_non_nullable
              as bool?,
      columnId: freezed == columnId
          ? _value.columnId
          : columnId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ColumnImpl implements _Column {
  _$ColumnImpl(
      {this.title,
      this.type,
      this.mendatory,
      @JsonKey(name: 'columnID') this.columnId});

  factory _$ColumnImpl.fromJson(Map<String, dynamic> json) =>
      _$$ColumnImplFromJson(json);

  @override
  final String? title;
  @override
  final String? type;
  @override
  final bool? mendatory;
  @override
  @JsonKey(name: 'columnID')
  final int? columnId;

  @override
  String toString() {
    return 'Column(title: $title, type: $type, mendatory: $mendatory, columnId: $columnId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ColumnImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.mendatory, mendatory) ||
                other.mendatory == mendatory) &&
            (identical(other.columnId, columnId) ||
                other.columnId == columnId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, type, mendatory, columnId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ColumnImplCopyWith<_$ColumnImpl> get copyWith =>
      __$$ColumnImplCopyWithImpl<_$ColumnImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ColumnImplToJson(
      this,
    );
  }
}

abstract class _Column implements Column {
  factory _Column(
      {final String? title,
      final String? type,
      final bool? mendatory,
      @JsonKey(name: 'columnID') final int? columnId}) = _$ColumnImpl;

  factory _Column.fromJson(Map<String, dynamic> json) = _$ColumnImpl.fromJson;

  @override
  String? get title;
  @override
  String? get type;
  @override
  bool? get mendatory;
  @override
  @JsonKey(name: 'columnID')
  int? get columnId;
  @override
  @JsonKey(ignore: true)
  _$$ColumnImplCopyWith<_$ColumnImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
