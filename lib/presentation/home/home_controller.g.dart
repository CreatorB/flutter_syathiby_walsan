// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchStudentDataHash() => r'568e7490dec4b1a7653ce6263c0245e20d0d0f76';

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

/// See also [fetchStudentData].
@ProviderFor(fetchStudentData)
const fetchStudentDataProvider = FetchStudentDataFamily();

/// See also [fetchStudentData].
class FetchStudentDataFamily extends Family<AsyncValue<List<Store>>> {
  /// See also [fetchStudentData].
  const FetchStudentDataFamily();

  /// See also [fetchStudentData].
  FetchStudentDataProvider call({
    required String key,
  }) {
    return FetchStudentDataProvider(
      key: key,
    );
  }

  @override
  FetchStudentDataProvider getProviderOverride(
    covariant FetchStudentDataProvider provider,
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
  String? get name => r'fetchStudentDataProvider';
}

/// See also [fetchStudentData].
class FetchStudentDataProvider extends AutoDisposeFutureProvider<List<Store>> {
  /// See also [fetchStudentData].
  FetchStudentDataProvider({
    required String key,
  }) : this._internal(
          (ref) => fetchStudentData(
            ref as FetchStudentDataRef,
            key: key,
          ),
          from: fetchStudentDataProvider,
          name: r'fetchStudentDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchStudentDataHash,
          dependencies: FetchStudentDataFamily._dependencies,
          allTransitiveDependencies:
              FetchStudentDataFamily._allTransitiveDependencies,
          key: key,
        );

