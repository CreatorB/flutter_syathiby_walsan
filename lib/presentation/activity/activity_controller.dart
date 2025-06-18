import 'package:rabbaanii_portal/models/rekap/rekap.dart';
import 'package:rabbaanii_portal/models/service_injection.dart';
import 'package:rabbaanii_portal/models/student/siswa.dart';
import 'package:rabbaanii_portal/models/tahfidz/tahfidz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/schedule/schedule.dart';

part 'activity_controller.g.dart';

@riverpod
Future<List<Jadwal>> fetchSchoolShedule(
  FetchSchoolSheduleRef ref, {
  required String key,
  required String date,
}) async {
  final result =
      ref.watch(scheduleServiceProvider).getSchoolSchedule(key, date);
  return result;
}

@riverpod
Future<List<Tahfidz>> fetchTahfidzHistory(
  FetchTahfidzHistoryRef ref, {
  required String key,
  required String date,
}) async {
  final result = ref.watch(tahfidzServiceProvider).get(key, date);
  return result;
}

@riverpod
Future<List<Rekap>> fetchStudentRecap(
  FetchStudentRecapRef ref, {
  required String key,
  required String date,
}) async {
  final result = ref.watch(studentServiceProvider).getStudentRecap(
        key,
        date,
        date,
      );
  return result;
}

@riverpod
Future<List<Rekap>> fetchStudentActivity(
    FetchStudentActivityRef ref, {
      required String key,
      required String date,
    }) async {
  final result = ref.watch(studentServiceProvider).getStudentActivity(
    key,
    date,
    date,
  );
  return result;
}
