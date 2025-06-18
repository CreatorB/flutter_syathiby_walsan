import 'package:rabbaanii_portal/models/allocation/allocation.dart';
import 'package:rabbaanii_portal/models/service_injection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../models/rekap/rekap.dart';

part 'report_controller.g.dart';

@riverpod
Future<List<Allocation>> fetchFinanceReport(
  FetchFinanceReportRef ref, {
  required String key,
}) async {
  final result = ref.watch(allocationServiceProvider).getFinanceReport(key);
  return result;
}
