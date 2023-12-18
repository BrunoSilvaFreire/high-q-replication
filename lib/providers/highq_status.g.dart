// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'highq_status.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$highQDomainStatusRegistryHash() =>
    r'b828b2ec3a6e875d950bc0edb88225830b5a6728';

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
    extends BuildlessAutoDisposeStreamNotifier<Map<String, HighQDomainMeta>> {
  late final WidgetRef ref;

  Stream<Map<String, HighQDomainMeta>> build(
    WidgetRef ref,
  );
}

/// See also [HighQDomainStatusRegistry].
@ProviderFor(HighQDomainStatusRegistry)
const highQDomainStatusRegistryProvider = HighQDomainStatusRegistryFamily();

/// See also [HighQDomainStatusRegistry].
class HighQDomainStatusRegistryFamily
    extends Family<AsyncValue<Map<String, HighQDomainMeta>>> {
  /// See also [HighQDomainStatusRegistry].
  const HighQDomainStatusRegistryFamily();

  /// See also [HighQDomainStatusRegistry].
  HighQDomainStatusRegistryProvider call(
    WidgetRef ref,
  ) {
    return HighQDomainStatusRegistryProvider(
      ref,
    );
  }

  @override
  HighQDomainStatusRegistryProvider getProviderOverride(
    covariant HighQDomainStatusRegistryProvider provider,
  ) {
    return call(
      provider.ref,
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
    extends AutoDisposeStreamNotifierProviderImpl<HighQDomainStatusRegistry,
        Map<String, HighQDomainMeta>> {
  /// See also [HighQDomainStatusRegistry].
  HighQDomainStatusRegistryProvider(
    WidgetRef ref,
  ) : this._internal(
          () => HighQDomainStatusRegistry()..ref = ref,
          from: highQDomainStatusRegistryProvider,
          name: r'highQDomainStatusRegistryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$highQDomainStatusRegistryHash,
          dependencies: HighQDomainStatusRegistryFamily._dependencies,
          allTransitiveDependencies:
              HighQDomainStatusRegistryFamily._allTransitiveDependencies,
          ref: ref,
        );

  HighQDomainStatusRegistryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.ref,
  }) : super.internal();

  final WidgetRef ref;

  @override
  Stream<Map<String, HighQDomainMeta>> runNotifierBuild(
    covariant HighQDomainStatusRegistry notifier,
  ) {
    return notifier.build(
      ref,
    );
  }

  @override
  Override overrideWith(HighQDomainStatusRegistry Function() create) {
    return ProviderOverride(
      origin: this,
      override: HighQDomainStatusRegistryProvider._internal(
        () => create()..ref = ref,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        ref: ref,
      ),
    );
  }

  @override
  AutoDisposeStreamNotifierProviderElement<HighQDomainStatusRegistry,
      Map<String, HighQDomainMeta>> createElement() {
    return _HighQDomainStatusRegistryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HighQDomainStatusRegistryProvider && other.ref == ref;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, ref.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin HighQDomainStatusRegistryRef
    on AutoDisposeStreamNotifierProviderRef<Map<String, HighQDomainMeta>> {
  /// The parameter `ref` of this provider.
  WidgetRef get ref;
}

class _HighQDomainStatusRegistryProviderElement
    extends AutoDisposeStreamNotifierProviderElement<HighQDomainStatusRegistry,
        Map<String, HighQDomainMeta>> with HighQDomainStatusRegistryRef {
  _HighQDomainStatusRegistryProviderElement(super.provider);

  @override
  WidgetRef get ref => (origin as HighQDomainStatusRegistryProvider).ref;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
