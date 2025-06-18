// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchStudentParentHash() =>
    r'54001015126da06336ab11892de37b8a0a52b6b4';

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

/// See also [fetchStudentParent].
@ProviderFor(fetchStudentParent)
const fetchStudentParentProvider = FetchStudentParentFamily();

/// See also [fetchStudentParent].
class FetchStudentParentFamily extends Family<AsyncValue<List<Siswa>>> {
  /// See also [fetchStudentParent].
  const FetchStudentParentFamily();

  /// See also [fetchStudentParent].
  FetchStudentParentProvider call({
    required String query,
  }) {
    return FetchStudentParentProvider(
      query: query,
    );
  }

  @override
  FetchStudentParentProvider getProviderOverride(
    covariant FetchStudentParentProvider provider,
  ) {
    return call(
      query: provider.query,
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
  String? get name => r'fetchStudentParentProvider';
}

/// See also [fetchStudentParent].
class FetchStudentParentProvider
    extends AutoDisposeFutureProvider<List<Siswa>> {
  /// See also [fetchStudentParent].
  FetchStudentParentProvider({
    required String query,
  }) : this._internal(
          (ref) => fetchStudentParent(
            ref as FetchStudentParentRef,
            query: query,
          ),
          from: fetchStudentParentProvider,
          name: r'fetchStudentParentProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchStudentParentHash,
          dependencies: FetchStudentParentFamily._dependencies,
          allTransitiveDependencies:
              FetchStudentParentFamily._allTransitiveDependencies,
          query: query,
        );

  FetchStudentParentProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.query,
  }) : super.internal();

  final String query;

  @override
  Override overrideWith(
    FutureOr<List<Siswa>> Function(FetchStudentParentRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchStudentParentProvider._internal(
        (ref) => create(ref as FetchStudentParentRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        query: query,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Siswa>> createElement() {
    return _FetchStudentParentProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchStudentParentProvider && other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchStudentParentRef on AutoDisposeFutureProviderRef<List<Siswa>> {
  /// The parameter `query` of this provider.
  String get query;
}

class _FetchStudentParentProviderElement
    extends AutoDisposeFutureProviderElement<List<Siswa>>
    with FetchStudentParentRef {
  _FetchStudentParentProviderElement(super.provider);

  @override
  String get query => (origin as FetchStudentParentProvider).query;
}

String _$registerControllerHash() =>
    r'97455c2b871631a18e3831f566dd3375008f7ff7';

/// See also [RegisterController].
@ProviderFor(RegisterController)
final registerControllerProvider =
    AutoDisposeAsyncNotifierProvider<RegisterController, void>.internal(
  RegisterController.new,
  name: r'registerControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$registerControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$RegisterController = AutoDisposeAsyncNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
