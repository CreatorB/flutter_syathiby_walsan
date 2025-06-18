// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'violation_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchListViolationHash() =>
    r'9596817a4a88ab4de7a5bcaf812ecab86c7573a1';

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

/// See also [fetchListViolation].
@ProviderFor(fetchListViolation)
const fetchListViolationProvider = FetchListViolationFamily();

/// See also [fetchListViolation].
class FetchListViolationFamily extends Family<AsyncValue<List<Pelanggaran>>> {
  /// See also [fetchListViolation].
  const FetchListViolationFamily();

  /// See also [fetchListViolation].
  FetchListViolationProvider call({
    required String key,
    required int page,
  }) {
    return FetchListViolationProvider(
      key: key,
      page: page,
    );
  }

  @override
  FetchListViolationProvider getProviderOverride(
    covariant FetchListViolationProvider provider,
  ) {
    return call(
      key: provider.key,
      page: provider.page,
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
  String? get name => r'fetchListViolationProvider';
}

/// See also [fetchListViolation].
class FetchListViolationProvider
    extends AutoDisposeFutureProvider<List<Pelanggaran>> {
  /// See also [fetchListViolation].
  FetchListViolationProvider({
    required String key,
    required int page,
  }) : this._internal(
          (ref) => fetchListViolation(
            ref as FetchListViolationRef,
            key: key,
            page: page,
          ),
          from: fetchListViolationProvider,
          name: r'fetchListViolationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchListViolationHash,
          dependencies: FetchListViolationFamily._dependencies,
          allTransitiveDependencies:
              FetchListViolationFamily._allTransitiveDependencies,
          key: key,
          page: page,
        );

  FetchListViolationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.key,
    required this.page,
  }) : super.internal();

  final String key;
  final int page;

