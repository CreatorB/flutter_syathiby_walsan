// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_health_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchStudentHealthDetailHash() =>
    r'46f287602b3af0e716008da152fd85787b06e8b1';

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

/// See also [fetchStudentHealthDetail].
@ProviderFor(fetchStudentHealthDetail)
const fetchStudentHealthDetailProvider = FetchStudentHealthDetailFamily();

/// See also [fetchStudentHealthDetail].
class FetchStudentHealthDetailFamily
    extends Family<AsyncValue<List<Kesehatan>>> {
  /// See also [fetchStudentHealthDetail].
  const FetchStudentHealthDetailFamily();

  /// See also [fetchStudentHealthDetail].
  FetchStudentHealthDetailProvider call({
    required String key,
    required String id,
  }) {
    return FetchStudentHealthDetailProvider(
      key: key,
      id: id,
    );
  }

  @override
  FetchStudentHealthDetailProvider getProviderOverride(
    covariant FetchStudentHealthDetailProvider provider,
  ) {
    return call(
      key: provider.key,
      id: provider.id,
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
  String? get name => r'fetchStudentHealthDetailProvider';
}

/// See also [fetchStudentHealthDetail].
class FetchStudentHealthDetailProvider
    extends AutoDisposeFutureProvider<List<Kesehatan>> {
  /// See also [fetchStudentHealthDetail].
  FetchStudentHealthDetailProvider({
    required String key,
    required String id,
  }) : this._internal(
          (ref) => fetchStudentHealthDetail(
            ref as FetchStudentHealthDetailRef,
            key: key,
            id: id,
          ),
          from: fetchStudentHealthDetailProvider,
          name: r'fetchStudentHealthDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchStudentHealthDetailHash,
          dependencies: FetchStudentHealthDetailFamily._dependencies,
          allTransitiveDependencies:
              FetchStudentHealthDetailFamily._allTransitiveDependencies,
          key: key,
          id: id,
        );

  FetchStudentHealthDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.key,
    required this.id,
  }) : super.internal();

  final String key;
  final String id;

  @override
  Override overrideWith(
    FutureOr<List<Kesehatan>> Function(FetchStudentHealthDetailRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchStudentHealthDetailProvider._internal(
        (ref) => create(ref as FetchStudentHealthDetailRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        key: key,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Kesehatan>> createElement() {
    return _FetchStudentHealthDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchStudentHealthDetailProvider &&
        other.key == key &&
        other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchStudentHealthDetailRef
    on AutoDisposeFutureProviderRef<List<Kesehatan>> {
  /// The parameter `key` of this provider.
  String get key;

  /// The parameter `id` of this provider.
  String get id;
}

class _FetchStudentHealthDetailProviderElement
    extends AutoDisposeFutureProviderElement<List<Kesehatan>>
    with FetchStudentHealthDetailRef {
  _FetchStudentHealthDetailProviderElement(super.provider);

  @override
  String get key => (origin as FetchStudentHealthDetailProvider).key;
  @override
  String get id => (origin as FetchStudentHealthDetailProvider).id;
}

String _$fetchStudentHealthRecapHash() =>
    r'0d989fe77d0ae4f6e80ff4b83a2ccf663b1ba4b2';

/// See also [fetchStudentHealthRecap].
@ProviderFor(fetchStudentHealthRecap)
const fetchStudentHealthRecapProvider = FetchStudentHealthRecapFamily();

/// See also [fetchStudentHealthRecap].
class FetchStudentHealthRecapFamily
    extends Family<AsyncValue<List<Kesehatan>>> {
  /// See also [fetchStudentHealthRecap].
  const FetchStudentHealthRecapFamily();

  /// See also [fetchStudentHealthRecap].
  FetchStudentHealthRecapProvider call({
    required String key,
  }) {
    return FetchStudentHealthRecapProvider(
      key: key,
    );
  }

  @override
  FetchStudentHealthRecapProvider getProviderOverride(
    covariant FetchStudentHealthRecapProvider provider,
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
  String? get name => r'fetchStudentHealthRecapProvider';
}

/// See also [fetchStudentHealthRecap].
class FetchStudentHealthRecapProvider
    extends AutoDisposeFutureProvider<List<Kesehatan>> {
  /// See also [fetchStudentHealthRecap].
  FetchStudentHealthRecapProvider({
    required String key,
  }) : this._internal(
          (ref) => fetchStudentHealthRecap(
            ref as FetchStudentHealthRecapRef,
            key: key,
          ),
          from: fetchStudentHealthRecapProvider,
          name: r'fetchStudentHealthRecapProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchStudentHealthRecapHash,
          dependencies: FetchStudentHealthRecapFamily._dependencies,
          allTransitiveDependencies:
              FetchStudentHealthRecapFamily._allTransitiveDependencies,
          key: key,
        );

  FetchStudentHealthRecapProvider._internal(
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
    FutureOr<List<Kesehatan>> Function(FetchStudentHealthRecapRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchStudentHealthRecapProvider._internal(
        (ref) => create(ref as FetchStudentHealthRecapRef),
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
  AutoDisposeFutureProviderElement<List<Kesehatan>> createElement() {
    return _FetchStudentHealthRecapProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchStudentHealthRecapProvider && other.key == key;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchStudentHealthRecapRef
    on AutoDisposeFutureProviderRef<List<Kesehatan>> {
  /// The parameter `key` of this provider.
  String get key;
}

class _FetchStudentHealthRecapProviderElement
    extends AutoDisposeFutureProviderElement<List<Kesehatan>>
    with FetchStudentHealthRecapRef {
  _FetchStudentHealthRecapProviderElement(super.provider);

  @override
  String get key => (origin as FetchStudentHealthRecapProvider).key;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
