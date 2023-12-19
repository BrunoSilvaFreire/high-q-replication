// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'highq.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HighQDomain _$HighQDomainFromJson(Map<String, dynamic> json) {
  return _HighQDomain.fromJson(json);
}

/// @nodoc
mixin _$HighQDomain {
  String get name => throw _privateConstructorUsedError;
  String get domain => throw _privateConstructorUsedError;
  String get clientId => throw _privateConstructorUsedError;
  String get clientSecret => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HighQDomainCopyWith<HighQDomain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HighQDomainCopyWith<$Res> {
  factory $HighQDomainCopyWith(
          HighQDomain value, $Res Function(HighQDomain) then) =
      _$HighQDomainCopyWithImpl<$Res, HighQDomain>;
  @useResult
  $Res call({String name, String domain, String clientId, String clientSecret});
}

/// @nodoc
class _$HighQDomainCopyWithImpl<$Res, $Val extends HighQDomain>
    implements $HighQDomainCopyWith<$Res> {
  _$HighQDomainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? domain = null,
    Object? clientId = null,
    Object? clientSecret = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      domain: null == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      clientSecret: null == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HighQDomainImplCopyWith<$Res>
    implements $HighQDomainCopyWith<$Res> {
  factory _$$HighQDomainImplCopyWith(
          _$HighQDomainImpl value, $Res Function(_$HighQDomainImpl) then) =
      __$$HighQDomainImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String domain, String clientId, String clientSecret});
}

/// @nodoc
class __$$HighQDomainImplCopyWithImpl<$Res>
    extends _$HighQDomainCopyWithImpl<$Res, _$HighQDomainImpl>
    implements _$$HighQDomainImplCopyWith<$Res> {
  __$$HighQDomainImplCopyWithImpl(
      _$HighQDomainImpl _value, $Res Function(_$HighQDomainImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? domain = null,
    Object? clientId = null,
    Object? clientSecret = null,
  }) {
    return _then(_$HighQDomainImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String,
      null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      null == clientSecret
          ? _value.clientSecret
          : clientSecret // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HighQDomainImpl implements _HighQDomain {
  const _$HighQDomainImpl(
      this.name, this.domain, this.clientId, this.clientSecret);

  factory _$HighQDomainImpl.fromJson(Map<String, dynamic> json) =>
      _$$HighQDomainImplFromJson(json);

  @override
  final String name;
  @override
  final String domain;
  @override
  final String clientId;
  @override
  final String clientSecret;

  @override
  String toString() {
    return 'HighQDomain(name: $name, domain: $domain, clientId: $clientId, clientSecret: $clientSecret)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HighQDomainImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.domain, domain) || other.domain == domain) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.clientSecret, clientSecret) ||
                other.clientSecret == clientSecret));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, domain, clientId, clientSecret);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HighQDomainImplCopyWith<_$HighQDomainImpl> get copyWith =>
      __$$HighQDomainImplCopyWithImpl<_$HighQDomainImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HighQDomainImplToJson(
      this,
    );
  }
}

abstract class _HighQDomain implements HighQDomain {
  const factory _HighQDomain(final String name, final String domain,
      final String clientId, final String clientSecret) = _$HighQDomainImpl;

  factory _HighQDomain.fromJson(Map<String, dynamic> json) =
      _$HighQDomainImpl.fromJson;

  @override
  String get name;
  @override
  String get domain;
  @override
  String get clientId;
  @override
  String get clientSecret;
  @override
  @JsonKey(ignore: true)
  _$$HighQDomainImplCopyWith<_$HighQDomainImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
