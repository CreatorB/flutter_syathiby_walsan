// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchSchoolSheduleHash() =>
    r'e6d48fbcfa7d896e7b4d5b0e4587dbf52368d6f1';

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

/// See also [fetchSchoolShedule].
@ProviderFor(fetchSchoolShedule)
const fetchSchoolSheduleProvider = FetchSchoolSheduleFamily();

/// See also [fetchSchoolShedule].
class FetchSchoolSheduleFamily extends Family<AsyncValue<List<Jadwal>>> {
  /// See also [fetchSchoolShedule].
  const FetchSchoolSheduleFamily();

  /// See also [fetchSchoolShedule].
  FetchSchoolSheduleProvider call({
    required String key,
    required String date,
  }) {
    return FetchSchoolSheduleProvider(
      key: key,
      date: date,
    );
  }

  @override
  FetchSchoolSheduleProvider getProviderOverride(
    covariant FetchSchoolSheduleProvider provider,
  ) {
    return call(
      key: provider.key,
      date: provider.date,
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
  String? get name => r'fetchSchoolSheduleProvider';
}

/// See also [fetchSchoolShedule].
class FetchSchoolSheduleProvider
    extends AutoDisposeFutureProvider<List<Jadwal>> {
  /// See also [fetchSchoolShedule].
  FetchSchoolSheduleProvider({
    required String key,
    required String date,
  }) : this._internal(
          (ref) => fetchSchoolShedule(
            ref as FetchSchoolSheduleRef,
            key: key,
            date: date,
          ),
          from: fetchSchoolSheduleProvider,
          name: r'fetchSchoolSheduleProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchSchoolSheduleHash,
          dependencies: FetchSchoolSheduleFamily._dependencies,
          allTransitiveDependencies:
              FetchSchoolSheduleFamily._allTransitiveDependencies,
          key: key,
          date: date,
        );

  FetchSchoolSheduleProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.key,
    required this.date,
  }) : super.internal();

  final String key;
  final String date;

