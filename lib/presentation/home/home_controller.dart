import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rabbaanii_portal/di/providers.dart';
import 'package:rabbaanii_portal/models/service_injection.dart';
import 'package:rabbaanii_portal/presentation/home/api_service.dart';
import 'package:rabbaanii_portal/presentation/payment/payment.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/message.dart';
import '../../models/store/store.dart';
import '../../models/user/request_logout.dart';
import '../../models/user/user.dart';
import '../../res/strings.dart';

part 'home_controller.g.dart';

@riverpod
class HomeController extends _$HomeController {
  @override
  FutureOr<void> build() async {
    return;
  }

  Future<Message?> addStudentAccount({
    required String key,
    required String nis,
    required String studentId,
    required String classId,
  }) async {
    state = const AsyncLoading();
    final result = await AsyncValue.guard(
      () => ref
          .watch(permitServiceProvider)
          .addAkunSantri(key, nis, classId, studentId),
    );
    state = result;
    return result.valueOrNull;
  }
}

@riverpod
Future<List<Store>> fetchStudentData(
  FetchStudentDataRef ref, {
  required String key,
}) async {
  final result = await ref.watch(storeServiceProvider).getStudent(key);
  return result;
}

@riverpod
Future<List<Store>> fetchDetailStudent(
  FetchDetailStudentRef ref, {
  required String key,
}) async {
  final result = await ref.watch(storeServiceProvider).getStore(key);
  return result;
}

@riverpod
Future<User> saveTokenToServer(
  SaveTokenToServerRef ref, {
  required String key,
  required String token,
}) async {
  final result = await ref.watch(userServiceProvider).getToken(
        RequestLogout(
          key: key,
          token: token,
        ),
      );
  return result;
}

@riverpod
Future<Map<String, dynamic>?> fetchCheckPayment(
  FetchCheckPaymentRef ref, {
  String? studentId,
}) async {
  if(studentId == null) return null;
  final dio = Dio();
  final pref = ref.watch(sharedPreferencesHelperProvider);
  final response = await dio.get('https://api.rabbaanii.sch.id?studentId=$studentId');
  await pref.setObject(AppConstant.keyPaymentHistory, response.data);
  return response.data;
}
