// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'holiday_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchAllEventHash() => r'6aed5f332c5c6bdb6b2aa4feb91c65130a089a07';

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

/// See also [fetchAllEvent].
@ProviderFor(fetchAllEvent)
const fetchAllEventProvider = FetchAllEventFamily();

/// See also [fetchAllEvent].
class FetchAllEventFamily extends Family<AsyncValue<List<Event>>> {
  /// See also [fetchAllEvent].
  const FetchAllEventFamily();

  /// See also [fetchAllEvent].
  FetchAllEventProvider call({
    required String key,
    required int page,
  }) {
    return FetchAllEventProvider(
      key: key,
      page: page,
    );
  }

  @override
  FetchAllEventProvider getProviderOverride(
    covariant FetchAllEventProvider provider,
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
  String? get name => r'fetchAllEventProvider';
}

/// See also [fetchAllEvent].
class FetchAllEventProvider extends AutoDisposeFutureProvider<List<Event>> {
  /// See also [fetchAllEvent].
  FetchAllEventProvider({
    required String key,
    required int page,
  }) : this._internal(
          (ref) => fetchAllEvent(
            ref as FetchAllEventRef,
            key: key,
            page: page,
          ),
          from: fetchAllEventProvider,
          name: r'fetchAllEventProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchAllEventHash,
          dependencies: FetchAllEventFamily._dependencies,
          allTransitiveDependencies:
              FetchAllEventFamily._allTransitiveDependencies,
          key: key,
          page: page,
        );

