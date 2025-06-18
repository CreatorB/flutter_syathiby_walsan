// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendar_school_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchCalendarSchoolOddHash() =>
    r'94df278ca50fa25554be5af7e52d7f60116ca3c3';

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

/// See also [fetchCalendarSchoolOdd].
@ProviderFor(fetchCalendarSchoolOdd)
const fetchCalendarSchoolOddProvider = FetchCalendarSchoolOddFamily();

/// See also [fetchCalendarSchoolOdd].
class FetchCalendarSchoolOddFamily
    extends Family<AsyncValue<List<Allocation>>> {
  /// See also [fetchCalendarSchoolOdd].
  const FetchCalendarSchoolOddFamily();

  /// See also [fetchCalendarSchoolOdd].
  FetchCalendarSchoolOddProvider call({
    required String key,
  }) {
    return FetchCalendarSchoolOddProvider(
      key: key,
    );
  }

  @override
  FetchCalendarSchoolOddProvider getProviderOverride(
    covariant FetchCalendarSchoolOddProvider provider,
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
  String? get name => r'fetchCalendarSchoolOddProvider';
}

/// See also [fetchCalendarSchoolOdd].
class FetchCalendarSchoolOddProvider
    extends AutoDisposeFutureProvider<List<Allocation>> {
  /// See also [fetchCalendarSchoolOdd].
  FetchCalendarSchoolOddProvider({
    required String key,
  }) : this._internal(
          (ref) => fetchCalendarSchoolOdd(
            ref as FetchCalendarSchoolOddRef,
            key: key,
          ),
          from: fetchCalendarSchoolOddProvider,
          name: r'fetchCalendarSchoolOddProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchCalendarSchoolOddHash,
          dependencies: FetchCalendarSchoolOddFamily._dependencies,
          allTransitiveDependencies:
              FetchCalendarSchoolOddFamily._allTransitiveDependencies,
          key: key,
        );

  FetchCalendarSchoolOddProvider._internal(
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
    FutureOr<List<Allocation>> Function(FetchCalendarSchoolOddRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchCalendarSchoolOddProvider._internal(
        (ref) => create(ref as FetchCalendarSchoolOddRef),
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
  AutoDisposeFutureProviderElement<List<Allocation>> createElement() {
    return _FetchCalendarSchoolOddProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchCalendarSchoolOddProvider && other.key == key;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchCalendarSchoolOddRef
    on AutoDisposeFutureProviderRef<List<Allocation>> {
  /// The parameter `key` of this provider.
  String get key;
}

class _FetchCalendarSchoolOddProviderElement
    extends AutoDisposeFutureProviderElement<List<Allocation>>
    with FetchCalendarSchoolOddRef {
  _FetchCalendarSchoolOddProviderElement(super.provider);

  @override
  String get key => (origin as FetchCalendarSchoolOddProvider).key;
}

String _$fetchCalendarSchoolEvenHash() =>
    r'4ea0b89c0df3a3f0558f9ab1b779c3704efeb9da';

/// See also [fetchCalendarSchoolEven].
@ProviderFor(fetchCalendarSchoolEven)
const fetchCalendarSchoolEvenProvider = FetchCalendarSchoolEvenFamily();

/// See also [fetchCalendarSchoolEven].
class FetchCalendarSchoolEvenFamily
    extends Family<AsyncValue<List<Allocation>>> {
  /// See also [fetchCalendarSchoolEven].
  const FetchCalendarSchoolEvenFamily();

  /// See also [fetchCalendarSchoolEven].
  FetchCalendarSchoolEvenProvider call({
    required String key,
  }) {
    return FetchCalendarSchoolEvenProvider(
      key: key,
    );
  }

  @override
  FetchCalendarSchoolEvenProvider getProviderOverride(
    covariant FetchCalendarSchoolEvenProvider provider,
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
  String? get name => r'fetchCalendarSchoolEvenProvider';
}

/// See also [fetchCalendarSchoolEven].
class FetchCalendarSchoolEvenProvider
    extends AutoDisposeFutureProvider<List<Allocation>> {
  /// See also [fetchCalendarSchoolEven].
  FetchCalendarSchoolEvenProvider({
    required String key,
  }) : this._internal(
          (ref) => fetchCalendarSchoolEven(
            ref as FetchCalendarSchoolEvenRef,
            key: key,
          ),
          from: fetchCalendarSchoolEvenProvider,
          name: r'fetchCalendarSchoolEvenProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchCalendarSchoolEvenHash,
          dependencies: FetchCalendarSchoolEvenFamily._dependencies,
          allTransitiveDependencies:
              FetchCalendarSchoolEvenFamily._allTransitiveDependencies,
          key: key,
        );

  FetchCalendarSchoolEvenProvider._internal(
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
    FutureOr<List<Allocation>> Function(FetchCalendarSchoolEvenRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchCalendarSchoolEvenProvider._internal(
        (ref) => create(ref as FetchCalendarSchoolEvenRef),
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
  AutoDisposeFutureProviderElement<List<Allocation>> createElement() {
    return _FetchCalendarSchoolEvenProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchCalendarSchoolEvenProvider && other.key == key;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, key.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchCalendarSchoolEvenRef
    on AutoDisposeFutureProviderRef<List<Allocation>> {
  /// The parameter `key` of this provider.
  String get key;
}

class _FetchCalendarSchoolEvenProviderElement
    extends AutoDisposeFutureProviderElement<List<Allocation>>
    with FetchCalendarSchoolEvenRef {
  _FetchCalendarSchoolEvenProviderElement(super.provider);

  @override
  String get key => (origin as FetchCalendarSchoolEvenProvider).key;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
