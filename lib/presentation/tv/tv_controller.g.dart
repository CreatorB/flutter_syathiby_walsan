// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchTvHash() => r'8717208c927c1b79816844560de6f8100744275a';

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

/// See also [fetchTv].
@ProviderFor(fetchTv)
const fetchTvProvider = FetchTvFamily();

/// See also [fetchTv].
class FetchTvFamily extends Family<AsyncValue<List<News>>> {
  /// See also [fetchTv].
  const FetchTvFamily();

  /// See also [fetchTv].
  FetchTvProvider call({
    required String key,
  }) {
    return FetchTvProvider(
      key: key,
    );
  }

  @override
  FetchTvProvider getProviderOverride(
    covariant FetchTvProvider provider,
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
  String? get name => r'fetchTvProvider';
}

/// See also [fetchTv].
class FetchTvProvider extends AutoDisposeFutureProvider<List<News>> {
  /// See also [fetchTv].
  FetchTvProvider({
    required String key,
  }) : this._internal(
          (ref) => fetchTv(
            ref as FetchTvRef,
            key: key,
          ),
          from: fetchTvProvider,
          name: r'fetchTvProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchTvHash,
          dependencies: FetchTvFamily._dependencies,
          allTransitiveDependencies: FetchTvFamily._allTransitiveDependencies,
          key: key,
        );

  FetchTvProvider._internal(
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
    FutureOr<List<News>> Function(FetchTvRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchTvProvider._internal(
        (ref) => create(ref as FetchTvRef),
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
  AutoDisposeFutureProviderElement<List<News>> createElement() {
    return _FetchTvProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchTvProvider && other.key == key;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchTvRef on AutoDisposeFutureProviderRef<List<News>> {
  /// The parameter `key` of this provider.
  String get key;
}

class _FetchTvProviderElement
    extends AutoDisposeFutureProviderElement<List<News>> with FetchTvRef {
  _FetchTvProviderElement(super.provider);

  @override
  String get key => (origin as FetchTvProvider).key;
}

String _$tvControllerHash() => r'45af38b2a5a29d573f6bb63536b239be0ca6cf9a';

/// See also [TvController].
@ProviderFor(TvController)
final tvControllerProvider =
    AutoDisposeAsyncNotifierProvider<TvController, void>.internal(
  TvController.new,
  name: r'tvControllerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$tvControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$TvController = AutoDisposeAsyncNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