  @override
  Override overrideWith(
    FutureOr<List<Pelanggaran>> Function(FetchListViolationRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchListViolationProvider._internal(
        (ref) => create(ref as FetchListViolationRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        key: key,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Pelanggaran>> createElement() {
    return _FetchListViolationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchListViolationProvider &&
        other.key == key &&
        other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchListViolationRef on AutoDisposeFutureProviderRef<List<Pelanggaran>> {
  /// The parameter `key` of this provider.
  String get key;

  /// The parameter `page` of this provider.
  int get page;
}

class _FetchListViolationProviderElement
    extends AutoDisposeFutureProviderElement<List<Pelanggaran>>
    with FetchListViolationRef {
  _FetchListViolationProviderElement(super.provider);

  @override
  String get key => (origin as FetchListViolationProvider).key;
  @override
  int get page => (origin as FetchListViolationProvider).page;
}

String _$fetchViolationTypeHash() =>
    r'eaed4a6a37f342d6a9edaaa5d61747ed1794d401';

/// See also [fetchViolationType].
@ProviderFor(fetchViolationType)
const fetchViolationTypeProvider = FetchViolationTypeFamily();

/// See also [fetchViolationType].
class FetchViolationTypeFamily extends Family<AsyncValue<List<Pelanggaran>>> {
  /// See also [fetchViolationType].
  const FetchViolationTypeFamily();

  /// See also [fetchViolationType].
  FetchViolationTypeProvider call({
    required String key,
    required String type,
  }) {
    return FetchViolationTypeProvider(
      key: key,
      type: type,
    );
  }

  @override
  FetchViolationTypeProvider getProviderOverride(
    covariant FetchViolationTypeProvider provider,
  ) {
    return call(
      key: provider.key,
      type: provider.type,
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
  String? get name => r'fetchViolationTypeProvider';
}

/// See also [fetchViolationType].
class FetchViolationTypeProvider
    extends AutoDisposeFutureProvider<List<Pelanggaran>> {
  /// See also [fetchViolationType].
  FetchViolationTypeProvider({
    required String key,
    required String type,
  }) : this._internal(
          (ref) => fetchViolationType(
            ref as FetchViolationTypeRef,
            key: key,
            type: type,
          ),
          from: fetchViolationTypeProvider,
          name: r'fetchViolationTypeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchViolationTypeHash,
          dependencies: FetchViolationTypeFamily._dependencies,
          allTransitiveDependencies:
              FetchViolationTypeFamily._allTransitiveDependencies,
          key: key,
          type: type,
        );

  FetchViolationTypeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.key,
    required this.type,
  }) : super.internal();

  final String key;
  final String type;

  @override
  Override overrideWith(
    FutureOr<List<Pelanggaran>> Function(FetchViolationTypeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchViolationTypeProvider._internal(
        (ref) => create(ref as FetchViolationTypeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        key: key,
        type: type,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Pelanggaran>> createElement() {
    return _FetchViolationTypeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchViolationTypeProvider &&
        other.key == key &&
        other.type == type;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);
    hash = _SystemHash.combine(hash, type.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchViolationTypeRef on AutoDisposeFutureProviderRef<List<Pelanggaran>> {
  /// The parameter `key` of this provider.
  String get key;

  /// The parameter `type` of this provider.
  String get type;
}

class _FetchViolationTypeProviderElement
    extends AutoDisposeFutureProviderElement<List<Pelanggaran>>
    with FetchViolationTypeRef {
  _FetchViolationTypeProviderElement(super.provider);

  @override
  String get key => (origin as FetchViolationTypeProvider).key;
  @override
  String get type => (origin as FetchViolationTypeProvider).type;
}

String _$fetchSearchStudentHash() =>
    r'af9b2d41437ac1c1c92dd98a3f629f9dd3da0013';

/// See also [fetchSearchStudent].
@ProviderFor(fetchSearchStudent)
const fetchSearchStudentProvider = FetchSearchStudentFamily();

/// See also [fetchSearchStudent].
class FetchSearchStudentFamily extends Family<AsyncValue<List<Siswa>>> {
  /// See also [fetchSearchStudent].
  const FetchSearchStudentFamily();

  /// See also [fetchSearchStudent].
  FetchSearchStudentProvider call({
    required String key,
    required String query,
  }) {
    return FetchSearchStudentProvider(
      key: key,
      query: query,
    );
  }

  @override
  FetchSearchStudentProvider getProviderOverride(
    covariant FetchSearchStudentProvider provider,
  ) {
    return call(
      key: provider.key,
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
  String? get name => r'fetchSearchStudentProvider';
}

/// See also [fetchSearchStudent].
class FetchSearchStudentProvider
    extends AutoDisposeFutureProvider<List<Siswa>> {
  /// See also [fetchSearchStudent].
  FetchSearchStudentProvider({
    required String key,
    required String query,
  }) : this._internal(
          (ref) => fetchSearchStudent(
            ref as FetchSearchStudentRef,
            key: key,
            query: query,
          ),
          from: fetchSearchStudentProvider,
          name: r'fetchSearchStudentProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchSearchStudentHash,
          dependencies: FetchSearchStudentFamily._dependencies,
          allTransitiveDependencies:
              FetchSearchStudentFamily._allTransitiveDependencies,
          key: key,
          query: query,
        );

  FetchSearchStudentProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.key,
    required this.query,
  }) : super.internal();

  final String key;
  final String query;

  @override
  Override overrideWith(
    FutureOr<List<Siswa>> Function(FetchSearchStudentRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchSearchStudentProvider._internal(
        (ref) => create(ref as FetchSearchStudentRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        key: key,
        query: query,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Siswa>> createElement() {
    return _FetchSearchStudentProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchSearchStudentProvider &&
        other.key == key &&
        other.query == query;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);
    hash = _SystemHash.combine(hash, query.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchSearchStudentRef on AutoDisposeFutureProviderRef<List<Siswa>> {
  /// The parameter `key` of this provider.
  String get key;

  /// The parameter `query` of this provider.
  String get query;
}

class _FetchSearchStudentProviderElement
    extends AutoDisposeFutureProviderElement<List<Siswa>>
    with FetchSearchStudentRef {
  _FetchSearchStudentProviderElement(super.provider);

  @override
  String get key => (origin as FetchSearchStudentProvider).key;
  @override
  String get query => (origin as FetchSearchStudentProvider).query;
}

String _$fetchDetailViolationHash() =>
    r'467d8c4bfa33f3e16cb98e16f08b59336b6ee189';

/// See also [fetchDetailViolation].
@ProviderFor(fetchDetailViolation)
const fetchDetailViolationProvider = FetchDetailViolationFamily();

/// See also [fetchDetailViolation].
class FetchDetailViolationFamily extends Family<AsyncValue<List<Pelanggaran>>> {
  /// See also [fetchDetailViolation].
  const FetchDetailViolationFamily();

  /// See also [fetchDetailViolation].
  FetchDetailViolationProvider call({
    required String key,
    required String violationId,
  }) {
    return FetchDetailViolationProvider(
      key: key,
      violationId: violationId,
    );
  }

  @override
  FetchDetailViolationProvider getProviderOverride(
    covariant FetchDetailViolationProvider provider,
  ) {
    return call(
      key: provider.key,
      violationId: provider.violationId,
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
  String? get name => r'fetchDetailViolationProvider';
}

/// See also [fetchDetailViolation].
class FetchDetailViolationProvider
    extends AutoDisposeFutureProvider<List<Pelanggaran>> {
  /// See also [fetchDetailViolation].
  FetchDetailViolationProvider({
    required String key,
    required String violationId,
  }) : this._internal(
          (ref) => fetchDetailViolation(
            ref as FetchDetailViolationRef,
            key: key,
            violationId: violationId,
          ),
          from: fetchDetailViolationProvider,
          name: r'fetchDetailViolationProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchDetailViolationHash,
          dependencies: FetchDetailViolationFamily._dependencies,
          allTransitiveDependencies:
              FetchDetailViolationFamily._allTransitiveDependencies,
          key: key,
          violationId: violationId,
        );

  FetchDetailViolationProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.key,
    required this.violationId,
  }) : super.internal();

  final String key;
  final String violationId;

  @override
  Override overrideWith(
    FutureOr<List<Pelanggaran>> Function(FetchDetailViolationRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchDetailViolationProvider._internal(
        (ref) => create(ref as FetchDetailViolationRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        key: key,
        violationId: violationId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Pelanggaran>> createElement() {
    return _FetchDetailViolationProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchDetailViolationProvider &&
        other.key == key &&
        other.violationId == violationId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);
    hash = _SystemHash.combine(hash, violationId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchDetailViolationRef
    on AutoDisposeFutureProviderRef<List<Pelanggaran>> {
  /// The parameter `key` of this provider.
  String get key;

  /// The parameter `violationId` of this provider.
  String get violationId;
}

class _FetchDetailViolationProviderElement
    extends AutoDisposeFutureProviderElement<List<Pelanggaran>>
    with FetchDetailViolationRef {
  _FetchDetailViolationProviderElement(super.provider);

  @override
  String get key => (origin as FetchDetailViolationProvider).key;
  @override
  String get violationId =>
      (origin as FetchDetailViolationProvider).violationId;
}

String _$violationControllerHash() =>
    r'a53902934c44dcd3f3563996d2bc8c8bd1a74da1';

/// See also [ViolationController].
@ProviderFor(ViolationController)
final violationControllerProvider =
    AutoDisposeAsyncNotifierProvider<ViolationController, void>.internal(
  ViolationController.new,
  name: r'violationControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$violationControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$ViolationController = AutoDisposeAsyncNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
