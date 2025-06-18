// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'murottal_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchMurottalSurahHash() =>
    r'cccf8db79040a421fab25f21c9fb346681c05b5c';

/// See also [fetchMurottalSurah].
@ProviderFor(fetchMurottalSurah)
final fetchMurottalSurahProvider =
    AutoDisposeFutureProvider<List<Murottal>>.internal(
  fetchMurottalSurah,
  name: r'fetchMurottalSurahProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchMurottalSurahHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchMurottalSurahRef = AutoDisposeFutureProviderRef<List<Murottal>>;
String _$fetchMurottalAyahHash() => r'a489a4564bee92bf7905287a27cabc789a6f2bc7';

/// See also [fetchMurottalAyah].
@ProviderFor(fetchMurottalAyah)
final fetchMurottalAyahProvider =
    AutoDisposeFutureProvider<List<Murottal>>.internal(
  fetchMurottalAyah,
  name: r'fetchMurottalAyahProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchMurottalAyahHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchMurottalAyahRef = AutoDisposeFutureProviderRef<List<Murottal>>;
String _$saveMurottalAyahSelectedHash() =>
    r'632fd07470d8cc0e642b6649f6397fa880eb5ba7';

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

/// See also [saveMurottalAyahSelected].
@ProviderFor(saveMurottalAyahSelected)
const saveMurottalAyahSelectedProvider = SaveMurottalAyahSelectedFamily();

/// See also [saveMurottalAyahSelected].
class SaveMurottalAyahSelectedFamily extends Family<AsyncValue<void>> {
  /// See also [saveMurottalAyahSelected].
  const SaveMurottalAyahSelectedFamily();

  /// See also [saveMurottalAyahSelected].
  SaveMurottalAyahSelectedProvider call(
    Murottal murottal,
  ) {
    return SaveMurottalAyahSelectedProvider(
      murottal,
    );
  }

  @override
  SaveMurottalAyahSelectedProvider getProviderOverride(
    covariant SaveMurottalAyahSelectedProvider provider,
  ) {
    return call(
      provider.murottal,
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
  String? get name => r'saveMurottalAyahSelectedProvider';
}

/// See also [saveMurottalAyahSelected].
class SaveMurottalAyahSelectedProvider extends AutoDisposeFutureProvider<void> {
  /// See also [saveMurottalAyahSelected].
  SaveMurottalAyahSelectedProvider(
    Murottal murottal,
  ) : this._internal(
          (ref) => saveMurottalAyahSelected(
            ref as SaveMurottalAyahSelectedRef,
            murottal,
          ),
          from: saveMurottalAyahSelectedProvider,
          name: r'saveMurottalAyahSelectedProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$saveMurottalAyahSelectedHash,
          dependencies: SaveMurottalAyahSelectedFamily._dependencies,
          allTransitiveDependencies:
              SaveMurottalAyahSelectedFamily._allTransitiveDependencies,
          murottal: murottal,
        );

  SaveMurottalAyahSelectedProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.murottal,
  }) : super.internal();

  final Murottal murottal;

  @override
  Override overrideWith(
    FutureOr<void> Function(SaveMurottalAyahSelectedRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SaveMurottalAyahSelectedProvider._internal(
        (ref) => create(ref as SaveMurottalAyahSelectedRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        murottal: murottal,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _SaveMurottalAyahSelectedProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SaveMurottalAyahSelectedProvider &&
        other.murottal == murottal;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, murottal.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SaveMurottalAyahSelectedRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `murottal` of this provider.
  Murottal get murottal;
}

class _SaveMurottalAyahSelectedProviderElement
    extends AutoDisposeFutureProviderElement<void>
    with SaveMurottalAyahSelectedRef {
  _SaveMurottalAyahSelectedProviderElement(super.provider);

  @override
  Murottal get murottal =>
      (origin as SaveMurottalAyahSelectedProvider).murottal;
}

String _$getMurottalAyahSelectedHash() =>
    r'30877bb9e093947c23c56491b729af301477aaf3';

/// See also [getMurottalAyahSelected].
@ProviderFor(getMurottalAyahSelected)
final getMurottalAyahSelectedProvider =
    AutoDisposeFutureProvider<Murottal?>.internal(
  getMurottalAyahSelected,
  name: r'getMurottalAyahSelectedProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getMurottalAyahSelectedHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetMurottalAyahSelectedRef = AutoDisposeFutureProviderRef<Murottal?>;
String _$fetchMurottalEveryAyahHash() =>
    r'0561acb582803f0f9ce1fbb6e249addaeb2e5b66';

/// See also [fetchMurottalEveryAyah].
@ProviderFor(fetchMurottalEveryAyah)
final fetchMurottalEveryAyahProvider =
    AutoDisposeFutureProvider<List<Murottal>>.internal(
  fetchMurottalEveryAyah,
  name: r'fetchMurottalEveryAyahProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchMurottalEveryAyahHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchMurottalEveryAyahRef
    = AutoDisposeFutureProviderRef<List<Murottal>>;
String _$saveMurottalSelectedHash() =>
    r'15099d8ca76268a7838a00ef8ec58a49533cdd10';

/// See also [saveMurottalSelected].
@ProviderFor(saveMurottalSelected)
const saveMurottalSelectedProvider = SaveMurottalSelectedFamily();

/// See also [saveMurottalSelected].
class SaveMurottalSelectedFamily extends Family<AsyncValue<void>> {
  /// See also [saveMurottalSelected].
  const SaveMurottalSelectedFamily();

  /// See also [saveMurottalSelected].
  SaveMurottalSelectedProvider call(
    Murottal murottal,
  ) {
    return SaveMurottalSelectedProvider(
      murottal,
    );
  }

  @override
  SaveMurottalSelectedProvider getProviderOverride(
    covariant SaveMurottalSelectedProvider provider,
  ) {
    return call(
      provider.murottal,
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
  String? get name => r'saveMurottalSelectedProvider';
}

/// See also [saveMurottalSelected].
class SaveMurottalSelectedProvider extends AutoDisposeFutureProvider<void> {
  /// See also [saveMurottalSelected].
  SaveMurottalSelectedProvider(
    Murottal murottal,
  ) : this._internal(
          (ref) => saveMurottalSelected(
            ref as SaveMurottalSelectedRef,
            murottal,
          ),
          from: saveMurottalSelectedProvider,
          name: r'saveMurottalSelectedProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$saveMurottalSelectedHash,
          dependencies: SaveMurottalSelectedFamily._dependencies,
          allTransitiveDependencies:
              SaveMurottalSelectedFamily._allTransitiveDependencies,
          murottal: murottal,
        );

  SaveMurottalSelectedProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.murottal,
  }) : super.internal();

  final Murottal murottal;

  @override
  Override overrideWith(
    FutureOr<void> Function(SaveMurottalSelectedRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SaveMurottalSelectedProvider._internal(
        (ref) => create(ref as SaveMurottalSelectedRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        murottal: murottal,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _SaveMurottalSelectedProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SaveMurottalSelectedProvider && other.murottal == murottal;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, murottal.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SaveMurottalSelectedRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `murottal` of this provider.
  Murottal get murottal;
}

class _SaveMurottalSelectedProviderElement
    extends AutoDisposeFutureProviderElement<void>
    with SaveMurottalSelectedRef {
  _SaveMurottalSelectedProviderElement(super.provider);

  @override
  Murottal get murottal => (origin as SaveMurottalSelectedProvider).murottal;
}

String _$getMurottalSelectedHash() =>
    r'2337e2e703053a46e9b38e8e8613d8f918240719';

/// See also [getMurottalSelected].
@ProviderFor(getMurottalSelected)
final getMurottalSelectedProvider =
    AutoDisposeFutureProvider<Murottal?>.internal(
  getMurottalSelected,
  name: r'getMurottalSelectedProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getMurottalSelectedHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetMurottalSelectedRef = AutoDisposeFutureProviderRef<Murottal?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
