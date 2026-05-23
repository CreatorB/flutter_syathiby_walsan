import 'dart:io';

import 'package:rabbaanii_portal/models/message.dart';
import 'package:rabbaanii_portal/models/service_injection.dart';
import 'package:rabbaanii_portal/models/student/siswa.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/violation/violation.dart';

part 'violation_controller.g.dart';

@riverpod
class ViolationController extends _$ViolationController {
  @override
  FutureOr<void> build() async {
    return;
  }

  Future<Message?> addViolation({
    required String key,
    required String violationName,
    required String date,
    required String hour,
    required String location,
    required String studentName,
    required String detail,
    required String type,
    File? image,
  }) async {
    state = const AsyncLoading();
    final result = await AsyncValue.guard(
      () => ref.read(violationServiceProvider).add(
            key,
            violationName,
            date,
            hour,
            location,
            studentName,
            detail,
            type,
            img: image,
          ),
    );
    state = result;
    return result.valueOrNull;
  }

  Future<Message?> approveReportViolation({
    required String key,
    required String violationId,
    required String message,
    required String reason,
  }) async {
    state = const AsyncLoading();
    final result = await AsyncValue.guard(
      () => ref
          .read(violationServiceProvider)
          .aproveLaporanSantri(key, violationId, message, reason),
    );
    state = result;
    return result.valueOrNull;
  }

  Future<Message?> updateDateViolation({
    required String key,
    required String violationId,
    required String date,
  }) async {
    state = const AsyncLoading();
    final result = await AsyncValue.guard(
      () => ref
          .read(violationServiceProvider)
          .updateDatePelanggaran(key, violationId, date),
    );
    state = result;
    return result.valueOrNull;
  }
}

@riverpod
Future<List<Pelanggaran>> fetchListViolation(
  FetchListViolationRef ref, {
  required String key,
  required int page,
}) async {
  final result = await ref.read(violationServiceProvider).get(key, page);
  return result;
}

@riverpod
Future<List<Pelanggaran>> fetchViolationType(
  FetchViolationTypeRef ref, {
  required String key,
  required String type,
}) async {
  final result = await ref.read(violationServiceProvider).type(key, type);
  return result;
}

@riverpod
Future<List<Siswa>> fetchSearchStudent(
  FetchSearchStudentRef ref, {
  required String key,
  required String query,
}) async {
  final result =
      await ref.read(studentServiceProvider).searchSiswa(key, query);
  return result;
}

@riverpod
Future<List<Pelanggaran>> fetchDetailViolation(
  FetchDetailViolationRef ref, {
  required String key,
  required String violationId,
}) async {
  final result = await ref
      .read(violationServiceProvider)
      .getLaporanSantri(key, violationId);
  return result;
}
