import 'package:rabbaanii_portal/models/service_injection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/message.dart';

part 'forgot_controller.g.dart';

@riverpod
class ForgotController extends _$ForgotController {
  @override
  FutureOr<void> build() async {}

  Future<Message?> forgotPassword({
    required String email,
    required String phoneNumber,
  }) async {
    state = const AsyncLoading();
    final result = await AsyncValue.guard(
      () => ref.watch(userServiceProvider).forgotPassword(
            email,
            phoneNumber,
          ),
    );
    state = result;
    return result.valueOrNull;
  }
}
