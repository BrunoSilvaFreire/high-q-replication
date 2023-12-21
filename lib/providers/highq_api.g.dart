// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'highq_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$highQDomainAPIRegistryHash() =>
    r'8b7221cfe0be888566078935ee691e7db564e08d';

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

abstract class _$HighQDomainAPIRegistry
    extends BuildlessAutoDisposeAsyncNotifier<HighQDomainAPI> {
  late final HighQDomain domain;

  FutureOr<HighQDomainAPI> build(
    HighQDomain domain,
  );
}

/// See also [HighQDomainAPIRegistry].
@ProviderFor(HighQDomainAPIRegistry)
const highQDomainAPIRegistryProvider = HighQDomainAPIRegistryFamily();

/// See also [HighQDomainAPIRegistry].
class HighQDomainAPIRegistryFamily extends Family<AsyncValue<HighQDomainAPI>> {
  /// See also [HighQDomainAPIRegistry].
  const HighQDomainAPIRegistryFamily();

  /// See also [HighQDomainAPIRegistry].
  HighQDomainAPIRegistryProvider call(
    HighQDomain domain,
  ) {
    return HighQDomainAPIRegistryProvider(
      domain,
    );
  }

  @override
  HighQDomainAPIRegistryProvider getProviderOverride(
    covariant HighQDomainAPIRegistryProvider provider,
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
  String? get name => r'highQDomainAPIRegistryProvider';
}

/// See also [HighQDomainAPIRegistry].
class HighQDomainAPIRegistryProvider
    extends AutoDisposeAsyncNotifierProviderImpl<HighQDomainAPIRegistry,
        HighQDomainAPI> {
  /// See also [HighQDomainAPIRegistry].
  HighQDomainAPIRegistryProvider(
    HighQDomain domain,
  ) : this._internal(
          () => HighQDomainAPIRegistry()..domain = domain,
          from: highQDomainAPIRegistryProvider,
          name: r'highQDomainAPIRegistryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$highQDomainAPIRegistryHash,
          dependencies: HighQDomainAPIRegistryFamily._dependencies,
          allTransitiveDependencies:
              HighQDomainAPIRegistryFamily._allTransitiveDependencies,
          domain: domain,
        );

  HighQDomainAPIRegistryProvider._internal(
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
  FutureOr<HighQDomainAPI> runNotifierBuild(
    covariant HighQDomainAPIRegistry notifier,
  ) {
    return notifier.build(
      domain,
    );
  }

  @override
  Override overrideWith(HighQDomainAPIRegistry Function() create) {
    return ProviderOverride(
      origin: this,
      override: HighQDomainAPIRegistryProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<HighQDomainAPIRegistry,
      HighQDomainAPI> createElement() {
    return _HighQDomainAPIRegistryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HighQDomainAPIRegistryProvider && other.domain == domain;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, domain.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin HighQDomainAPIRegistryRef
    on AutoDisposeAsyncNotifierProviderRef<HighQDomainAPI> {
  /// The parameter `domain` of this provider.
  HighQDomain get domain;
}

class _HighQDomainAPIRegistryProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<HighQDomainAPIRegistry,
        HighQDomainAPI> with HighQDomainAPIRegistryRef {
  _HighQDomainAPIRegistryProviderElement(super.provider);

  @override
  HighQDomain get domain => (origin as HighQDomainAPIRegistryProvider).domain;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
