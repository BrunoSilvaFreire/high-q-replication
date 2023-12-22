// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'highq_isheet_columns.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$highQISheetColumnsHash() =>
    r'eedbf1324a8fcf9989f94904164f8a5a10fbbe71';

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

abstract class _$HighQISheetColumns
    extends BuildlessAutoDisposeAsyncNotifier<HighQISheetColumnList?> {
  late final int sheetId;
  late final HighQDomain domain;

  FutureOr<HighQISheetColumnList?> build(
    int sheetId,
    HighQDomain domain,
  );
}

/// See also [HighQISheetColumns].
@ProviderFor(HighQISheetColumns)
const highQISheetColumnsProvider = HighQISheetColumnsFamily();

/// See also [HighQISheetColumns].
class HighQISheetColumnsFamily
    extends Family<AsyncValue<HighQISheetColumnList?>> {
  /// See also [HighQISheetColumns].
  const HighQISheetColumnsFamily();

  /// See also [HighQISheetColumns].
  HighQISheetColumnsProvider call(
    int sheetId,
    HighQDomain domain,
  ) {
    return HighQISheetColumnsProvider(
      sheetId,
      domain,
    );
  }

  @override
  HighQISheetColumnsProvider getProviderOverride(
    covariant HighQISheetColumnsProvider provider,
  ) {
    return call(
      provider.sheetId,
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
  String? get name => r'highQISheetColumnsProvider';
}

/// See also [HighQISheetColumns].
class HighQISheetColumnsProvider extends AutoDisposeAsyncNotifierProviderImpl<
    HighQISheetColumns, HighQISheetColumnList?> {
  /// See also [HighQISheetColumns].
  HighQISheetColumnsProvider(
    int sheetId,
    HighQDomain domain,
  ) : this._internal(
          () => HighQISheetColumns()
            ..sheetId = sheetId
            ..domain = domain,
          from: highQISheetColumnsProvider,
          name: r'highQISheetColumnsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$highQISheetColumnsHash,
          dependencies: HighQISheetColumnsFamily._dependencies,
          allTransitiveDependencies:
              HighQISheetColumnsFamily._allTransitiveDependencies,
          sheetId: sheetId,
          domain: domain,
        );

  HighQISheetColumnsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.sheetId,
    required this.domain,
  }) : super.internal();

  final int sheetId;
  final HighQDomain domain;

  @override
  FutureOr<HighQISheetColumnList?> runNotifierBuild(
    covariant HighQISheetColumns notifier,
  ) {
    return notifier.build(
      sheetId,
      domain,
    );
  }

  @override
  Override overrideWith(HighQISheetColumns Function() create) {
    return ProviderOverride(
      origin: this,
      override: HighQISheetColumnsProvider._internal(
        () => create()
          ..sheetId = sheetId
          ..domain = domain,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        sheetId: sheetId,
        domain: domain,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<HighQISheetColumns,
      HighQISheetColumnList?> createElement() {
    return _HighQISheetColumnsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HighQISheetColumnsProvider &&
        other.sheetId == sheetId &&
        other.domain == domain;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, sheetId.hashCode);
    hash = _SystemHash.combine(hash, domain.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin HighQISheetColumnsRef
    on AutoDisposeAsyncNotifierProviderRef<HighQISheetColumnList?> {
  /// The parameter `sheetId` of this provider.
  int get sheetId;

  /// The parameter `domain` of this provider.
  HighQDomain get domain;
}

class _HighQISheetColumnsProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<HighQISheetColumns,
        HighQISheetColumnList?> with HighQISheetColumnsRef {
  _HighQISheetColumnsProviderElement(super.provider);

  @override
  int get sheetId => (origin as HighQISheetColumnsProvider).sheetId;
  @override
  HighQDomain get domain => (origin as HighQISheetColumnsProvider).domain;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
