// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hadith_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchBookListHash() => r'e018ffecd21312de528722730f078f12d5662619';

/// See also [fetchBookList].
@ProviderFor(fetchBookList)
final fetchBookListProvider = AutoDisposeFutureProvider<BookResponse>.internal(
  fetchBookList,
  name: r'fetchBookListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchBookListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchBookListRef = AutoDisposeFutureProviderRef<BookResponse>;
String _$fetchHadithListHash() => r'b30159c7d8be7819e2844e3616e7d441a978a9b9';

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

/// See also [fetchHadithList].
@ProviderFor(fetchHadithList)
const fetchHadithListProvider = FetchHadithListFamily();

/// See also [fetchHadithList].
class FetchHadithListFamily extends Family<AsyncValue<HadithResponse>> {
  /// See also [fetchHadithList].
  const FetchHadithListFamily();

  /// See also [fetchHadithList].
  FetchHadithListProvider call({
    required String bookId,
    required String range,
  }) {
    return FetchHadithListProvider(
      bookId: bookId,
      range: range,
    );
  }

  @override
  FetchHadithListProvider getProviderOverride(
    covariant FetchHadithListProvider provider,
  ) {
    return call(
      bookId: provider.bookId,
      range: provider.range,
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
  String? get name => r'fetchHadithListProvider';
}

/// See also [fetchHadithList].
class FetchHadithListProvider
    extends AutoDisposeFutureProvider<HadithResponse> {
  /// See also [fetchHadithList].
  FetchHadithListProvider({
    required String bookId,
    required String range,
  }) : this._internal(
          (ref) => fetchHadithList(
            ref as FetchHadithListRef,
            bookId: bookId,
            range: range,
          ),
          from: fetchHadithListProvider,
          name: r'fetchHadithListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchHadithListHash,
          dependencies: FetchHadithListFamily._dependencies,
          allTransitiveDependencies:
              FetchHadithListFamily._allTransitiveDependencies,
          bookId: bookId,
          range: range,
        );

  FetchHadithListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.bookId,
    required this.range,
  }) : super.internal();

  final String bookId;
  final String range;

  @override
  Override overrideWith(
    FutureOr<HadithResponse> Function(FetchHadithListRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchHadithListProvider._internal(
        (ref) => create(ref as FetchHadithListRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        bookId: bookId,
        range: range,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<HadithResponse> createElement() {
    return _FetchHadithListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchHadithListProvider &&
        other.bookId == bookId &&
        other.range == range;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, bookId.hashCode);
    hash = _SystemHash.combine(hash, range.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchHadithListRef on AutoDisposeFutureProviderRef<HadithResponse> {
  /// The parameter `bookId` of this provider.
  String get bookId;

  /// The parameter `range` of this provider.
  String get range;
}

class _FetchHadithListProviderElement
    extends AutoDisposeFutureProviderElement<HadithResponse>
    with FetchHadithListRef {
  _FetchHadithListProviderElement(super.provider);

  @override
  String get bookId => (origin as FetchHadithListProvider).bookId;
  @override
  String get range => (origin as FetchHadithListProvider).range;
}

String _$fetchHadithDetailHash() => r'7d1ee202b621d71a52114a9b951dd6c32fc52f80';

/// See also [fetchHadithDetail].
@ProviderFor(fetchHadithDetail)
const fetchHadithDetailProvider = FetchHadithDetailFamily();

/// See also [fetchHadithDetail].
class FetchHadithDetailFamily extends Family<AsyncValue<HadithDetailResponse>> {
  /// See also [fetchHadithDetail].
  const FetchHadithDetailFamily();

  /// See also [fetchHadithDetail].
  FetchHadithDetailProvider call({
    required String bookId,
    required int hadithNumber,
  }) {
    return FetchHadithDetailProvider(
      bookId: bookId,
      hadithNumber: hadithNumber,
    );
  }

  @override
  FetchHadithDetailProvider getProviderOverride(
    covariant FetchHadithDetailProvider provider,
  ) {
    return call(
      bookId: provider.bookId,
      hadithNumber: provider.hadithNumber,
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
  String? get name => r'fetchHadithDetailProvider';
}

/// See also [fetchHadithDetail].
class FetchHadithDetailProvider
    extends AutoDisposeFutureProvider<HadithDetailResponse> {
  /// See also [fetchHadithDetail].
  FetchHadithDetailProvider({
    required String bookId,
    required int hadithNumber,
  }) : this._internal(
          (ref) => fetchHadithDetail(
            ref as FetchHadithDetailRef,
            bookId: bookId,
            hadithNumber: hadithNumber,
          ),
          from: fetchHadithDetailProvider,
          name: r'fetchHadithDetailProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchHadithDetailHash,
          dependencies: FetchHadithDetailFamily._dependencies,
          allTransitiveDependencies:
              FetchHadithDetailFamily._allTransitiveDependencies,
          bookId: bookId,
          hadithNumber: hadithNumber,
        );

  FetchHadithDetailProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.bookId,
    required this.hadithNumber,
  }) : super.internal();

  final String bookId;
  final int hadithNumber;

  @override
  Override overrideWith(
    FutureOr<HadithDetailResponse> Function(FetchHadithDetailRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchHadithDetailProvider._internal(
        (ref) => create(ref as FetchHadithDetailRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        bookId: bookId,
        hadithNumber: hadithNumber,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<HadithDetailResponse> createElement() {
    return _FetchHadithDetailProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchHadithDetailProvider &&
        other.bookId == bookId &&
        other.hadithNumber == hadithNumber;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, bookId.hashCode);
    hash = _SystemHash.combine(hash, hadithNumber.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchHadithDetailRef
    on AutoDisposeFutureProviderRef<HadithDetailResponse> {
  /// The parameter `bookId` of this provider.
  String get bookId;

  /// The parameter `hadithNumber` of this provider.
  int get hadithNumber;
}

class _FetchHadithDetailProviderElement
    extends AutoDisposeFutureProviderElement<HadithDetailResponse>
    with FetchHadithDetailRef {
  _FetchHadithDetailProviderElement(super.provider);

  @override
  String get bookId => (origin as FetchHadithDetailProvider).bookId;
  @override
  int get hadithNumber => (origin as FetchHadithDetailProvider).hadithNumber;
}

String _$fetchArbainNawawiHash() => r'82acb87ce4418ac7e8012f355f4e29ff1ce5daf4';

/// See also [fetchArbainNawawi].
@ProviderFor(fetchArbainNawawi)
final fetchArbainNawawiProvider =
    AutoDisposeFutureProvider<BookNawawiResponse>.internal(
  fetchArbainNawawi,
  name: r'fetchArbainNawawiProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$fetchArbainNawawiHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FetchArbainNawawiRef = AutoDisposeFutureProviderRef<BookNawawiResponse>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
