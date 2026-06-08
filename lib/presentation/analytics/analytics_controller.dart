import 'package:rabbaanii_portal/models/service_injection.dart';
import 'package:rabbaanii_portal/models/student/analytics_service.dart';
import 'package:rabbaanii_portal/models/student/student_analytics.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'analytics_controller.g.dart';

@riverpod
Future<AnalyticsResponse> fetchSiswaAnalytics(
  FetchSiswaAnalyticsRef ref, {
  required String key,
  int? idSiswa,
  int? idKelas,
  String? idHalaqah,
  int? idTingkat,
  String? tanggalAwal,
  String? tanggalAkhir,
  int? page,
}) async {
  final result = await ref.watch(analyticsServiceProvider).getSiswaAnalytics(
        key: key,
        idSiswa: idSiswa,
        idKelas: idKelas,
        idHalaqah: idHalaqah,
        idTingkat: idTingkat,
        tanggalAwal: tanggalAwal,
        tanggalAkhir: tanggalAkhir,
        page: page,
      );
  return result;
}

@riverpod
Future<WaliAnalyticsResponse> fetchWaliAnalytics(
  FetchWaliAnalyticsRef ref, {
  required String key,
  String? noWali,
  String? tanggalAwal,
  String? tanggalAkhir,
}) async {
  final result = await ref.watch(analyticsServiceProvider).getWaliAnalytics(
        key: key,
        noWali: noWali,
        tanggalAwal: tanggalAwal,
        tanggalAkhir: tanggalAkhir,
      );
  return result;
}

@riverpod
Future<List<int>> exportPdf(
  ExportPdfRef ref, {
  required String key,
  int? idSiswa,
  String? format,
  String? tanggalAwal,
  String? tanggalAkhir,
}) async {
  final result = await ref.watch(analyticsServiceProvider).exportPdf(
        key: key,
        idSiswa: idSiswa,
        format: format,
        tanggalAwal: tanggalAwal,
        tanggalAkhir: tanggalAkhir,
      );
  return result;
}

@riverpod
Future<List<int>> exportExcel(
  ExportExcelRef ref, {
  required String key,
  int? idKelas,
  String? idHalaqah,
  int? idTingkat,
  String? tanggalAwal,
  String? tanggalAkhir,
  String? type,
}) async {
  final result = await ref.watch(analyticsServiceProvider).exportExcel(
        key: key,
        idKelas: idKelas,
        idHalaqah: idHalaqah,
        idTingkat: idTingkat,
        tanggalAwal: tanggalAwal,
        tanggalAkhir: tanggalAkhir,
        type: type,
      );
  return result;
}