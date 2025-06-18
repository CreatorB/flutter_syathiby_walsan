import 'package:rabbaanii_portal/models/service_injection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/health/health.dart';

part 'student_health_controller.g.dart';

@riverpod
Future<List<Kesehatan>> fetchStudentHealthDetail(
  FetchStudentHealthDetailRef ref, {
  required String key,
  required String id,
}) async {
  final result = ref.watch(healthServiceProvider).getLaporanSantri(
        key,
        id,
      );
  return result;
}

@riverpod
Future<List<Kesehatan>> fetchStudentHealthRecap(
  FetchStudentHealthRecapRef ref, {
  required String key,
}) async {
  final result = ref.watch(healthServiceProvider).getKesehatan(key);
  return result;
}
