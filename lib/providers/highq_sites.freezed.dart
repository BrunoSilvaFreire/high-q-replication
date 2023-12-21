// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'highq_sites.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HighQSite _$HighQSiteFromJson(Map<String, dynamic> json) {
  return _HighQSite.fromJson(json);
}

/// @nodoc
mixin _$HighQSite {
  int get id => throw _privateConstructorUsedError;
  String? get sitename => throw _privateConstructorUsedError;
  String? get createddate => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HighQSiteCopyWith<HighQSite> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HighQSiteCopyWith<$Res> {
  factory $HighQSiteCopyWith(HighQSite value, $Res Function(HighQSite) then) =
      _$HighQSiteCopyWithImpl<$Res, HighQSite>;
  @useResult
  $Res call({int id, String? sitename, String? createddate, String? status});
}

/// @nodoc
class _$HighQSiteCopyWithImpl<$Res, $Val extends HighQSite>
    implements $HighQSiteCopyWith<$Res> {
  _$HighQSiteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sitename = freezed,
    Object? createddate = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      sitename: freezed == sitename
          ? _value.sitename
          : sitename // ignore: cast_nullable_to_non_nullable
              as String?,
      createddate: freezed == createddate
          ? _value.createddate
          : createddate // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HighQSiteImplCopyWith<$Res>
    implements $HighQSiteCopyWith<$Res> {
  factory _$$HighQSiteImplCopyWith(
          _$HighQSiteImpl value, $Res Function(_$HighQSiteImpl) then) =
      __$$HighQSiteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? sitename, String? createddate, String? status});
}

/// @nodoc
class __$$HighQSiteImplCopyWithImpl<$Res>
    extends _$HighQSiteCopyWithImpl<$Res, _$HighQSiteImpl>
    implements _$$HighQSiteImplCopyWith<$Res> {
  __$$HighQSiteImplCopyWithImpl(
      _$HighQSiteImpl _value, $Res Function(_$HighQSiteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sitename = freezed,
    Object? createddate = freezed,
    Object? status = freezed,
  }) {
    return _then(_$HighQSiteImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      freezed == sitename
          ? _value.sitename
          : sitename // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == createddate
          ? _value.createddate
          : createddate // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HighQSiteImpl implements _HighQSite {
  const _$HighQSiteImpl(this.id, this.sitename, this.createddate, this.status);

  factory _$HighQSiteImpl.fromJson(Map<String, dynamic> json) =>
      _$$HighQSiteImplFromJson(json);

  @override
  final int id;
  @override
  final String? sitename;
  @override
  final String? createddate;
  @override
  final String? status;

  @override
  String toString() {
    return 'HighQSite(id: $id, sitename: $sitename, createddate: $createddate, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HighQSiteImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sitename, sitename) ||
                other.sitename == sitename) &&
            (identical(other.createddate, createddate) ||
                other.createddate == createddate) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, sitename, createddate, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HighQSiteImplCopyWith<_$HighQSiteImpl> get copyWith =>
      __$$HighQSiteImplCopyWithImpl<_$HighQSiteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HighQSiteImplToJson(
      this,
    );
  }
}

abstract class _HighQSite implements HighQSite {
  const factory _HighQSite(final int id, final String? sitename,
      final String? createddate, final String? status) = _$HighQSiteImpl;

  factory _HighQSite.fromJson(Map<String, dynamic> json) =
      _$HighQSiteImpl.fromJson;

  @override
  int get id;
  @override
  String? get sitename;
  @override
  String? get createddate;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$HighQSiteImplCopyWith<_$HighQSiteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HighQSiteList _$HighQSiteListFromJson(Map<String, dynamic> json) {
  return _HighQSiteList.fromJson(json);
}

/// @nodoc
mixin _$HighQSiteList {
  List<HighQSite> get site => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HighQSiteListCopyWith<HighQSiteList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HighQSiteListCopyWith<$Res> {
  factory $HighQSiteListCopyWith(
          HighQSiteList value, $Res Function(HighQSiteList) then) =
      _$HighQSiteListCopyWithImpl<$Res, HighQSiteList>;
  @useResult
  $Res call({List<HighQSite> site});
}

/// @nodoc
class _$HighQSiteListCopyWithImpl<$Res, $Val extends HighQSiteList>
    implements $HighQSiteListCopyWith<$Res> {
  _$HighQSiteListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? site = null,
  }) {
    return _then(_value.copyWith(
      site: null == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as List<HighQSite>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HighQSiteListImplCopyWith<$Res>
    implements $HighQSiteListCopyWith<$Res> {
  factory _$$HighQSiteListImplCopyWith(
          _$HighQSiteListImpl value, $Res Function(_$HighQSiteListImpl) then) =
      __$$HighQSiteListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<HighQSite> site});
}

/// @nodoc
class __$$HighQSiteListImplCopyWithImpl<$Res>
    extends _$HighQSiteListCopyWithImpl<$Res, _$HighQSiteListImpl>
    implements _$$HighQSiteListImplCopyWith<$Res> {
  __$$HighQSiteListImplCopyWithImpl(
      _$HighQSiteListImpl _value, $Res Function(_$HighQSiteListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? site = null,
  }) {
    return _then(_$HighQSiteListImpl(
      null == site
          ? _value._site
          : site // ignore: cast_nullable_to_non_nullable
              as List<HighQSite>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HighQSiteListImpl implements _HighQSiteList {
  const _$HighQSiteListImpl(final List<HighQSite> site) : _site = site;

  factory _$HighQSiteListImpl.fromJson(Map<String, dynamic> json) =>
      _$$HighQSiteListImplFromJson(json);

  final List<HighQSite> _site;
  @override
  List<HighQSite> get site {
    if (_site is EqualUnmodifiableListView) return _site;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_site);
  }

  @override
  String toString() {
    return 'HighQSiteList(site: $site)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HighQSiteListImpl &&
            const DeepCollectionEquality().equals(other._site, _site));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_site));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HighQSiteListImplCopyWith<_$HighQSiteListImpl> get copyWith =>
      __$$HighQSiteListImplCopyWithImpl<_$HighQSiteListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HighQSiteListImplToJson(
      this,
    );
  }
}

abstract class _HighQSiteList implements HighQSiteList {
  const factory _HighQSiteList(final List<HighQSite> site) =
      _$HighQSiteListImpl;

  factory _HighQSiteList.fromJson(Map<String, dynamic> json) =
      _$HighQSiteListImpl.fromJson;

  @override
  List<HighQSite> get site;
  @override
  @JsonKey(ignore: true)
  _$$HighQSiteListImplCopyWith<_$HighQSiteListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