  FetchStudentDataProvider._internal(
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
    FutureOr<List<Store>> Function(FetchStudentDataRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchStudentDataProvider._internal(
        (ref) => create(ref as FetchStudentDataRef),
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
  AutoDisposeFutureProviderElement<List<Store>> createElement() {
    return _FetchStudentDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchStudentDataProvider && other.key == key;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchStudentDataRef on AutoDisposeFutureProviderRef<List<Store>> {
  /// The parameter `key` of this provider.
  String get key;
}

class _FetchStudentDataProviderElement
    extends AutoDisposeFutureProviderElement<List<Store>>
    with FetchStudentDataRef {
  _FetchStudentDataProviderElement(super.provider);

  @override
  String get key => (origin as FetchStudentDataProvider).key;
}

String _$fetchDetailStudentHash() =>
    r'db216777fbd44ef9f9e15c53d8b2a6d11a6a0d82';

/// See also [fetchDetailStudent].
@ProviderFor(fetchDetailStudent)
const fetchDetailStudentProvider = FetchDetailStudentFamily();

/// See also [fetchDetailStudent].
class FetchDetailStudentFamily extends Family<AsyncValue<List<Store>>> {
  /// See also [fetchDetailStudent].
  const FetchDetailStudentFamily();

  /// See also [fetchDetailStudent].
  FetchDetailStudentProvider call({
    required String key,
  }) {
    return FetchDetailStudentProvider(
      key: key,
    );
  }

  @override
  FetchDetailStudentProvider getProviderOverride(
    covariant FetchDetailStudentProvider provider,
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
  String? get name => r'fetchDetailStudentProvider';
}

/// See also [fetchDetailStudent].
class FetchDetailStudentProvider
    extends AutoDisposeFutureProvider<List<Store>> {
  /// See also [fetchDetailStudent].
  FetchDetailStudentProvider({
    required String key,
  }) : this._internal(
          (ref) => fetchDetailStudent(
            ref as FetchDetailStudentRef,
            key: key,
          ),
          from: fetchDetailStudentProvider,
          name: r'fetchDetailStudentProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchDetailStudentHash,
          dependencies: FetchDetailStudentFamily._dependencies,
          allTransitiveDependencies:
              FetchDetailStudentFamily._allTransitiveDependencies,
          key: key,
        );

  FetchDetailStudentProvider._internal(
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
    FutureOr<List<Store>> Function(FetchDetailStudentRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchDetailStudentProvider._internal(
        (ref) => create(ref as FetchDetailStudentRef),
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
  AutoDisposeFutureProviderElement<List<Store>> createElement() {
    return _FetchDetailStudentProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchDetailStudentProvider && other.key == key;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchDetailStudentRef on AutoDisposeFutureProviderRef<List<Store>> {
  /// The parameter `key` of this provider.
  String get key;
}

class _FetchDetailStudentProviderElement
    extends AutoDisposeFutureProviderElement<List<Store>>
    with FetchDetailStudentRef {
  _FetchDetailStudentProviderElement(super.provider);

  @override
  String get key => (origin as FetchDetailStudentProvider).key;
}

String _$saveTokenToServerHash() => r'aa81ecc7cb038016dad2ed63694686756b575344';

/// See also [saveTokenToServer].
@ProviderFor(saveTokenToServer)
const saveTokenToServerProvider = SaveTokenToServerFamily();

/// See also [saveTokenToServer].
class SaveTokenToServerFamily extends Family<AsyncValue<User>> {
  /// See also [saveTokenToServer].
  const SaveTokenToServerFamily();

  /// See also [saveTokenToServer].
  SaveTokenToServerProvider call({
    required String key,
    required String token,
  }) {
    return SaveTokenToServerProvider(
      key: key,
      token: token,
    );
  }

  @override
  SaveTokenToServerProvider getProviderOverride(
    covariant SaveTokenToServerProvider provider,
  ) {
    return call(
      key: provider.key,
      token: provider.token,
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
  String? get name => r'saveTokenToServerProvider';
}

/// See also [saveTokenToServer].
class SaveTokenToServerProvider extends AutoDisposeFutureProvider<User> {
  /// See also [saveTokenToServer].
  SaveTokenToServerProvider({
    required String key,
    required String token,
  }) : this._internal(
          (ref) => saveTokenToServer(
            ref as SaveTokenToServerRef,
            key: key,
            token: token,
          ),
          from: saveTokenToServerProvider,
          name: r'saveTokenToServerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$saveTokenToServerHash,
          dependencies: SaveTokenToServerFamily._dependencies,
          allTransitiveDependencies:
              SaveTokenToServerFamily._allTransitiveDependencies,
          key: key,
          token: token,
        );

  SaveTokenToServerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.key,
    required this.token,
  }) : super.internal();

  final String key;
  final String token;

  @override
  Override overrideWith(
    FutureOr<User> Function(SaveTokenToServerRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SaveTokenToServerProvider._internal(
        (ref) => create(ref as SaveTokenToServerRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        key: key,
        token: token,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<User> createElement() {
    return _SaveTokenToServerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SaveTokenToServerProvider &&
        other.key == key &&
        other.token == token;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);
    hash = _SystemHash.combine(hash, token.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SaveTokenToServerRef on AutoDisposeFutureProviderRef<User> {
  /// The parameter `key` of this provider.
  String get key;

  /// The parameter `token` of this provider.
  String get token;
}

class _SaveTokenToServerProviderElement
    extends AutoDisposeFutureProviderElement<User> with SaveTokenToServerRef {
  _SaveTokenToServerProviderElement(super.provider);

  @override
  String get key => (origin as SaveTokenToServerProvider).key;
  @override
  String get token => (origin as SaveTokenToServerProvider).token;
}

String _$fetchCheckPaymentHash() => r'edf13c37f0a836b74ad24818bbdcd0dcdf5d51e7';

/// See also [fetchCheckPayment].
@ProviderFor(fetchCheckPayment)
const fetchCheckPaymentProvider = FetchCheckPaymentFamily();

/// See also [fetchCheckPayment].
class FetchCheckPaymentFamily
    extends Family<AsyncValue<Map<String, dynamic>?>> {
  /// See also [fetchCheckPayment].
  const FetchCheckPaymentFamily();

  /// See also [fetchCheckPayment].
  FetchCheckPaymentProvider call({
    String? studentId,
  }) {
    return FetchCheckPaymentProvider(
      studentId: studentId,
    );
  }

  @override
  FetchCheckPaymentProvider getProviderOverride(
    covariant FetchCheckPaymentProvider provider,
  ) {
    return call(
      studentId: provider.studentId,
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
  String? get name => r'fetchCheckPaymentProvider';
}

/// See also [fetchCheckPayment].
class FetchCheckPaymentProvider
    extends AutoDisposeFutureProvider<Map<String, dynamic>?> {
  /// See also [fetchCheckPayment].
  FetchCheckPaymentProvider({
    String? studentId,
  }) : this._internal(
          (ref) => fetchCheckPayment(
            ref as FetchCheckPaymentRef,
            studentId: studentId,
          ),
          from: fetchCheckPaymentProvider,
          name: r'fetchCheckPaymentProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchCheckPaymentHash,
          dependencies: FetchCheckPaymentFamily._dependencies,
          allTransitiveDependencies:
              FetchCheckPaymentFamily._allTransitiveDependencies,
          studentId: studentId,
        );

  FetchCheckPaymentProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.studentId,
  }) : super.internal();

  final String? studentId;

  @override
  Override overrideWith(
    FutureOr<Map<String, dynamic>?> Function(FetchCheckPaymentRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchCheckPaymentProvider._internal(
        (ref) => create(ref as FetchCheckPaymentRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        studentId: studentId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Map<String, dynamic>?> createElement() {
    return _FetchCheckPaymentProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchCheckPaymentProvider && other.studentId == studentId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, studentId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchCheckPaymentRef
    on AutoDisposeFutureProviderRef<Map<String, dynamic>?> {
  /// The parameter `studentId` of this provider.
  String? get studentId;
}

class _FetchCheckPaymentProviderElement
    extends AutoDisposeFutureProviderElement<Map<String, dynamic>?>
    with FetchCheckPaymentRef {
  _FetchCheckPaymentProviderElement(super.provider);

  @override
  String? get studentId => (origin as FetchCheckPaymentProvider).studentId;
}

String _$homeControllerHash() => r'e97b934ce1ba42a854186dd0194cd83e72fff654';

/// See also [HomeController].
@ProviderFor(HomeController)
final homeControllerProvider =
    AutoDisposeAsyncNotifierProvider<HomeController, void>.internal(
  HomeController.new,
  name: r'homeControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$homeControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$HomeController = AutoDisposeAsyncNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
