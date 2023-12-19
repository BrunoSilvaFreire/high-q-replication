// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'highq_status.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$highQDomainStatusRegistryHash() =>
    r'd11e94f0e1dc00dcce0e6931579943de5ebec2b1';

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

abstract class _$HighQDomainStatusRegistry
    extends BuildlessAutoDisposeAsyncNotifier<HighQDomainMeta> {
  late final HighQDomain domain;

  FutureOr<HighQDomainMeta> build(
    HighQDomain domain,
  );
}

/// See also [HighQDomainStatusRegistry].
@ProviderFor(HighQDomainStatusRegistry)
const highQDomainStatusRegistryProvider = HighQDomainStatusRegistryFamily();

/// See also [HighQDomainStatusRegistry].
class HighQDomainStatusRegistryFamily
    extends Family<AsyncValue<HighQDomainMeta>> {
  /// See also [HighQDomainStatusRegistry].
  const HighQDomainStatusRegistryFamily();

  /// See also [HighQDomainStatusRegistry].
  HighQDomainStatusRegistryProvider call(
    HighQDomain domain,
  ) {
    return HighQDomainStatusRegistryProvider(
      domain,
    );
  }

  @override
  HighQDomainStatusRegistryProvider getProviderOverride(
    covariant HighQDomainStatusRegistryProvider provider,
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
  String? get name => r'highQDomainStatusRegistryProvider';
}

/// See also [HighQDomainStatusRegistry].
class HighQDomainStatusRegistryProvider
    extends AutoDisposeAsyncNotifierProviderImpl<HighQDomainStatusRegistry,
        HighQDomainMeta> {
  /// See also [HighQDomainStatusRegistry].
  HighQDomainStatusRegistryProvider(
    HighQDomain domain,
  ) : this._internal(
          () => HighQDomainStatusRegistry()..domain = domain,
          from: highQDomainStatusRegistryProvider,
          name: r'highQDomainStatusRegistryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$highQDomainStatusRegistryHash,
          dependencies: HighQDomainStatusRegistryFamily._dependencies,
          allTransitiveDependencies:
              HighQDomainStatusRegistryFamily._allTransitiveDependencies,
          domain: domain,
        );

  HighQDomainStatusRegistryProvider._internal(
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
  FutureOr<HighQDomainMeta> runNotifierBuild(
    covariant HighQDomainStatusRegistry notifier,
  ) {
    return notifier.build(
      domain,
    );
  }

  @override
  Override overrideWith(HighQDomainStatusRegistry Function() create) {
    return ProviderOverride(
      origin: this,
      override: HighQDomainStatusRegistryProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<HighQDomainStatusRegistry,
      HighQDomainMeta> createElement() {
    return _HighQDomainStatusRegistryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HighQDomainStatusRegistryProvider && other.domain == domain;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, domain.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin HighQDomainStatusRegistryRef
    on AutoDisposeAsyncNotifierProviderRef<HighQDomainMeta> {
  /// The parameter `domain` of this provider.
  HighQDomain get domain;
}

class _HighQDomainStatusRegistryProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<HighQDomainStatusRegistry,
        HighQDomainMeta> with HighQDomainStatusRegistryRef {
  _HighQDomainStatusRegistryProviderElement(super.provider);

  @override
  HighQDomain get domain =>
      (origin as HighQDomainStatusRegistryProvider).domain;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
