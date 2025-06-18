// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pickup_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchAllPickupParentHash() =>
    r'9f21c9b06c3baab002f801aca22a0dbac5d1ba56';

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

/// See also [fetchAllPickupParent].
@ProviderFor(fetchAllPickupParent)
const fetchAllPickupParentProvider = FetchAllPickupParentFamily();

/// See also [fetchAllPickupParent].
class FetchAllPickupParentFamily extends Family<AsyncValue<List<Penjemputan>>> {
  /// See also [fetchAllPickupParent].
  const FetchAllPickupParentFamily();

  /// See also [fetchAllPickupParent].
  FetchAllPickupParentProvider call({
    required String key,
    required String id,
  }) {
    return FetchAllPickupParentProvider(
      key: key,
      id: id,
    );
  }

  @override
  FetchAllPickupParentProvider getProviderOverride(
    covariant FetchAllPickupParentProvider provider,
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
  String? get name => r'fetchAllPickupParentProvider';
}

/// See also [fetchAllPickupParent].
class FetchAllPickupParentProvider
    extends AutoDisposeFutureProvider<List<Penjemputan>> {
  /// See also [fetchAllPickupParent].
  FetchAllPickupParentProvider({
    required String key,
    required String id,
  }) : this._internal(
          (ref) => fetchAllPickupParent(
            ref as FetchAllPickupParentRef,
            key: key,
            id: id,
          ),
          from: fetchAllPickupParentProvider,
          name: r'fetchAllPickupParentProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchAllPickupParentHash,
          dependencies: FetchAllPickupParentFamily._dependencies,
          allTransitiveDependencies:
              FetchAllPickupParentFamily._allTransitiveDependencies,
          key: key,
          id: id,
        );

  FetchAllPickupParentProvider._internal(
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
    FutureOr<List<Penjemputan>> Function(FetchAllPickupParentRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchAllPickupParentProvider._internal(
        (ref) => create(ref as FetchAllPickupParentRef),
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
  AutoDisposeFutureProviderElement<List<Penjemputan>> createElement() {
    return _FetchAllPickupParentProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchAllPickupParentProvider &&
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

mixin FetchAllPickupParentRef
    on AutoDisposeFutureProviderRef<List<Penjemputan>> {
  /// The parameter `key` of this provider.
  String get key;

  /// The parameter `id` of this provider.
  String get id;
}

class _FetchAllPickupParentProviderElement
    extends AutoDisposeFutureProviderElement<List<Penjemputan>>
    with FetchAllPickupParentRef {
  _FetchAllPickupParentProviderElement(super.provider);

  @override
  String get key => (origin as FetchAllPickupParentProvider).key;
  @override
  String get id => (origin as FetchAllPickupParentProvider).id;
}

String _$fetchQrPickupHash() => r'e4cffb3044d47e27ee71835273f3eb0493d0bb01';

/// See also [fetchQrPickup].
@ProviderFor(fetchQrPickup)
const fetchQrPickupProvider = FetchQrPickupFamily();

/// See also [fetchQrPickup].
class FetchQrPickupFamily extends Family<AsyncValue<List<Penjemputan>>> {
  /// See also [fetchQrPickup].
  const FetchQrPickupFamily();

  /// See also [fetchQrPickup].
  FetchQrPickupProvider call({
    required String key,
    required String id,
  }) {
    return FetchQrPickupProvider(
      key: key,
      id: id,
    );
  }

  @override
  FetchQrPickupProvider getProviderOverride(
    covariant FetchQrPickupProvider provider,
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
  String? get name => r'fetchQrPickupProvider';
}

/// See also [fetchQrPickup].
class FetchQrPickupProvider
    extends AutoDisposeFutureProvider<List<Penjemputan>> {
  /// See also [fetchQrPickup].
  FetchQrPickupProvider({
    required String key,
    required String id,
  }) : this._internal(
          (ref) => fetchQrPickup(
            ref as FetchQrPickupRef,
            key: key,
            id: id,
          ),
          from: fetchQrPickupProvider,
          name: r'fetchQrPickupProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchQrPickupHash,
          dependencies: FetchQrPickupFamily._dependencies,
          allTransitiveDependencies:
              FetchQrPickupFamily._allTransitiveDependencies,
          key: key,
          id: id,
        );

  FetchQrPickupProvider._internal(
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
    FutureOr<List<Penjemputan>> Function(FetchQrPickupRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchQrPickupProvider._internal(
        (ref) => create(ref as FetchQrPickupRef),
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
  AutoDisposeFutureProviderElement<List<Penjemputan>> createElement() {
    return _FetchQrPickupProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchQrPickupProvider && other.key == key && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchQrPickupRef on AutoDisposeFutureProviderRef<List<Penjemputan>> {
  /// The parameter `key` of this provider.
  String get key;

  /// The parameter `id` of this provider.
  String get id;
}

class _FetchQrPickupProviderElement
    extends AutoDisposeFutureProviderElement<List<Penjemputan>>
    with FetchQrPickupRef {
  _FetchQrPickupProviderElement(super.provider);

  @override
  String get key => (origin as FetchQrPickupProvider).key;
  @override
  String get id => (origin as FetchQrPickupProvider).id;
}

String _$pickupControllerHash() => r'b57c36accc5d943c44f40734527518bafd50112b';

/// See also [PickupController].
@ProviderFor(PickupController)
final pickupControllerProvider =
    AutoDisposeAsyncNotifierProvider<PickupController, void>.internal(
  PickupController.new,
  name: r'pickupControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$pickupControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PickupController = AutoDisposeAsyncNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
