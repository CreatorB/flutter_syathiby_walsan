// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prayer_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchPrayerTimeHash() => r'3eff6e8a774331b9b6e296791df4eff5f4116c8a';

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

/// See also [fetchPrayerTime].
@ProviderFor(fetchPrayerTime)
const fetchPrayerTimeProvider = FetchPrayerTimeFamily();

/// See also [fetchPrayerTime].
class FetchPrayerTimeFamily extends Family<AsyncValue<PrayerTime?>> {
  /// See also [fetchPrayerTime].
  const FetchPrayerTimeFamily();

  /// See also [fetchPrayerTime].
  FetchPrayerTimeProvider call({
    double? latitude,
    double? longitude,
  }) {
    return FetchPrayerTimeProvider(
      latitude: latitude,
      longitude: longitude,
    );
  }

  @override
  FetchPrayerTimeProvider getProviderOverride(
    covariant FetchPrayerTimeProvider provider,
  ) {
    return call(
      latitude: provider.latitude,
      longitude: provider.longitude,
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
  String? get name => r'fetchPrayerTimeProvider';
}

/// See also [fetchPrayerTime].
class FetchPrayerTimeProvider extends AutoDisposeFutureProvider<PrayerTime?> {
  /// See also [fetchPrayerTime].
  FetchPrayerTimeProvider({
    double? latitude,
    double? longitude,
  }) : this._internal(
          (ref) => fetchPrayerTime(
            ref as FetchPrayerTimeRef,
            latitude: latitude,
            longitude: longitude,
          ),
          from: fetchPrayerTimeProvider,
          name: r'fetchPrayerTimeProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchPrayerTimeHash,
          dependencies: FetchPrayerTimeFamily._dependencies,
          allTransitiveDependencies:
              FetchPrayerTimeFamily._allTransitiveDependencies,
          latitude: latitude,
          longitude: longitude,
        );

  FetchPrayerTimeProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.latitude,
    required this.longitude,
  }) : super.internal();

  final double? latitude;
  final double? longitude;

  @override
  Override overrideWith(
    FutureOr<PrayerTime?> Function(FetchPrayerTimeRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchPrayerTimeProvider._internal(
        (ref) => create(ref as FetchPrayerTimeRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        latitude: latitude,
        longitude: longitude,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<PrayerTime?> createElement() {
    return _FetchPrayerTimeProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchPrayerTimeProvider &&
        other.latitude == latitude &&
        other.longitude == longitude;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, latitude.hashCode);
    hash = _SystemHash.combine(hash, longitude.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin FetchPrayerTimeRef on AutoDisposeFutureProviderRef<PrayerTime?> {
  /// The parameter `latitude` of this provider.
  double? get latitude;

  /// The parameter `longitude` of this provider.
  double? get longitude;
}

class _FetchPrayerTimeProviderElement
    extends AutoDisposeFutureProviderElement<PrayerTime?>
    with FetchPrayerTimeRef {
  _FetchPrayerTimeProviderElement(super.provider);

  @override
  double? get latitude => (origin as FetchPrayerTimeProvider).latitude;
  @override
  double? get longitude => (origin as FetchPrayerTimeProvider).longitude;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
