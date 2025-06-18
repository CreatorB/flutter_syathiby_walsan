// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quran_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchSurahListHash() => r'f67e89b0d00bf4777e2f22f44d18fb08b48a414f';

/// See also [fetchSurahList].
@ProviderFor(fetchSurahList)
final fetchSurahListProvider = AutoDisposeFutureProvider<List<Surah>>.internal(
  fetchSurahList,
  name: r'fetchSurahListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchSurahListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchSurahListRef = AutoDisposeFutureProviderRef<List<Surah>>;
String _$fetchAyahListHash() => r'e5d7f735672ba5391624f85b529aa0ec81e2fcc0';

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

/// See also [fetchAyahList].
@ProviderFor(fetchAyahList)
const fetchAyahListProvider = FetchAyahListFamily();

/// See also [fetchAyahList].
class FetchAyahListFamily extends Family<AsyncValue<AyahResponse>> {
  /// See also [fetchAyahList].
  const FetchAyahListFamily();

  /// See also [fetchAyahList].
  FetchAyahListProvider call({
    required int surahNumber,
  }) {
    return FetchAyahListProvider(
      surahNumber: surahNumber,
    );
  }

  @override
  FetchAyahListProvider getProviderOverride(
    covariant FetchAyahListProvider provider,
  ) {
    return call(
      surahNumber: provider.surahNumber,
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
  String? get name => r'fetchAyahListProvider';
}

/// See also [fetchAyahList].
class FetchAyahListProvider extends AutoDisposeFutureProvider<AyahResponse> {
  /// See also [fetchAyahList].
  FetchAyahListProvider({
    required int surahNumber,
  }) : this._internal(
          (ref) => fetchAyahList(
            ref as FetchAyahListRef,
            surahNumber: surahNumber,
          ),
          from: fetchAyahListProvider,
          name: r'fetchAyahListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchAyahListHash,
          dependencies: FetchAyahListFamily._dependencies,
          allTransitiveDependencies:
              FetchAyahListFamily._allTransitiveDependencies,
          surahNumber: surahNumber,
        );

  FetchAyahListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.surahNumber,
  }) : super.internal();

  final int surahNumber;

  @override
  Override overrideWith(
    FutureOr<AyahResponse> Function(FetchAyahListRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchAyahListProvider._internal(
        (ref) => create(ref as FetchAyahListRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        surahNumber: surahNumber,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<AyahResponse> createElement() {
    return _FetchAyahListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchAyahListProvider && other.surahNumber == surahNumber;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, surahNumber.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchAyahListRef on AutoDisposeFutureProviderRef<AyahResponse> {
  /// The parameter `surahNumber` of this provider.
  int get surahNumber;
}

class _FetchAyahListProviderElement
    extends AutoDisposeFutureProviderElement<AyahResponse>
    with FetchAyahListRef {
  _FetchAyahListProviderElement(super.provider);

  @override
  int get surahNumber => (origin as FetchAyahListProvider).surahNumber;
}

String _$getLastReadQuranHash() => r'969372ac6cf1381a6a1ecd2227ef86c31232f312';

/// See also [getLastReadQuran].
@ProviderFor(getLastReadQuran)
final getLastReadQuranProvider = AutoDisposeFutureProvider<Quran?>.internal(
  getLastReadQuran,
  name: r'getLastReadQuranProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getLastReadQuranHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetLastReadQuranRef = AutoDisposeFutureProviderRef<Quran?>;
String _$getBookmarkQuranHash() => r'52c579adbfc6783de62e2b54c8f94c2d3123b041';

/// See also [getBookmarkQuran].
@ProviderFor(getBookmarkQuran)
final getBookmarkQuranProvider = AutoDisposeFutureProvider<Quran?>.internal(
  getBookmarkQuran,
  name: r'getBookmarkQuranProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getBookmarkQuranHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetBookmarkQuranRef = AutoDisposeFutureProviderRef<Quran?>;
String _$saveLastReadQuranHash() => r'b3879a1f966b0eca3ecb963a51099a8bf13492b5';

/// See also [saveLastReadQuran].
@ProviderFor(saveLastReadQuran)
const saveLastReadQuranProvider = SaveLastReadQuranFamily();

/// See also [saveLastReadQuran].
class SaveLastReadQuranFamily extends Family<AsyncValue<void>> {
  /// See also [saveLastReadQuran].
  const SaveLastReadQuranFamily();

  /// See also [saveLastReadQuran].
  SaveLastReadQuranProvider call({
    required Quran quran,
  }) {
    return SaveLastReadQuranProvider(
      quran: quran,
    );
  }

  @override
  SaveLastReadQuranProvider getProviderOverride(
    covariant SaveLastReadQuranProvider provider,
  ) {
    return call(
      quran: provider.quran,
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
  String? get name => r'saveLastReadQuranProvider';
}

/// See also [saveLastReadQuran].
class SaveLastReadQuranProvider extends AutoDisposeFutureProvider<void> {
  /// See also [saveLastReadQuran].
  SaveLastReadQuranProvider({
    required Quran quran,
  }) : this._internal(
          (ref) => saveLastReadQuran(
            ref as SaveLastReadQuranRef,
            quran: quran,
          ),
          from: saveLastReadQuranProvider,
          name: r'saveLastReadQuranProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$saveLastReadQuranHash,
          dependencies: SaveLastReadQuranFamily._dependencies,
          allTransitiveDependencies:
              SaveLastReadQuranFamily._allTransitiveDependencies,
          quran: quran,
        );

  SaveLastReadQuranProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.quran,
  }) : super.internal();

  final Quran quran;

  @override
  Override overrideWith(
    FutureOr<void> Function(SaveLastReadQuranRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SaveLastReadQuranProvider._internal(
        (ref) => create(ref as SaveLastReadQuranRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        quran: quran,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _SaveLastReadQuranProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SaveLastReadQuranProvider && other.quran == quran;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, quran.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SaveLastReadQuranRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `quran` of this provider.
  Quran get quran;
}

class _SaveLastReadQuranProviderElement
    extends AutoDisposeFutureProviderElement<void> with SaveLastReadQuranRef {
  _SaveLastReadQuranProviderElement(super.provider);

  @override
  Quran get quran => (origin as SaveLastReadQuranProvider).quran;
}

String _$saveBookmarkQuranHash() => r'8d87232a0ab1fc9f262cde5c4ab8f394616e9d87';

/// See also [saveBookmarkQuran].
@ProviderFor(saveBookmarkQuran)
const saveBookmarkQuranProvider = SaveBookmarkQuranFamily();

/// See also [saveBookmarkQuran].
class SaveBookmarkQuranFamily extends Family<AsyncValue<void>> {
  /// See also [saveBookmarkQuran].
  const SaveBookmarkQuranFamily();

  /// See also [saveBookmarkQuran].
  SaveBookmarkQuranProvider call({
    required Quran quran,
  }) {
    return SaveBookmarkQuranProvider(
      quran: quran,
    );
  }

  @override
  SaveBookmarkQuranProvider getProviderOverride(
    covariant SaveBookmarkQuranProvider provider,
  ) {
    return call(
      quran: provider.quran,
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
  String? get name => r'saveBookmarkQuranProvider';
}

/// See also [saveBookmarkQuran].
class SaveBookmarkQuranProvider extends AutoDisposeFutureProvider<void> {
  /// See also [saveBookmarkQuran].
  SaveBookmarkQuranProvider({
    required Quran quran,
  }) : this._internal(
          (ref) => saveBookmarkQuran(
            ref as SaveBookmarkQuranRef,
            quran: quran,
          ),
          from: saveBookmarkQuranProvider,
          name: r'saveBookmarkQuranProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$saveBookmarkQuranHash,
          dependencies: SaveBookmarkQuranFamily._dependencies,
          allTransitiveDependencies:
              SaveBookmarkQuranFamily._allTransitiveDependencies,
          quran: quran,
        );

  SaveBookmarkQuranProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.quran,
  }) : super.internal();

  final Quran quran;

  @override
  Override overrideWith(
    FutureOr<void> Function(SaveBookmarkQuranRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SaveBookmarkQuranProvider._internal(
        (ref) => create(ref as SaveBookmarkQuranRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        quran: quran,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _SaveBookmarkQuranProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SaveBookmarkQuranProvider && other.quran == quran;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, quran.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SaveBookmarkQuranRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `quran` of this provider.
  Quran get quran;
}

class _SaveBookmarkQuranProviderElement
    extends AutoDisposeFutureProviderElement<void> with SaveBookmarkQuranRef {
  _SaveBookmarkQuranProviderElement(super.provider);

  @override
  Quran get quran => (origin as SaveBookmarkQuranProvider).quran;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
