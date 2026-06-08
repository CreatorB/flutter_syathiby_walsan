import 'dart:ui';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:rabbaanii_portal/app.dart';
import 'package:rabbaanii_portal/utils/firebase_options.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'di/providers.dart';

SharedPreferences? globalPrefs;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await _initFirebase();
  globalPrefs = await SharedPreferences.getInstance();
  final currentTheme = await AdaptiveTheme.getThemeMode();
  final container = await _bootstrap(skipAudio: true);

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: MyApp(
        adaptiveThemeMode: currentTheme,
      ),
    ),
  );
}

Future<void> _initFirebase() async {
  try {
    if (Firebase.apps.isEmpty) {
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
    }
    
    FlutterError.onError = (errorDetails) {
      FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
    };
    
    PlatformDispatcher.instance.onError = (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      return true;
    };
  } catch (e) {
    debugPrint('Error initializing Firebase: $e');
  }
}

Future<ProviderContainer> _bootstrap({bool skipAudio = false}) async {
  try {
    final prefs = await SharedPreferences.getInstance();
    final container = ProviderContainer(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(prefs),
      ],
    );
    
    if (!skipAudio) {
      await JustAudioBackground.init(
        androidNotificationChannelId: 'com.muslimdeveloper.edusystem.audio',
        androidNotificationChannelName: 'Audio playback',
        androidNotificationOngoing: true,
      ).timeout(
        const Duration(seconds: 10),
        onTimeout: () {
          debugPrint('JustAudioBackground init timeout');
        },
      );
    }
    
    return container;
  } catch (e) {
    debugPrint('Error during bootstrap: $e');
    rethrow;
  }
}