  FetchAllEventProvider._internal(
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
    FutureOr<List<Event>> Function(FetchAllEventRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchAllEventProvider._internal(
        (ref) => create(ref as FetchAllEventRef),
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
  AutoDisposeFutureProviderElement<List<Event>> createElement() {
    return _FetchAllEventProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchAllEventProvider &&
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

mixin FetchAllEventRef on AutoDisposeFutureProviderRef<List<Event>> {
  /// The parameter `key` of this provider.
  String get key;

  /// The parameter `page` of this provider.
  int get page;
}

class _FetchAllEventProviderElement
    extends AutoDisposeFutureProviderElement<List<Event>>
    with FetchAllEventRef {
  _FetchAllEventProviderElement(super.provider);

  @override
  String get key => (origin as FetchAllEventProvider).key;
  @override
  int get page => (origin as FetchAllEventProvider).page;
}

String _$fetchStudentPickupHash() =>
    r'3133c4e4a027ab4cfd4302dae278c35d68634272';

/// See also [fetchStudentPickup].
@ProviderFor(fetchStudentPickup)
const fetchStudentPickupProvider = FetchStudentPickupFamily();

/// See also [fetchStudentPickup].
class FetchStudentPickupFamily extends Family<AsyncValue<List<Penjemputan>>> {
  /// See also [fetchStudentPickup].
  const FetchStudentPickupFamily();

  /// See also [fetchStudentPickup].
  FetchStudentPickupProvider call({
    required String key,
    required String id,
    required int page,
  }) {
    return FetchStudentPickupProvider(
      key: key,
      id: id,
      page: page,
    );
  }

  @override
  FetchStudentPickupProvider getProviderOverride(
    covariant FetchStudentPickupProvider provider,
  ) {
    return call(
      key: provider.key,
      id: provider.id,
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
  String? get name => r'fetchStudentPickupProvider';
}

/// See also [fetchStudentPickup].
class FetchStudentPickupProvider
    extends AutoDisposeFutureProvider<List<Penjemputan>> {
  /// See also [fetchStudentPickup].
  FetchStudentPickupProvider({
    required String key,
    required String id,
    required int page,
  }) : this._internal(
          (ref) => fetchStudentPickup(
            ref as FetchStudentPickupRef,
            key: key,
            id: id,
            page: page,
          ),
          from: fetchStudentPickupProvider,
          name: r'fetchStudentPickupProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchStudentPickupHash,
          dependencies: FetchStudentPickupFamily._dependencies,
          allTransitiveDependencies:
              FetchStudentPickupFamily._allTransitiveDependencies,
          key: key,
          id: id,
          page: page,
        );

  FetchStudentPickupProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.key,
    required this.id,
    required this.page,
  }) : super.internal();

  final String key;
  final String id;
  final int page;

  @override
  Override overrideWith(
    FutureOr<List<Penjemputan>> Function(FetchStudentPickupRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchStudentPickupProvider._internal(
        (ref) => create(ref as FetchStudentPickupRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        key: key,
        id: id,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Penjemputan>> createElement() {
    return _FetchStudentPickupProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchStudentPickupProvider &&
        other.key == key &&
        other.id == id &&
        other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchStudentPickupRef on AutoDisposeFutureProviderRef<List<Penjemputan>> {
  /// The parameter `key` of this provider.
  String get key;

  /// The parameter `id` of this provider.
  String get id;

  /// The parameter `page` of this provider.
  int get page;
}

class _FetchStudentPickupProviderElement
    extends AutoDisposeFutureProviderElement<List<Penjemputan>>
    with FetchStudentPickupRef {
  _FetchStudentPickupProviderElement(super.provider);

  @override
  String get key => (origin as FetchStudentPickupProvider).key;
  @override
  String get id => (origin as FetchStudentPickupProvider).id;
  @override
  int get page => (origin as FetchStudentPickupProvider).page;
}

String _$fetchAllHostelAttendanceHash() =>
    r'd273c0a132c89f8df5df29262fc26af11a3d540a';

/// See also [fetchAllHostelAttendance].
@ProviderFor(fetchAllHostelAttendance)
const fetchAllHostelAttendanceProvider = FetchAllHostelAttendanceFamily();

/// See also [fetchAllHostelAttendance].
class FetchAllHostelAttendanceFamily extends Family<AsyncValue<List<Asrama>>> {
  /// See also [fetchAllHostelAttendance].
  const FetchAllHostelAttendanceFamily();

  /// See also [fetchAllHostelAttendance].
  FetchAllHostelAttendanceProvider call({
    required String key,
  }) {
    return FetchAllHostelAttendanceProvider(
      key: key,
    );
  }

  @override
  FetchAllHostelAttendanceProvider getProviderOverride(
    covariant FetchAllHostelAttendanceProvider provider,
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
  String? get name => r'fetchAllHostelAttendanceProvider';
}

/// See also [fetchAllHostelAttendance].
class FetchAllHostelAttendanceProvider
    extends AutoDisposeFutureProvider<List<Asrama>> {
  /// See also [fetchAllHostelAttendance].
  FetchAllHostelAttendanceProvider({
    required String key,
  }) : this._internal(
          (ref) => fetchAllHostelAttendance(
            ref as FetchAllHostelAttendanceRef,
            key: key,
          ),
          from: fetchAllHostelAttendanceProvider,
          name: r'fetchAllHostelAttendanceProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchAllHostelAttendanceHash,
          dependencies: FetchAllHostelAttendanceFamily._dependencies,
          allTransitiveDependencies:
              FetchAllHostelAttendanceFamily._allTransitiveDependencies,
          key: key,
        );

  FetchAllHostelAttendanceProvider._internal(
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
    FutureOr<List<Asrama>> Function(FetchAllHostelAttendanceRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchAllHostelAttendanceProvider._internal(
        (ref) => create(ref as FetchAllHostelAttendanceRef),
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
  AutoDisposeFutureProviderElement<List<Asrama>> createElement() {
    return _FetchAllHostelAttendanceProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchAllHostelAttendanceProvider && other.key == key;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchAllHostelAttendanceRef
    on AutoDisposeFutureProviderRef<List<Asrama>> {
  /// The parameter `key` of this provider.
  String get key;
}

class _FetchAllHostelAttendanceProviderElement
    extends AutoDisposeFutureProviderElement<List<Asrama>>
    with FetchAllHostelAttendanceRef {
  _FetchAllHostelAttendanceProviderElement(super.provider);

  @override
  String get key => (origin as FetchAllHostelAttendanceProvider).key;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
