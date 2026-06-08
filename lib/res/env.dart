import 'package:envied/envied.dart';

part 'env.g.dart';

/// Holds secrets that must remain obfuscated in the binary.
/// URL configuration has been moved to [FlavorConfig] so it can be
/// switched between local / production at build time via --dart-define.
@Envied(path: '.env')
abstract class Env {
  @EnviedField(varName: 'MAPS_API_KEY', obfuscate: true)
  static final String mapsApiKey = _Env.mapsApiKey;
}
