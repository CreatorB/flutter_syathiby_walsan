import 'package:rabbaanii_portal/models/allocation/allocation.dart';
import 'package:rabbaanii_portal/models/service_injection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/schedule/schedule.dart';

part 'calendar_school_controller.g.dart';

@riverpod
Future<List<Allocation>> fetchCalendarSchoolOdd(
  FetchCalendarSchoolOddRef ref, {
  required String key,
}) async {
  final result = ref.watch(allocationServiceProvider).getGanjil(key);
  return result;
}

@riverpod
Future<List<Allocation>> fetchCalendarSchoolEven(
  FetchCalendarSchoolEvenRef ref, {
  required String key,
}) async {
  final result = ref.watch(allocationServiceProvider).getGenap(key);
  return result;
}
