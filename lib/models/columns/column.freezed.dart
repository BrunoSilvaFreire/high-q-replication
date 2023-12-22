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

HighQColumn _$HighQColumnFromJson(Map<String, dynamic> json) {
  return _HighQColumn.fromJson(json);
}

/// @nodoc
mixin _$HighQColumn {
  String? get title => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  bool? get mendatory => throw _privateConstructorUsedError;
  @JsonKey(name: 'columnID')
  int? get columnId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HighQColumnCopyWith<HighQColumn> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HighQColumnCopyWith<$Res> {
  factory $HighQColumnCopyWith(
          HighQColumn value, $Res Function(HighQColumn) then) =
      _$HighQColumnCopyWithImpl<$Res, HighQColumn>;
  @useResult
  $Res call(
      {String? title,
      String? type,
      bool? mendatory,
      @JsonKey(name: 'columnID') int? columnId});
}

/// @nodoc
class _$HighQColumnCopyWithImpl<$Res, $Val extends HighQColumn>
    implements $HighQColumnCopyWith<$Res> {
  _$HighQColumnCopyWithImpl(this._value, this._then);

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
abstract class _$$HighQColumnImplCopyWith<$Res>
    implements $HighQColumnCopyWith<$Res> {
  factory _$$HighQColumnImplCopyWith(
          _$HighQColumnImpl value, $Res Function(_$HighQColumnImpl) then) =
      __$$HighQColumnImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String? type,
      bool? mendatory,
      @JsonKey(name: 'columnID') int? columnId});
}

/// @nodoc
class __$$HighQColumnImplCopyWithImpl<$Res>
    extends _$HighQColumnCopyWithImpl<$Res, _$HighQColumnImpl>
    implements _$$HighQColumnImplCopyWith<$Res> {
  __$$HighQColumnImplCopyWithImpl(
      _$HighQColumnImpl _value, $Res Function(_$HighQColumnImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? type = freezed,
    Object? mendatory = freezed,
    Object? columnId = freezed,
  }) {
    return _then(_$HighQColumnImpl(
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
class _$HighQColumnImpl implements _HighQColumn {
  _$HighQColumnImpl(
      {this.title,
      this.type,
      this.mendatory,
      @JsonKey(name: 'columnID') this.columnId});

  factory _$HighQColumnImpl.fromJson(Map<String, dynamic> json) =>
      _$$HighQColumnImplFromJson(json);

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
    return 'HighQColumn(title: $title, type: $type, mendatory: $mendatory, columnId: $columnId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HighQColumnImpl &&
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
  _$$HighQColumnImplCopyWith<_$HighQColumnImpl> get copyWith =>
      __$$HighQColumnImplCopyWithImpl<_$HighQColumnImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HighQColumnImplToJson(
      this,
    );
  }
}

abstract class _HighQColumn implements HighQColumn {
  factory _HighQColumn(
      {final String? title,
      final String? type,
      final bool? mendatory,
      @JsonKey(name: 'columnID') final int? columnId}) = _$HighQColumnImpl;

  factory _HighQColumn.fromJson(Map<String, dynamic> json) =
      _$HighQColumnImpl.fromJson;

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
  _$$HighQColumnImplCopyWith<_$HighQColumnImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
