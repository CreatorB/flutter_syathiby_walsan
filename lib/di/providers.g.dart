// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$loggerHash() => r'e313b0897e07acdf3c2033b99dcdeb9a9ef8009b';

/// See also [logger].
@ProviderFor(logger)
final loggerProvider = Provider<Logger>.internal(
  logger,
  name: r'loggerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$loggerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LoggerRef = ProviderRef<Logger>;
String _$loggingInterceptorHash() =>
    r'8e4b00b0a5ff0417eae79f654711008d6e572d5c';

/// See also [loggingInterceptor].
@ProviderFor(loggingInterceptor)
final loggingInterceptorProvider = Provider<LoggingInterceptor>.internal(
  loggingInterceptor,
  name: r'loggingInterceptorProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$loggingInterceptorHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef LoggingInterceptorRef = ProviderRef<LoggingInterceptor>;
String _$getCurrentUserHash() => r'328c5b209a4a6b59ca43e8fffb74dbb5099bb656';

/// See also [getCurrentUser].
@ProviderFor(getCurrentUser)
final getCurrentUserProvider = AutoDisposeProvider<Login?>.internal(
  getCurrentUser,
  name: r'getCurrentUserProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getCurrentUserHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetCurrentUserRef = AutoDisposeProviderRef<Login?>;
String _$dioHash() => r'1f14a2a3119e440001637c0b6195e81a71209659';

/// See also [dio].
@ProviderFor(dio)
final dioProvider = Provider<Dio>.internal(
  dio,
  name: r'dioProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$dioHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef DioRef = ProviderRef<Dio>;
String _$firebaseMessagingHash() => r'b0389720fafcd3af5d5ed65ac5666f6ba9b42050';

/// See also [firebaseMessaging].
@ProviderFor(firebaseMessaging)
final firebaseMessagingProvider = Provider<FirebaseMessaging>.internal(
  firebaseMessaging,
  name: r'firebaseMessagingProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$firebaseMessagingHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef FirebaseMessagingRef = ProviderRef<FirebaseMessaging>;
String _$sharedPreferencesHash() => r'3a9f8412df34c1653d08100c9826aa2125b80f7f';

/// See also [sharedPreferences].
@ProviderFor(sharedPreferences)
final sharedPreferencesProvider = Provider<SharedPreferences>.internal(
  sharedPreferences,
  name: r'sharedPreferencesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$sharedPreferencesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SharedPreferencesRef = ProviderRef<SharedPreferences>;
String _$sharedPreferencesHelperHash() =>
    r'd8c11b551a13d50e111b660cd2f9bea692100aaf';

/// See also [sharedPreferencesHelper].
@ProviderFor(sharedPreferencesHelper)
final sharedPreferencesHelperProvider =
    Provider<SharedPreferencesHelper>.internal(
  sharedPreferencesHelper,
  name: r'sharedPreferencesHelperProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$sharedPreferencesHelperHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SharedPreferencesHelperRef = ProviderRef<SharedPreferencesHelper>;
String _$audioPlayerHash() => r'e54ce7e5ba2cd12db0f50d7caaf550952480c971';

/// See also [audioPlayer].
@ProviderFor(audioPlayer)
final audioPlayerProvider = Provider<AudioPlayer>.internal(
  audioPlayer,
  name: r'audioPlayerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$audioPlayerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AudioPlayerRef = ProviderRef<AudioPlayer>;
String _$parseDateTimeHash() => r'1a4b17de39dc8cf931f4b7f0a92fb599a8e1ffb6';

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

/// See also [parseDateTime].
@ProviderFor(parseDateTime)
const parseDateTimeProvider = ParseDateTimeFamily();

/// See also [parseDateTime].
class ParseDateTimeFamily extends Family<DateTime?> {
  /// See also [parseDateTime].
  const ParseDateTimeFamily();

  /// See also [parseDateTime].
  ParseDateTimeProvider call(
    String dateString,
  ) {
    return ParseDateTimeProvider(
      dateString,
    );
  }

  @override
  ParseDateTimeProvider getProviderOverride(
    covariant ParseDateTimeProvider provider,
  ) {
    return call(
      provider.dateString,
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
  String? get name => r'parseDateTimeProvider';
}

/// See also [parseDateTime].
class ParseDateTimeProvider extends AutoDisposeProvider<DateTime?> {
  /// See also [parseDateTime].
  ParseDateTimeProvider(
    String dateString,
  ) : this._internal(
          (ref) => parseDateTime(
            ref as ParseDateTimeRef,
            dateString,
          ),
          from: parseDateTimeProvider,
          name: r'parseDateTimeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$parseDateTimeHash,
          dependencies: ParseDateTimeFamily._dependencies,
          allTransitiveDependencies:
              ParseDateTimeFamily._allTransitiveDependencies,
          dateString: dateString,
        );

  ParseDateTimeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.dateString,
  }) : super.internal();

  final String dateString;

  @override
  Override overrideWith(
    DateTime? Function(ParseDateTimeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ParseDateTimeProvider._internal(
        (ref) => create(ref as ParseDateTimeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        dateString: dateString,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<DateTime?> createElement() {
    return _ParseDateTimeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ParseDateTimeProvider && other.dateString == dateString;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, dateString.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin ParseDateTimeRef on AutoDisposeProviderRef<DateTime?> {
  /// The parameter `dateString` of this provider.
  String get dateString;
}

class _ParseDateTimeProviderElement
    extends AutoDisposeProviderElement<DateTime?> with ParseDateTimeRef {
  _ParseDateTimeProviderElement(super.provider);

  @override
  String get dateString => (origin as ParseDateTimeProvider).dateString;
}

String _$formatTimeHash() => r'c075998da6ff05c89d2e39ca26768fa8493343b7';

/// See also [formatTime].
@ProviderFor(formatTime)
const formatTimeProvider = FormatTimeFamily();

/// See also [formatTime].
class FormatTimeFamily extends Family<String?> {
  /// See also [formatTime].
  const FormatTimeFamily();

  /// See also [formatTime].
  FormatTimeProvider call(
    String? timeString, {
    String? format,
  }) {
    return FormatTimeProvider(
      timeString,
      format: format,
    );
  }

  @override
  FormatTimeProvider getProviderOverride(
    covariant FormatTimeProvider provider,
  ) {
    return call(
      provider.timeString,
      format: provider.format,
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
  String? get name => r'formatTimeProvider';
}

/// See also [formatTime].
class FormatTimeProvider extends AutoDisposeProvider<String?> {
  /// See also [formatTime].
  FormatTimeProvider(
    String? timeString, {
    String? format,
  }) : this._internal(
          (ref) => formatTime(
            ref as FormatTimeRef,
            timeString,
            format: format,
          ),
          from: formatTimeProvider,
          name: r'formatTimeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$formatTimeHash,
          dependencies: FormatTimeFamily._dependencies,
          allTransitiveDependencies:
              FormatTimeFamily._allTransitiveDependencies,
          timeString: timeString,
          format: format,
        );

  FormatTimeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.timeString,
    required this.format,
  }) : super.internal();

  final String? timeString;
  final String? format;

  @override
  Override overrideWith(
    String? Function(FormatTimeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FormatTimeProvider._internal(
        (ref) => create(ref as FormatTimeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        timeString: timeString,
        format: format,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<String?> createElement() {
    return _FormatTimeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FormatTimeProvider &&
        other.timeString == timeString &&
        other.format == format;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, timeString.hashCode);
    hash = _SystemHash.combine(hash, format.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FormatTimeRef on AutoDisposeProviderRef<String?> {
  /// The parameter `timeString` of this provider.
  String? get timeString;

  /// The parameter `format` of this provider.
  String? get format;
}

class _FormatTimeProviderElement extends AutoDisposeProviderElement<String?>
    with FormatTimeRef {
  _FormatTimeProviderElement(super.provider);

  @override
  String? get timeString => (origin as FormatTimeProvider).timeString;
  @override
  String? get format => (origin as FormatTimeProvider).format;
}

String _$formatCurrencyHash() => r'e5532f9517f506d37c825d9c0e57864ee236e371';

/// See also [formatCurrency].
@ProviderFor(formatCurrency)
const formatCurrencyProvider = FormatCurrencyFamily();

/// See also [formatCurrency].
class FormatCurrencyFamily extends Family<String> {
  /// See also [formatCurrency].
  const FormatCurrencyFamily();

  /// See also [formatCurrency].
  FormatCurrencyProvider call(
    dynamic number,
  ) {
    return FormatCurrencyProvider(
      number,
    );
  }

  @override
  FormatCurrencyProvider getProviderOverride(
    covariant FormatCurrencyProvider provider,
  ) {
    return call(
      provider.number,
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
  String? get name => r'formatCurrencyProvider';
}

/// See also [formatCurrency].
class FormatCurrencyProvider extends AutoDisposeProvider<String> {
  /// See also [formatCurrency].
  FormatCurrencyProvider(
    dynamic number,
  ) : this._internal(
          (ref) => formatCurrency(
            ref as FormatCurrencyRef,
            number,
          ),
          from: formatCurrencyProvider,
          name: r'formatCurrencyProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$formatCurrencyHash,
          dependencies: FormatCurrencyFamily._dependencies,
          allTransitiveDependencies:
              FormatCurrencyFamily._allTransitiveDependencies,
          number: number,
        );

  FormatCurrencyProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.number,
  }) : super.internal();

  final dynamic number;

  @override
  Override overrideWith(
    String Function(FormatCurrencyRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FormatCurrencyProvider._internal(
        (ref) => create(ref as FormatCurrencyRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        number: number,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<String> createElement() {
    return _FormatCurrencyProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FormatCurrencyProvider && other.number == number;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, number.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FormatCurrencyRef on AutoDisposeProviderRef<String> {
  /// The parameter `number` of this provider.
  dynamic get number;
}

class _FormatCurrencyProviderElement extends AutoDisposeProviderElement<String>
    with FormatCurrencyRef {
  _FormatCurrencyProviderElement(super.provider);

  @override
  dynamic get number => (origin as FormatCurrencyProvider).number;
}

String _$formatDateHash() => r'00fa1c1f47a43148922f6f20f9a24ad5dc77f5b5';

/// See also [formatDate].
@ProviderFor(formatDate)
const formatDateProvider = FormatDateFamily();

/// See also [formatDate].
class FormatDateFamily extends Family<String?> {
  /// See also [formatDate].
  const FormatDateFamily();

  /// See also [formatDate].
  FormatDateProvider call(
    String dateString, {
    String? format,
  }) {
    return FormatDateProvider(
      dateString,
      format: format,
    );
  }

  @override
  FormatDateProvider getProviderOverride(
    covariant FormatDateProvider provider,
  ) {
    return call(
      provider.dateString,
      format: provider.format,
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
  String? get name => r'formatDateProvider';
}

/// See also [formatDate].
class FormatDateProvider extends AutoDisposeProvider<String?> {
  /// See also [formatDate].
  FormatDateProvider(
    String dateString, {
    String? format,
  }) : this._internal(
          (ref) => formatDate(
            ref as FormatDateRef,
            dateString,
            format: format,
          ),
          from: formatDateProvider,
          name: r'formatDateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$formatDateHash,
          dependencies: FormatDateFamily._dependencies,
          allTransitiveDependencies:
              FormatDateFamily._allTransitiveDependencies,
          dateString: dateString,
          format: format,
        );

  FormatDateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.dateString,
    required this.format,
  }) : super.internal();

  final String dateString;
  final String? format;

  @override
  Override overrideWith(
    String? Function(FormatDateRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FormatDateProvider._internal(
        (ref) => create(ref as FormatDateRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        dateString: dateString,
        format: format,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<String?> createElement() {
    return _FormatDateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FormatDateProvider &&
        other.dateString == dateString &&
        other.format == format;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, dateString.hashCode);
    hash = _SystemHash.combine(hash, format.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FormatDateRef on AutoDisposeProviderRef<String?> {
  /// The parameter `dateString` of this provider.
  String get dateString;

  /// The parameter `format` of this provider.
  String? get format;
}

class _FormatDateProviderElement extends AutoDisposeProviderElement<String?>
    with FormatDateRef {
  _FormatDateProviderElement(super.provider);

  @override
  String get dateString => (origin as FormatDateProvider).dateString;
  @override
  String? get format => (origin as FormatDateProvider).format;
}

String _$formatTimeFromDateHash() =>
    r'c2374f7abd811818cb1499e3d2203b8c4a71039f';

/// See also [formatTimeFromDate].
@ProviderFor(formatTimeFromDate)
const formatTimeFromDateProvider = FormatTimeFromDateFamily();

/// See also [formatTimeFromDate].
class FormatTimeFromDateFamily extends Family<String?> {
  /// See also [formatTimeFromDate].
  const FormatTimeFromDateFamily();

  /// See also [formatTimeFromDate].
  FormatTimeFromDateProvider call(
    String? dateString,
  ) {
    return FormatTimeFromDateProvider(
      dateString,
    );
  }

  @override
  FormatTimeFromDateProvider getProviderOverride(
    covariant FormatTimeFromDateProvider provider,
  ) {
    return call(
      provider.dateString,
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
  String? get name => r'formatTimeFromDateProvider';
}

/// See also [formatTimeFromDate].
class FormatTimeFromDateProvider extends AutoDisposeProvider<String?> {
  /// See also [formatTimeFromDate].
  FormatTimeFromDateProvider(
    String? dateString,
  ) : this._internal(
          (ref) => formatTimeFromDate(
            ref as FormatTimeFromDateRef,
            dateString,
          ),
          from: formatTimeFromDateProvider,
          name: r'formatTimeFromDateProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$formatTimeFromDateHash,
          dependencies: FormatTimeFromDateFamily._dependencies,
          allTransitiveDependencies:
              FormatTimeFromDateFamily._allTransitiveDependencies,
          dateString: dateString,
        );

  FormatTimeFromDateProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.dateString,
  }) : super.internal();

  final String? dateString;

  @override
  Override overrideWith(
    String? Function(FormatTimeFromDateRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FormatTimeFromDateProvider._internal(
        (ref) => create(ref as FormatTimeFromDateRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        dateString: dateString,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<String?> createElement() {
    return _FormatTimeFromDateProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FormatTimeFromDateProvider &&
        other.dateString == dateString;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, dateString.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FormatTimeFromDateRef on AutoDisposeProviderRef<String?> {
  /// The parameter `dateString` of this provider.
  String? get dateString;
}

class _FormatTimeFromDateProviderElement
    extends AutoDisposeProviderElement<String?> with FormatTimeFromDateRef {
  _FormatTimeFromDateProviderElement(super.provider);

  @override
  String? get dateString => (origin as FormatTimeFromDateProvider).dateString;
}

String _$getCurrentLocationHash() =>
    r'c1f7e07145daa404306731d58d95104f1b886702';

/// See also [getCurrentLocation].
@ProviderFor(getCurrentLocation)
final getCurrentLocationProvider = AutoDisposeFutureProvider<Position>.internal(
  getCurrentLocation,
  name: r'getCurrentLocationProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getCurrentLocationHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetCurrentLocationRef = AutoDisposeFutureProviderRef<Position>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
