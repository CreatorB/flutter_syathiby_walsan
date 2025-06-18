// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'score_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchAllSubjectHash() => r'df58b6f3316971066c1a3024fd87e1bc6461a1f4';

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

/// See also [fetchAllSubject].
@ProviderFor(fetchAllSubject)
const fetchAllSubjectProvider = FetchAllSubjectFamily();

/// See also [fetchAllSubject].
class FetchAllSubjectFamily extends Family<AsyncValue<List<Jadwal>>> {
  /// See also [fetchAllSubject].
  const FetchAllSubjectFamily();

  /// See also [fetchAllSubject].
  FetchAllSubjectProvider call({
    required String key,
  }) {
    return FetchAllSubjectProvider(
      key: key,
    );
  }

  @override
  FetchAllSubjectProvider getProviderOverride(
    covariant FetchAllSubjectProvider provider,
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
  String? get name => r'fetchAllSubjectProvider';
}

/// See also [fetchAllSubject].
class FetchAllSubjectProvider extends AutoDisposeFutureProvider<List<Jadwal>> {
  /// See also [fetchAllSubject].
  FetchAllSubjectProvider({
    required String key,
  }) : this._internal(
          (ref) => fetchAllSubject(
            ref as FetchAllSubjectRef,
            key: key,
          ),
          from: fetchAllSubjectProvider,
          name: r'fetchAllSubjectProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchAllSubjectHash,
          dependencies: FetchAllSubjectFamily._dependencies,
          allTransitiveDependencies:
              FetchAllSubjectFamily._allTransitiveDependencies,
          key: key,
        );

  FetchAllSubjectProvider._internal(
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
    FutureOr<List<Jadwal>> Function(FetchAllSubjectRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchAllSubjectProvider._internal(
        (ref) => create(ref as FetchAllSubjectRef),
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
  AutoDisposeFutureProviderElement<List<Jadwal>> createElement() {
    return _FetchAllSubjectProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchAllSubjectProvider && other.key == key;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchAllSubjectRef on AutoDisposeFutureProviderRef<List<Jadwal>> {
  /// The parameter `key` of this provider.
  String get key;
}

class _FetchAllSubjectProviderElement
    extends AutoDisposeFutureProviderElement<List<Jadwal>>
    with FetchAllSubjectRef {
  _FetchAllSubjectProviderElement(super.provider);

  @override
  String get key => (origin as FetchAllSubjectProvider).key;
}

String _$fetchStudentScoreHash() => r'b1c352d7f6beb1769f72997d85b60f244ad15f44';

/// See also [fetchStudentScore].
@ProviderFor(fetchStudentScore)
const fetchStudentScoreProvider = FetchStudentScoreFamily();

/// See also [fetchStudentScore].
class FetchStudentScoreFamily extends Family<AsyncValue<List<Nilai>>> {
  /// See also [fetchStudentScore].
  const FetchStudentScoreFamily();

  /// See also [fetchStudentScore].
  FetchStudentScoreProvider call({
    required String key,
    required String classId,
    required String subjectId,
  }) {
    return FetchStudentScoreProvider(
      key: key,
      classId: classId,
      subjectId: subjectId,
    );
  }

  @override
  FetchStudentScoreProvider getProviderOverride(
    covariant FetchStudentScoreProvider provider,
  ) {
    return call(
      key: provider.key,
      classId: provider.classId,
      subjectId: provider.subjectId,
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
  String? get name => r'fetchStudentScoreProvider';
}

/// See also [fetchStudentScore].
class FetchStudentScoreProvider extends AutoDisposeFutureProvider<List<Nilai>> {
  /// See also [fetchStudentScore].
  FetchStudentScoreProvider({
    required String key,
    required String classId,
    required String subjectId,
  }) : this._internal(
          (ref) => fetchStudentScore(
            ref as FetchStudentScoreRef,
            key: key,
            classId: classId,
            subjectId: subjectId,
          ),
          from: fetchStudentScoreProvider,
          name: r'fetchStudentScoreProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchStudentScoreHash,
          dependencies: FetchStudentScoreFamily._dependencies,
          allTransitiveDependencies:
              FetchStudentScoreFamily._allTransitiveDependencies,
          key: key,
          classId: classId,
          subjectId: subjectId,
        );

  FetchStudentScoreProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.key,
    required this.classId,
    required this.subjectId,
  }) : super.internal();

  final String key;
  final String classId;
  final String subjectId;

  @override
  Override overrideWith(
    FutureOr<List<Nilai>> Function(FetchStudentScoreRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchStudentScoreProvider._internal(
        (ref) => create(ref as FetchStudentScoreRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        key: key,
        classId: classId,
        subjectId: subjectId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Nilai>> createElement() {
    return _FetchStudentScoreProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchStudentScoreProvider &&
        other.key == key &&
        other.classId == classId &&
        other.subjectId == subjectId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);
    hash = _SystemHash.combine(hash, classId.hashCode);
    hash = _SystemHash.combine(hash, subjectId.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchStudentScoreRef on AutoDisposeFutureProviderRef<List<Nilai>> {
  /// The parameter `key` of this provider.
  String get key;

  /// The parameter `classId` of this provider.
  String get classId;

  /// The parameter `subjectId` of this provider.
  String get subjectId;
}

class _FetchStudentScoreProviderElement
    extends AutoDisposeFutureProviderElement<List<Nilai>>
    with FetchStudentScoreRef {
  _FetchStudentScoreProviderElement(super.provider);

  @override
  String get key => (origin as FetchStudentScoreProvider).key;
  @override
  String get classId => (origin as FetchStudentScoreProvider).classId;
  @override
  String get subjectId => (origin as FetchStudentScoreProvider).subjectId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
