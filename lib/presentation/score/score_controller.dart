import 'package:rabbaanii_portal/models/score/score.dart';
import 'package:rabbaanii_portal/models/service_injection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/schedule/schedule.dart';

part 'score_controller.g.dart';

@riverpod
Future<List<Jadwal>> fetchAllSubject(
  FetchAllSubjectRef ref, {
  required String key,
}) async {
  final result =
      ref.watch(teachingScheduleServiceProvider).getSubjectStudent(key);
  return result;
}

@riverpod
Future<List<Nilai>> fetchStudentScore(
  FetchStudentScoreRef ref, {
  required String key,
  required String classId,
  required String subjectId,
}) async {
  final result = ref.watch(studentServiceProvider).getStudentScore(
        key,
        classId,
        subjectId,
      );
  return result;
}
