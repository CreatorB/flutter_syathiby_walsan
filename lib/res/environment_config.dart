import 'package:rabbaanii_portal/main.dart';
import 'package:rabbaanii_portal/res/flavor_config.dart';

class EnvironmentConfig {
  static const String _keyBaseUrl = 'debug_base_url';
  static const String _keyLinkBase = 'debug_link_base';

  static String get baseUrl {
    return globalPrefs?.getString(_keyBaseUrl) ?? FlavorConfig.apiUrl;
  }

  static String get linkBase {
    return globalPrefs?.getString(_keyLinkBase) ?? FlavorConfig.mainUrl;
  }

  static bool get isLocalEnvironment {
    final normalizedUrl = baseUrl.toLowerCase();
    final uri = Uri.tryParse(normalizedUrl);
    final host = uri?.host ?? normalizedUrl;

    if (host == 'localhost' || host == '127.0.0.1') return true;
    if (host.startsWith('192.168.')) return true;
    if (host.startsWith('10.')) return true;
    if (RegExp(r'^172\.(1[6-9]|2\d|3[0-1])\.').hasMatch(host)) return true;

    return false;
  }

  static String get environmentLabel => isLocalEnvironment ? 'LOCAL' : 'PROD';

  static String get flavorName => FlavorConfig.flavorName;

  static Future<void> updateConfig({
    required String? baseUrl,
    required String? linkBase,
  }) async {
    if (globalPrefs == null) return;

    if (baseUrl != null && baseUrl.isNotEmpty) {
      await globalPrefs!.setString(_keyBaseUrl, baseUrl);
    } else {
      await globalPrefs!.remove(_keyBaseUrl);
    }

    if (linkBase != null && linkBase.isNotEmpty) {
      await globalPrefs!.setString(_keyLinkBase, linkBase);
    } else {
      await globalPrefs!.remove(_keyLinkBase);
    }
  }

  static Future<void> reset() async {
    if (globalPrefs == null) return;
    await globalPrefs!.remove(_keyBaseUrl);
    await globalPrefs!.remove(_keyLinkBase);
  }
}