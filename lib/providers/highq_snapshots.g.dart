// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'highq_snapshots.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$highQSnapshotsRegistryHash() =>
    r'3a225c3364838efd486e27754e903bbe74d03b35';

/// See also [HighQSnapshotsRegistry].
@ProviderFor(HighQSnapshotsRegistry)
final highQSnapshotsRegistryProvider = AsyncNotifierProvider<
    HighQSnapshotsRegistry, Map<String, Snapshot>>.internal(
  HighQSnapshotsRegistry.new,
  name: r'highQSnapshotsRegistryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$highQSnapshotsRegistryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$HighQSnapshotsRegistry = AsyncNotifier<Map<String, Snapshot>>;
String _$highQSnapshotsHash() => r'36455b5839391ff0ecc3f7d3a326ebf54576293f';

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

abstract class _$HighQSnapshots
    extends BuildlessAutoDisposeAsyncNotifier<Snapshot?> {
  late final String snapshotName;

  FutureOr<Snapshot?> build(
    String snapshotName,
  );
}

/// See also [HighQSnapshots].
@ProviderFor(HighQSnapshots)
const highQSnapshotsProvider = HighQSnapshotsFamily();

/// See also [HighQSnapshots].
class HighQSnapshotsFamily extends Family<AsyncValue<Snapshot?>> {
  /// See also [HighQSnapshots].
  const HighQSnapshotsFamily();

  /// See also [HighQSnapshots].
  HighQSnapshotsProvider call(
    String snapshotName,
  ) {
    return HighQSnapshotsProvider(
      snapshotName,
    );
  }

  @override
  HighQSnapshotsProvider getProviderOverride(
    covariant HighQSnapshotsProvider provider,
  ) {
    return call(
      provider.snapshotName,
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
  String? get name => r'highQSnapshotsProvider';
}

/// See also [HighQSnapshots].
class HighQSnapshotsProvider
    extends AutoDisposeAsyncNotifierProviderImpl<HighQSnapshots, Snapshot?> {
  /// See also [HighQSnapshots].
  HighQSnapshotsProvider(
    String snapshotName,
  ) : this._internal(
          () => HighQSnapshots()..snapshotName = snapshotName,
          from: highQSnapshotsProvider,
          name: r'highQSnapshotsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$highQSnapshotsHash,
          dependencies: HighQSnapshotsFamily._dependencies,
          allTransitiveDependencies:
              HighQSnapshotsFamily._allTransitiveDependencies,
          snapshotName: snapshotName,
        );

  HighQSnapshotsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.snapshotName,
  }) : super.internal();

  final String snapshotName;

  @override
  FutureOr<Snapshot?> runNotifierBuild(
    covariant HighQSnapshots notifier,
  ) {
    return notifier.build(
      snapshotName,
    );
  }

  @override
  Override overrideWith(HighQSnapshots Function() create) {
    return ProviderOverride(
      origin: this,
      override: HighQSnapshotsProvider._internal(
        () => create()..snapshotName = snapshotName,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        snapshotName: snapshotName,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<HighQSnapshots, Snapshot?>
      createElement() {
    return _HighQSnapshotsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HighQSnapshotsProvider &&
        other.snapshotName == snapshotName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, snapshotName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin HighQSnapshotsRef on AutoDisposeAsyncNotifierProviderRef<Snapshot?> {
  /// The parameter `snapshotName` of this provider.
  String get snapshotName;
}

class _HighQSnapshotsProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<HighQSnapshots, Snapshot?>
    with HighQSnapshotsRef {
  _HighQSnapshotsProviderElement(super.provider);

  @override
  String get snapshotName => (origin as HighQSnapshotsProvider).snapshotName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
