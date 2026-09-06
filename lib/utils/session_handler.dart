import 'package:flutter/material.dart';
import 'package:rabbaanii_portal/di/providers.dart';
import 'package:rabbaanii_portal/main.dart';
import 'package:rabbaanii_portal/res/strings.dart';
import 'package:rabbaanii_portal/routing/app_router.dart';

/// Global session handler for force logout on session expiry
class SessionHandler {
  static void forceLogout() {
    debugPrint('[SessionHandler] Force logout triggered - session expired');
    
    // Clear all session data
    final prefs = sharedPreferencesProvider.read();
    prefs.remove(AppConstant.keyLoginSession);
    prefs.remove(AppConstant.keyRememberMe);
    prefs.remove(AppConstant.keySavedPhone);
    prefs.remove(AppConstant.keySavedPassword);
    prefs.remove(AppConstant.keyDeviceToken);
    
    // Navigate to login screen using global navigator key
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (globalNavigatorKey.currentState != null) {
        globalNavigatorKey.currentState!.pushNamedAndRemoveUntil(
          '/login',
          (route) => false,
        );
      }
    });
  }
}
