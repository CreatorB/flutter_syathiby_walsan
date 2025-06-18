import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper {
  final SharedPreferences _preferences;

  SharedPreferencesHelper(this._preferences);

  Future<void> setObject<T>(String key, T value) async {
    String jsonString = jsonEncode(value);
    await _preferences.setString(key, jsonString);
  }

  T? getObject<T>(String key) {
    String? jsonString = _preferences.getString(key);
    if (jsonString != null) {
      return jsonDecode(jsonString) as T;
    }
    return null;
  }

  Future<void> setString(String key, String value) async {
    await _preferences.setString(key, value);
  }

  String? getString(String key) {
    return _preferences.getString(key);
  }

  Future<void> remove(String key) async {
    await _preferences.remove(key);
  }
}
