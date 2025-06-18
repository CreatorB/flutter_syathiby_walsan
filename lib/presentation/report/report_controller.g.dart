// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchFinanceReportHash() =>
    r'774b6daa3e86f4a8f9f4235d8d5ffbc3d8ffe2ba';

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

/// See also [fetchFinanceReport].
@ProviderFor(fetchFinanceReport)
const fetchFinanceReportProvider = FetchFinanceReportFamily();

/// See also [fetchFinanceReport].
class FetchFinanceReportFamily extends Family<AsyncValue<List<Allocation>>> {
  /// See also [fetchFinanceReport].
  const FetchFinanceReportFamily();

  /// See also [fetchFinanceReport].
  FetchFinanceReportProvider call({
    required String key,
  }) {
    return FetchFinanceReportProvider(
      key: key,
    );
  }

  @override
  FetchFinanceReportProvider getProviderOverride(
    covariant FetchFinanceReportProvider provider,
  ) {
    return call(
      key: provider.key,
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
  String? get name => r'fetchFinanceReportProvider';
}

/// See also [fetchFinanceReport].
class FetchFinanceReportProvider
    extends AutoDisposeFutureProvider<List<Allocation>> {
  /// See also [fetchFinanceReport].
  FetchFinanceReportProvider({
    required String key,
  }) : this._internal(
          (ref) => fetchFinanceReport(
            ref as FetchFinanceReportRef,
            key: key,
          ),
          from: fetchFinanceReportProvider,
          name: r'fetchFinanceReportProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchFinanceReportHash,
          dependencies: FetchFinanceReportFamily._dependencies,
          allTransitiveDependencies:
              FetchFinanceReportFamily._allTransitiveDependencies,
          key: key,
        );

  FetchFinanceReportProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.key,
  }) : super.internal();

  final String key;

  @override
  Override overrideWith(
    FutureOr<List<Allocation>> Function(FetchFinanceReportRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchFinanceReportProvider._internal(
        (ref) => create(ref as FetchFinanceReportRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        key: key,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Allocation>> createElement() {
    return _FetchFinanceReportProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchFinanceReportProvider && other.key == key;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchFinanceReportRef on AutoDisposeFutureProviderRef<List<Allocation>> {
  /// The parameter `key` of this provider.
  String get key;
}

class _FetchFinanceReportProviderElement
    extends AutoDisposeFutureProviderElement<List<Allocation>>
    with FetchFinanceReportRef {
  _FetchFinanceReportProviderElement(super.provider);

  @override
  String get key => (origin as FetchFinanceReportProvider).key;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
