import 'package:rabbaanii_portal/main.dart';
import 'package:rabbaanii_portal/res/flavor_config.dart';

class EnvironmentConfig {
  static const String _keyBaseUrl = 'debug_base_url';
  static const String _keyLinkBase = 'debug_link_base';

  static String get baseUrl {
    final cached = globalPrefs?.getString(_keyBaseUrl);
    if (cached != null && cached.isNotEmpty) {
      // Validate cached URL: only use it if its "environment type"
      // (local vs public) matches the current host environment.
      // Otherwise fall back to the compile-time default to avoid
      // pointing production builds at unreachable local IPs.
      final cachedIsLocal = _isLocalUrl(cached);
      if (cachedIsLocal == isLocalEnvironment) {
        return cached;
      }
    }
    return FlavorConfig.apiUrl;
  }

  static String get linkBase {
    final cached = globalPrefs?.getString(_keyLinkBase);
    if (cached != null && cached.isNotEmpty) {
      final cachedIsLocal = _isLocalUrl(cached);
      if (cachedIsLocal == isLocalEnvironment) {
        return cached;
      }
    }
    return FlavorConfig.mainUrl;
  }

  static bool get isLocalEnvironment {
    // Check the actual host the app is served from (Uri.base) rather than
    // calling baseUrl — this avoids mutual recursion with baseUrl/getter.
    String host;
    try {
      host = Uri.base.host.toLowerCase();
    } catch (_) {
      host = '';
    }

    if (host == 'localhost' || host == '127.0.0.1') return true;
    if (host.startsWith('192.168.')) return true;
    if (host.startsWith('10.')) return true;
    if (RegExp(r'^172\.(1[6-9]|2\d|3[0-1])\.').hasMatch(host)) return true;

    return false;
  }

  static bool _isLocalUrl(String url) {
    final uri = Uri.tryParse(url);
    final host = uri?.host ?? '';
    if (host.isEmpty) return false;
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