import 'package:flutter/cupertino.dart';
import 'package:rabbaanii_portal/di/providers.dart';
import 'package:rabbaanii_portal/models/service_injection.dart';
import 'package:rabbaanii_portal/models/user/login.dart';
import 'package:rabbaanii_portal/res/strings.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_controller.g.dart';

@riverpod
class LoginController extends _$LoginController {
  @override
  FutureOr<void> build() async {}

  Future<Login?> parentLogin({
    required String phoneNumber,
    required String password,
    String? token,
  }) async {
    state = const AsyncLoading();
    final token = await AsyncValue.guard(
          () => ref.read(firebaseMessagingProvider).getToken(),
    );
    final loginResult = await AsyncValue.guard(
      () => ref.watch(userServiceProvider).parentLogin(phoneNumber, password),
    );
    state = loginResult;
    final login = loginResult.valueOrNull?.firstOrNull;
    await _saveSession(login, token.valueOrNull);
    return login;
  }

  Future<void> _saveSession(Login? login, String? token) async {
    if (login == null || token == null) return;
    final pref = ref.read(sharedPreferencesHelperProvider);
    await pref.setObject(AppConstant.keyLoginSession, login);
    await pref.setString(AppConstant.keyDeviceToken, token);
  }
}
