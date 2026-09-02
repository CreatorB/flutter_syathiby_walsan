import 'package:rabbaanii_portal/di/providers.dart';
import 'package:rabbaanii_portal/models/service_injection.dart';
import 'package:rabbaanii_portal/models/user/login.dart';
import 'package:rabbaanii_portal/res/strings.dart';
import 'package:rabbaanii_portal/routing/app_router.dart';
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
    bool rememberMe = false,
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
    await _saveCredentials(phoneNumber, password, rememberMe);
    return login;
  }

  Future<void> _saveSession(Login? login, String? token) async {
    if (login == null) return;
    final pref = ref.read(sharedPreferencesHelperProvider);
    await pref.setObject(AppConstant.keyLoginSession, login);
    // Always write device-token slot; coalesce to empty string so
    // shared_preferences.setString never throws ArgumentError on null (web case).
    await pref.setString(AppConstant.keyDeviceToken, token ?? '');
    ref.invalidate(getCurrentUserProvider);
    ref.invalidate(goRouterProvider);
  }

  Future<void> _saveCredentials(String phone, String password, bool rememberMe) async {
    final pref = ref.read(sharedPreferencesHelperProvider);
    if (rememberMe) {
      await pref.setString(AppConstant.keyRememberMe, 'true');
      await pref.setString(AppConstant.keySavedPhone, phone);
      await pref.setString(AppConstant.keySavedPassword, password);
    } else {
      await pref.remove(AppConstant.keyRememberMe);
      await pref.remove(AppConstant.keySavedPhone);
      await pref.remove(AppConstant.keySavedPassword);
    }
  }
}
