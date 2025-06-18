import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/event/event.dart';
import '../../models/hostel/hostel.dart';
import '../../models/pickup/pickup.dart';
import '../../models/service_injection.dart';

part 'holiday_controller.g.dart';

@riverpod
Future<List<Event>> fetchAllEvent(
  FetchAllEventRef ref, {
  required String key,
  required int page,
}) async {
  final result = ref.watch(eventServiceProvider).gets(key, page);
  return result;
}

@riverpod
Future<List<Penjemputan>> fetchStudentPickup(
  FetchStudentPickupRef ref, {
  required String key,
  required String id,
  required int page,
}) async {
  final result = await ref.watch(pickupServiceProvider).gets(
        key,
        id,
        page,
      );
  return result;
}

@riverpod
Future<List<Asrama>> fetchAllHostelAttendance(
  FetchAllHostelAttendanceRef ref, {
  required String key,
}) async {
  final result = ref.watch(hostelServiceProvider).getGedungAsrama(key);
  return result;
}
