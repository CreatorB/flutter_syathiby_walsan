// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permit_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchGetStudentParentHash() =>
    r'a9280494a4bb0e4485ac01a6bfba01e582c04cce';

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

/// See also [fetchGetStudentParent].
@ProviderFor(fetchGetStudentParent)
const fetchGetStudentParentProvider = FetchGetStudentParentFamily();

/// See also [fetchGetStudentParent].
class FetchGetStudentParentFamily extends Family<AsyncValue<List<Siswa>>> {
  /// See also [fetchGetStudentParent].
  const FetchGetStudentParentFamily();

  /// See also [fetchGetStudentParent].
  FetchGetStudentParentProvider call({
    required String key,
  }) {
    return FetchGetStudentParentProvider(
      key: key,
    );
  }

  @override
  FetchGetStudentParentProvider getProviderOverride(
    covariant FetchGetStudentParentProvider provider,
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
  String? get name => r'fetchGetStudentParentProvider';
}

/// See also [fetchGetStudentParent].
class FetchGetStudentParentProvider
    extends AutoDisposeFutureProvider<List<Siswa>> {
  /// See also [fetchGetStudentParent].
  FetchGetStudentParentProvider({
    required String key,
  }) : this._internal(
          (ref) => fetchGetStudentParent(
            ref as FetchGetStudentParentRef,
            key: key,
          ),
          from: fetchGetStudentParentProvider,
          name: r'fetchGetStudentParentProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchGetStudentParentHash,
          dependencies: FetchGetStudentParentFamily._dependencies,
          allTransitiveDependencies:
              FetchGetStudentParentFamily._allTransitiveDependencies,
          key: key,
        );

  FetchGetStudentParentProvider._internal(
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
    FutureOr<List<Siswa>> Function(FetchGetStudentParentRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchGetStudentParentProvider._internal(
        (ref) => create(ref as FetchGetStudentParentRef),
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
  AutoDisposeFutureProviderElement<List<Siswa>> createElement() {
    return _FetchGetStudentParentProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchGetStudentParentProvider && other.key == key;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchGetStudentParentRef on AutoDisposeFutureProviderRef<List<Siswa>> {
  /// The parameter `key` of this provider.
  String get key;
}

class _FetchGetStudentParentProviderElement
    extends AutoDisposeFutureProviderElement<List<Siswa>>
    with FetchGetStudentParentRef {
  _FetchGetStudentParentProviderElement(super.provider);

  @override
  String get key => (origin as FetchGetStudentParentProvider).key;
}

String _$fetchPermitTypeHash() => r'031b00bd9e1e73dfcb8fc2f31d1f0f3742d94266';

/// See also [fetchPermitType].
@ProviderFor(fetchPermitType)
const fetchPermitTypeProvider = FetchPermitTypeFamily();

/// See also [fetchPermitType].
class FetchPermitTypeFamily extends Family<AsyncValue<List<Permit>>> {
  /// See also [fetchPermitType].
  const FetchPermitTypeFamily();

  /// See also [fetchPermitType].
  FetchPermitTypeProvider call({
    required String key,
    required String type,
  }) {
    return FetchPermitTypeProvider(
      key: key,
      type: type,
    );
  }

  @override
  FetchPermitTypeProvider getProviderOverride(
    covariant FetchPermitTypeProvider provider,
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
  String? get name => r'fetchPermitTypeProvider';
}

/// See also [fetchPermitType].
class FetchPermitTypeProvider extends AutoDisposeFutureProvider<List<Permit>> {
  /// See also [fetchPermitType].
  FetchPermitTypeProvider({
    required String key,
    required String type,
  }) : this._internal(
          (ref) => fetchPermitType(
            ref as FetchPermitTypeRef,
            key: key,
            type: type,
          ),
          from: fetchPermitTypeProvider,
          name: r'fetchPermitTypeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchPermitTypeHash,
          dependencies: FetchPermitTypeFamily._dependencies,
          allTransitiveDependencies:
              FetchPermitTypeFamily._allTransitiveDependencies,
          key: key,
          type: type,
        );

  FetchPermitTypeProvider._internal(
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
    FutureOr<List<Permit>> Function(FetchPermitTypeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchPermitTypeProvider._internal(
        (ref) => create(ref as FetchPermitTypeRef),
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
  AutoDisposeFutureProviderElement<List<Permit>> createElement() {
    return _FetchPermitTypeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchPermitTypeProvider &&
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

mixin FetchPermitTypeRef on AutoDisposeFutureProviderRef<List<Permit>> {
  /// The parameter `key` of this provider.
  String get key;

  /// The parameter `type` of this provider.
  String get type;
}

class _FetchPermitTypeProviderElement
    extends AutoDisposeFutureProviderElement<List<Permit>>
    with FetchPermitTypeRef {
  _FetchPermitTypeProviderElement(super.provider);

  @override
  String get key => (origin as FetchPermitTypeProvider).key;
  @override
  String get type => (origin as FetchPermitTypeProvider).type;
}

String _$fetchPermitDetailHash() => r'fe0f08a819e43208041b88a86a709acab2d8d751';

/// See also [fetchPermitDetail].
@ProviderFor(fetchPermitDetail)
const fetchPermitDetailProvider = FetchPermitDetailFamily();

/// See also [fetchPermitDetail].
class FetchPermitDetailFamily extends Family<AsyncValue<List<Permit>>> {
  /// See also [fetchPermitDetail].
  const FetchPermitDetailFamily();

  /// See also [fetchPermitDetail].
  FetchPermitDetailProvider call({
    required String key,
    required String id,
  }) {
    return FetchPermitDetailProvider(
      key: key,
      id: id,
    );
  }

  @override
  FetchPermitDetailProvider getProviderOverride(
    covariant FetchPermitDetailProvider provider,
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
  String? get name => r'fetchPermitDetailProvider';
}

/// See also [fetchPermitDetail].
class FetchPermitDetailProvider
    extends AutoDisposeFutureProvider<List<Permit>> {
  /// See also [fetchPermitDetail].
  FetchPermitDetailProvider({
    required String key,
    required String id,
  }) : this._internal(
          (ref) => fetchPermitDetail(
            ref as FetchPermitDetailRef,
            key: key,
            id: id,
          ),
          from: fetchPermitDetailProvider,
          name: r'fetchPermitDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchPermitDetailHash,
          dependencies: FetchPermitDetailFamily._dependencies,
          allTransitiveDependencies:
              FetchPermitDetailFamily._allTransitiveDependencies,
          key: key,
          id: id,
        );

  FetchPermitDetailProvider._internal(
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
    FutureOr<List<Permit>> Function(FetchPermitDetailRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchPermitDetailProvider._internal(
        (ref) => create(ref as FetchPermitDetailRef),
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
  AutoDisposeFutureProviderElement<List<Permit>> createElement() {
    return _FetchPermitDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchPermitDetailProvider &&
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

mixin FetchPermitDetailRef on AutoDisposeFutureProviderRef<List<Permit>> {
  /// The parameter `key` of this provider.
  String get key;

  /// The parameter `id` of this provider.
  String get id;
}

class _FetchPermitDetailProviderElement
    extends AutoDisposeFutureProviderElement<List<Permit>>
    with FetchPermitDetailRef {
  _FetchPermitDetailProviderElement(super.provider);

  @override
  String get key => (origin as FetchPermitDetailProvider).key;
  @override
  String get id => (origin as FetchPermitDetailProvider).id;
}

String _$permitControllerHash() => r'5d4d76fc00d0fb6bf483ab2f8e09aaff50072eb9';

/// See also [PermitController].
@ProviderFor(PermitController)
final permitControllerProvider =
    AutoDisposeAsyncNotifierProvider<PermitController, void>.internal(
  PermitController.new,
  name: r'permitControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$permitControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PermitController = AutoDisposeAsyncNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
