import 'dart:io';

import 'package:rabbaanii_portal/models/message.dart';
import 'package:rabbaanii_portal/models/service_injection.dart';
import 'package:rabbaanii_portal/models/user/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';


part 'account_controller.g.dart';

@riverpod
class AccountController extends _$AccountController {
  @override
  FutureOr<void> build() async {}

  Future<Message?> updateProfile({
    required String key,
    required String fullName,
    required String email,
    required String phoneNumber,
    required String address,
    File? file,
  }) async {
    state = const AsyncLoading();
    final result = await AsyncValue.guard(
          () =>
          ref.watch(userServiceProvider).updateProfileParent(
            key,
            fullName,
            email,
            phoneNumber,
            address,
            file: file,
          ),
    );
    state = result;
    return result.valueOrNull;
  }

  Future<Message?> changePassword({
    required String key,
    required String oldPassword,
    required String newPassword,
  }) async {
    state = const AsyncLoading();
    final result = await AsyncValue.guard(
          () =>
          ref.watch(userServiceProvider).changePasswordParent(
            key,
            oldPassword,
            newPassword,
          ),
    );
    state = result;
    return result.valueOrNull;
  }
}


@riverpod
Future<User> fetchProfile(
  FetchProfileRef ref, {
  required String key,
}) async {
  final result = await ref.watch(userServiceProvider).getProfileParent(key);
  return result.first;
}

