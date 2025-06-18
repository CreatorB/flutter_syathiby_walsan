import 'dart:io';

import 'package:rabbaanii_portal/models/message.dart';
import 'package:rabbaanii_portal/models/permit/permit.dart';
import 'package:rabbaanii_portal/models/service_injection.dart';
import 'package:rabbaanii_portal/models/student/siswa.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'permit_controller.g.dart';

@riverpod
class PermitController extends _$PermitController {
  @override
  FutureOr<void> build() async {
    return;
  }

  Future<Message?> addPermit({
    required String key,
    required String typeId,
    required String permitName,
    required String date,
    required String day,
    required String nis,
    required String classId,
    required String detail,
    required String studentId,
    File? image,
  }) async {
    state = const AsyncLoading();
    final result = await AsyncValue.guard(
      () => ref.watch(permitServiceProvider).addSantri(
            key,
            typeId,
            permitName,
            date,
            day,
            nis,
            classId,
            detail,
            studentId,
            img: image,
          ),
    );
    state = result;
    return result.valueOrNull;
  }
}

@riverpod
Future<List<Siswa>> fetchGetStudentParent(
  FetchGetStudentParentRef ref, {
  required String key,
}) async {
  final result = await ref.watch(studentServiceProvider).getStudentParent(key);
  return result;
}

@riverpod
Future<List<Permit>> fetchPermitType(
  FetchPermitTypeRef ref, {
  required String key,
  required String type,
}) async {
  final result = await ref.watch(permitServiceProvider).type(key, type);
  return result;
}

@riverpod
Future<List<Permit>> fetchPermitDetail(
  FetchPermitDetailRef ref, {
  required String key,
  required String id,
}) async {
  final result = await ref.watch(permitServiceProvider).getPermitSantri(key, id);
  return result;
}
