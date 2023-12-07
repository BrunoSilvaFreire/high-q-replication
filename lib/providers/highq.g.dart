// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'highq.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HighQDomainImpl _$$HighQDomainImplFromJson(Map<String, dynamic> json) =>
    _$HighQDomainImpl(
      json['name'] as String,
      json['domain'] as String,
      json['clientId'] as String,
      json['secret'] as String,
    );

Map<String, dynamic> _$$HighQDomainImplToJson(_$HighQDomainImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'domain': instance.domain,
      'clientId': instance.clientId,
      'secret': instance.secret,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$highQDomainRegistryHash() =>
    r'd9c2f55773f5ffda0cb93f52dfd5907091c9d777';

/// See also [HighQDomainRegistry].
@ProviderFor(HighQDomainRegistry)
final highQDomainRegistryProvider = AutoDisposeAsyncNotifierProvider<
    HighQDomainRegistry, List<HighQDomain>>.internal(
  HighQDomainRegistry.new,
  name: r'highQDomainRegistryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$highQDomainRegistryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$HighQDomainRegistry = AutoDisposeAsyncNotifier<List<HighQDomain>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
