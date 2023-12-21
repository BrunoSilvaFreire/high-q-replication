// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'highq_sites.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HighQSiteImpl _$$HighQSiteImplFromJson(Map<String, dynamic> json) =>
    _$HighQSiteImpl(
      json['id'] as int,
      json['sitename'] as String?,
      json['createddate'] as String?,
      json['status'] as String?,
    );

Map<String, dynamic> _$$HighQSiteImplToJson(_$HighQSiteImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sitename': instance.sitename,
      'createddate': instance.createddate,
      'status': instance.status,
    };

_$HighQSiteListImpl _$$HighQSiteListImplFromJson(Map<String, dynamic> json) =>
    _$HighQSiteListImpl(
      (json['site'] as List<dynamic>)
          .map((e) => HighQSite.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HighQSiteListImplToJson(_$HighQSiteListImpl instance) =>
    <String, dynamic>{
      'site': instance.site,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$highQSitesHash() => r'd7bfd2c97c6ba0b8ec00cce4387b82912b764a67';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$HighQSites
    extends BuildlessAutoDisposeAsyncNotifier<HighQSiteList?> {
  late final HighQDomain domain;

  FutureOr<HighQSiteList?> build(
    HighQDomain domain,
  );
}

/// See also [HighQSites].
@ProviderFor(HighQSites)
const highQSitesProvider = HighQSitesFamily();

/// See also [HighQSites].
class HighQSitesFamily extends Family<AsyncValue<HighQSiteList?>> {
  /// See also [HighQSites].
  const HighQSitesFamily();

  /// See also [HighQSites].
  HighQSitesProvider call(
    HighQDomain domain,
  ) {
    return HighQSitesProvider(
      domain,
    );
  }

  @override
  HighQSitesProvider getProviderOverride(
    covariant HighQSitesProvider provider,
  ) {
    return call(
      provider.domain,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'highQSitesProvider';
}

/// See also [HighQSites].
class HighQSitesProvider
    extends AutoDisposeAsyncNotifierProviderImpl<HighQSites, HighQSiteList?> {
  /// See also [HighQSites].
  HighQSitesProvider(
    HighQDomain domain,
  ) : this._internal(
          () => HighQSites()..domain = domain,
          from: highQSitesProvider,
          name: r'highQSitesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$highQSitesHash,
          dependencies: HighQSitesFamily._dependencies,
          allTransitiveDependencies:
              HighQSitesFamily._allTransitiveDependencies,
          domain: domain,
        );

  HighQSitesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.domain,
  }) : super.internal();

  final HighQDomain domain;

  @override
  FutureOr<HighQSiteList?> runNotifierBuild(
    covariant HighQSites notifier,
  ) {
    return notifier.build(
      domain,
    );
  }

  @override
  Override overrideWith(HighQSites Function() create) {
    return ProviderOverride(
      origin: this,
      override: HighQSitesProvider._internal(
        () => create()..domain = domain,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        domain: domain,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<HighQSites, HighQSiteList?>
      createElement() {
    return _HighQSitesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HighQSitesProvider && other.domain == domain;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, domain.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin HighQSitesRef on AutoDisposeAsyncNotifierProviderRef<HighQSiteList?> {
  /// The parameter `domain` of this provider.
  HighQDomain get domain;
}

class _HighQSitesProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<HighQSites, HighQSiteList?>
    with HighQSitesRef {
  _HighQSitesProviderElement(super.provider);

  @override
  HighQDomain get domain => (origin as HighQSitesProvider).domain;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
