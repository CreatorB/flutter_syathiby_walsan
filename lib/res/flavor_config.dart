/// Flavor-based configuration for different environments
///
/// Usage with build commands:
/// - PROD : fvm flutter run --dart-define=FLAVOR=prod
/// - LOCAL: fvm flutter run --dart-define=FLAVOR=local
///
/// Build APK:
/// - PROD : fvm flutter build apk --release --dart-define=FLAVOR=prod
/// - LOCAL: fvm flutter build apk --release --dart-define=FLAVOR=local
class FlavorConfig {
  // -------------------------------------------------------------------------
  // Build-time constant – injected via --dart-define=FLAVOR=prod|local
  // Defaults to 'prod' when FLAVOR is not explicitly set.
  // -------------------------------------------------------------------------
  static const String currentFlavor = String.fromEnvironment(
    'FLAVOR',
    defaultValue: 'prod',
  );

  // -------------------------------------------------------------------------
  // URL configuration per environment (compile-time constants)
  // -------------------------------------------------------------------------

  /// Full API endpoint (with /geten/ suffix)
  /// Note: apiUrl and mainUrl are now delegated to EnvironmentConfig
  /// for runtime override support. These constants serve as defaults.
  static String get apiUrl {
    if (currentFlavor == 'local') {
      return 'http://192.168.50.100/aplikasi/geten/';
    }
    return 'https://aplikasi.syathiby.id/geten/';
  }

  /// Base application URL (without /geten/ suffix)
  static String get mainUrl {
    if (currentFlavor == 'local') {
      return 'http://192.168.50.100/aplikasi';
    }
    return 'https://aplikasi.syathiby.id';
  }

  // -------------------------------------------------------------------------
  // Helpers
  // -------------------------------------------------------------------------

  /// Returns `true` when running against a local/dev server.
  static bool get isLocal => currentFlavor == 'local';

  /// Returns `true` when running against the production server.
  static bool get isProd => currentFlavor == 'prod';

  /// Human-readable flavor label (e.g. "LOCAL" or "PROD").
  static String get flavorName => currentFlavor.toUpperCase();
}