  @override
  Override overrideWith(
    FutureOr<List<Jadwal>> Function(FetchSchoolSheduleRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchSchoolSheduleProvider._internal(
        (ref) => create(ref as FetchSchoolSheduleRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        key: key,
        date: date,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Jadwal>> createElement() {
    return _FetchSchoolSheduleProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchSchoolSheduleProvider &&
        other.key == key &&
        other.date == date;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);
    hash = _SystemHash.combine(hash, date.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchSchoolSheduleRef on AutoDisposeFutureProviderRef<List<Jadwal>> {
  /// The parameter `key` of this provider.
  String get key;

  /// The parameter `date` of this provider.
  String get date;
}

class _FetchSchoolSheduleProviderElement
    extends AutoDisposeFutureProviderElement<List<Jadwal>>
    with FetchSchoolSheduleRef {
  _FetchSchoolSheduleProviderElement(super.provider);

  @override
  String get key => (origin as FetchSchoolSheduleProvider).key;
  @override
  String get date => (origin as FetchSchoolSheduleProvider).date;
}

String _$fetchTahfidzHistoryHash() =>
    r'766c7a0ba514a18ede10b6f25f9ef9202ab8fa02';

/// See also [fetchTahfidzHistory].
@ProviderFor(fetchTahfidzHistory)
const fetchTahfidzHistoryProvider = FetchTahfidzHistoryFamily();

/// See also [fetchTahfidzHistory].
class FetchTahfidzHistoryFamily extends Family<AsyncValue<List<Tahfidz>>> {
  /// See also [fetchTahfidzHistory].
  const FetchTahfidzHistoryFamily();

  /// See also [fetchTahfidzHistory].
  FetchTahfidzHistoryProvider call({
    required String key,
    required String date,
  }) {
    return FetchTahfidzHistoryProvider(
      key: key,
      date: date,
    );
  }

  @override
  FetchTahfidzHistoryProvider getProviderOverride(
    covariant FetchTahfidzHistoryProvider provider,
  ) {
    return call(
      key: provider.key,
      date: provider.date,
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
  String? get name => r'fetchTahfidzHistoryProvider';
}

/// See also [fetchTahfidzHistory].
class FetchTahfidzHistoryProvider
    extends AutoDisposeFutureProvider<List<Tahfidz>> {
  /// See also [fetchTahfidzHistory].
  FetchTahfidzHistoryProvider({
    required String key,
    required String date,
  }) : this._internal(
          (ref) => fetchTahfidzHistory(
            ref as FetchTahfidzHistoryRef,
            key: key,
            date: date,
          ),
          from: fetchTahfidzHistoryProvider,
          name: r'fetchTahfidzHistoryProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchTahfidzHistoryHash,
          dependencies: FetchTahfidzHistoryFamily._dependencies,
          allTransitiveDependencies:
              FetchTahfidzHistoryFamily._allTransitiveDependencies,
          key: key,
          date: date,
        );

  FetchTahfidzHistoryProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.key,
    required this.date,
  }) : super.internal();

  final String key;
  final String date;

  @override
  Override overrideWith(
    FutureOr<List<Tahfidz>> Function(FetchTahfidzHistoryRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchTahfidzHistoryProvider._internal(
        (ref) => create(ref as FetchTahfidzHistoryRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        key: key,
        date: date,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Tahfidz>> createElement() {
    return _FetchTahfidzHistoryProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchTahfidzHistoryProvider &&
        other.key == key &&
        other.date == date;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);
    hash = _SystemHash.combine(hash, date.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchTahfidzHistoryRef on AutoDisposeFutureProviderRef<List<Tahfidz>> {
  /// The parameter `key` of this provider.
  String get key;

  /// The parameter `date` of this provider.
  String get date;
}

class _FetchTahfidzHistoryProviderElement
    extends AutoDisposeFutureProviderElement<List<Tahfidz>>
    with FetchTahfidzHistoryRef {
  _FetchTahfidzHistoryProviderElement(super.provider);

  @override
  String get key => (origin as FetchTahfidzHistoryProvider).key;
  @override
  String get date => (origin as FetchTahfidzHistoryProvider).date;
}

String _$fetchStudentRecapHash() => r'4687c73195e1d89526b1da5fc7ac9631d92f7f24';

/// See also [fetchStudentRecap].
@ProviderFor(fetchStudentRecap)
const fetchStudentRecapProvider = FetchStudentRecapFamily();

/// See also [fetchStudentRecap].
class FetchStudentRecapFamily extends Family<AsyncValue<List<Rekap>>> {
  /// See also [fetchStudentRecap].
  const FetchStudentRecapFamily();

  /// See also [fetchStudentRecap].
  FetchStudentRecapProvider call({
    required String key,
    required String date,
  }) {
    return FetchStudentRecapProvider(
      key: key,
      date: date,
    );
  }

  @override
  FetchStudentRecapProvider getProviderOverride(
    covariant FetchStudentRecapProvider provider,
  ) {
    return call(
      key: provider.key,
      date: provider.date,
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
  String? get name => r'fetchStudentRecapProvider';
}

/// See also [fetchStudentRecap].
class FetchStudentRecapProvider extends AutoDisposeFutureProvider<List<Rekap>> {
  /// See also [fetchStudentRecap].
  FetchStudentRecapProvider({
    required String key,
    required String date,
  }) : this._internal(
          (ref) => fetchStudentRecap(
            ref as FetchStudentRecapRef,
            key: key,
            date: date,
          ),
          from: fetchStudentRecapProvider,
          name: r'fetchStudentRecapProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchStudentRecapHash,
          dependencies: FetchStudentRecapFamily._dependencies,
          allTransitiveDependencies:
              FetchStudentRecapFamily._allTransitiveDependencies,
          key: key,
          date: date,
        );

  FetchStudentRecapProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.key,
    required this.date,
  }) : super.internal();

  final String key;
  final String date;

  @override
  Override overrideWith(
    FutureOr<List<Rekap>> Function(FetchStudentRecapRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchStudentRecapProvider._internal(
        (ref) => create(ref as FetchStudentRecapRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        key: key,
        date: date,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Rekap>> createElement() {
    return _FetchStudentRecapProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchStudentRecapProvider &&
        other.key == key &&
        other.date == date;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);
    hash = _SystemHash.combine(hash, date.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchStudentRecapRef on AutoDisposeFutureProviderRef<List<Rekap>> {
  /// The parameter `key` of this provider.
  String get key;

  /// The parameter `date` of this provider.
  String get date;
}

class _FetchStudentRecapProviderElement
    extends AutoDisposeFutureProviderElement<List<Rekap>>
    with FetchStudentRecapRef {
  _FetchStudentRecapProviderElement(super.provider);

  @override
  String get key => (origin as FetchStudentRecapProvider).key;
  @override
  String get date => (origin as FetchStudentRecapProvider).date;
}

String _$fetchStudentActivityHash() =>
    r'8b262c70ed867db95c2faa5d78a32fa32cd86c19';

/// See also [fetchStudentActivity].
@ProviderFor(fetchStudentActivity)
const fetchStudentActivityProvider = FetchStudentActivityFamily();

/// See also [fetchStudentActivity].
class FetchStudentActivityFamily extends Family<AsyncValue<List<Rekap>>> {
  /// See also [fetchStudentActivity].
  const FetchStudentActivityFamily();

  /// See also [fetchStudentActivity].
  FetchStudentActivityProvider call({
    required String key,
    required String date,
  }) {
    return FetchStudentActivityProvider(
      key: key,
      date: date,
    );
  }

  @override
  FetchStudentActivityProvider getProviderOverride(
    covariant FetchStudentActivityProvider provider,
  ) {
    return call(
      key: provider.key,
      date: provider.date,
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
  String? get name => r'fetchStudentActivityProvider';
}

/// See also [fetchStudentActivity].
class FetchStudentActivityProvider
    extends AutoDisposeFutureProvider<List<Rekap>> {
  /// See also [fetchStudentActivity].
  FetchStudentActivityProvider({
    required String key,
    required String date,
  }) : this._internal(
          (ref) => fetchStudentActivity(
            ref as FetchStudentActivityRef,
            key: key,
            date: date,
          ),
          from: fetchStudentActivityProvider,
          name: r'fetchStudentActivityProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchStudentActivityHash,
          dependencies: FetchStudentActivityFamily._dependencies,
          allTransitiveDependencies:
              FetchStudentActivityFamily._allTransitiveDependencies,
          key: key,
          date: date,
        );

  FetchStudentActivityProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.key,
    required this.date,
  }) : super.internal();

  final String key;
  final String date;

  @override
  Override overrideWith(
    FutureOr<List<Rekap>> Function(FetchStudentActivityRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchStudentActivityProvider._internal(
        (ref) => create(ref as FetchStudentActivityRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        key: key,
        date: date,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Rekap>> createElement() {
    return _FetchStudentActivityProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchStudentActivityProvider &&
        other.key == key &&
        other.date == date;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);
    hash = _SystemHash.combine(hash, date.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchStudentActivityRef on AutoDisposeFutureProviderRef<List<Rekap>> {
  /// The parameter `key` of this provider.
  String get key;

  /// The parameter `date` of this provider.
  String get date;
}

class _FetchStudentActivityProviderElement
    extends AutoDisposeFutureProviderElement<List<Rekap>>
    with FetchStudentActivityRef {
  _FetchStudentActivityProviderElement(super.provider);

  @override
  String get key => (origin as FetchStudentActivityProvider).key;
  @override
  String get date => (origin as FetchStudentActivityProvider).date;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
