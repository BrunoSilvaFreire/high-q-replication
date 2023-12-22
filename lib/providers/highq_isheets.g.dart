// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'highq_isheets.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$highQISheetsHash() => r'915caaa308258fc031a6a93caa19ca9ae777b63e';

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

abstract class _$HighQISheets
    extends BuildlessAutoDisposeAsyncNotifier<HighQiSheet?> {
  late final HighQSite site;
  late final HighQDomain domain;

  FutureOr<HighQiSheet?> build(
    HighQSite site,
    HighQDomain domain,
  );
}

/// See also [HighQISheets].
@ProviderFor(HighQISheets)
const highQISheetsProvider = HighQISheetsFamily();

/// See also [HighQISheets].
class HighQISheetsFamily extends Family<AsyncValue<HighQiSheet?>> {
  /// See also [HighQISheets].
  const HighQISheetsFamily();

  /// See also [HighQISheets].
  HighQISheetsProvider call(
    HighQSite site,
    HighQDomain domain,
  ) {
    return HighQISheetsProvider(
      site,
      domain,
    );
  }

  @override
  HighQISheetsProvider getProviderOverride(
    covariant HighQISheetsProvider provider,
  ) {
    return call(
      provider.site,
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
  String? get name => r'highQISheetsProvider';
}

/// See also [HighQISheets].
class HighQISheetsProvider
    extends AutoDisposeAsyncNotifierProviderImpl<HighQISheets, HighQiSheet?> {
  /// See also [HighQISheets].
  HighQISheetsProvider(
    HighQSite site,
    HighQDomain domain,
  ) : this._internal(
          () => HighQISheets()
            ..site = site
            ..domain = domain,
          from: highQISheetsProvider,
          name: r'highQISheetsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$highQISheetsHash,
          dependencies: HighQISheetsFamily._dependencies,
          allTransitiveDependencies:
              HighQISheetsFamily._allTransitiveDependencies,
          site: site,
          domain: domain,
        );

  HighQISheetsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.site,
    required this.domain,
  }) : super.internal();

  final HighQSite site;
  final HighQDomain domain;

  @override
  FutureOr<HighQiSheet?> runNotifierBuild(
    covariant HighQISheets notifier,
  ) {
    return notifier.build(
      site,
      domain,
    );
  }

  @override
  Override overrideWith(HighQISheets Function() create) {
    return ProviderOverride(
      origin: this,
      override: HighQISheetsProvider._internal(
        () => create()
          ..site = site
          ..domain = domain,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        site: site,
        domain: domain,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<HighQISheets, HighQiSheet?>
      createElement() {
    return _HighQISheetsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is HighQISheetsProvider &&
        other.site == site &&
        other.domain == domain;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, site.hashCode);
    hash = _SystemHash.combine(hash, domain.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin HighQISheetsRef on AutoDisposeAsyncNotifierProviderRef<HighQiSheet?> {
  /// The parameter `site` of this provider.
  HighQSite get site;

  /// The parameter `domain` of this provider.
  HighQDomain get domain;
}

class _HighQISheetsProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<HighQISheets, HighQiSheet?>
    with HighQISheetsRef {
  _HighQISheetsProviderElement(super.provider);

  @override
  HighQSite get site => (origin as HighQISheetsProvider).site;
  @override
  HighQDomain get domain => (origin as HighQISheetsProvider).domain;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
