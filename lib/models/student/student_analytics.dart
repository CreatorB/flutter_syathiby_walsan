import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_analytics.freezed.dart';
part 'student_analytics.g.dart';

@freezed
class StudentAnalyticsSummary with _$StudentAnalyticsSummary {
  const factory StudentAnalyticsSummary({
    @JsonKey(name: 'attendance') AttendanceSummary? attendance,
    @JsonKey(name: 'tahfidz') TahfidzSummary? tahfidz,
    @JsonKey(name: 'violations') ViolationsSummary? violations,
    @JsonKey(name: 'health') HealthSummary? health,
    @JsonKey(name: 'financial') FinancialSummary? financial,
  }) = _StudentAnalyticsSummary;

  factory StudentAnalyticsSummary.fromJson(Map<String, dynamic> json) =>
      _$StudentAnalyticsSummaryFromJson(json);
}

@freezed
class AttendanceSummary with _$AttendanceSummary {
  const factory AttendanceSummary({
    @JsonKey(name: 'total') int? total,
    @JsonKey(name: 'hadir') int? hadir,
    @JsonKey(name: 'sakit') int? sakit,
    @JsonKey(name: 'ijin') int? ijin,
    @JsonKey(name: 'alpha') int? alpha,
    @JsonKey(name: 'persentase_hadir') double? persentaseHadir,
  }) = _AttendanceSummary;

  factory AttendanceSummary.fromJson(Map<String, dynamic> json) =>
      _$AttendanceSummaryFromJson(json);
}

@freezed
class TahfidzSummary with _$TahfidzSummary {
  const factory TahfidzSummary({
    @JsonKey(name: 'total') int? total,
    @JsonKey(name: 'lancar') int? lancar,
    @JsonKey(name: 'miftah') int? miftah,
    @JsonKey(name: 'tidak_lancar') int? tidakLancar,
  }) = _TahfidzSummary;

  factory TahfidzSummary.fromJson(Map<String, dynamic> json) =>
      _$TahfidzSummaryFromJson(json);
}

@freezed
class ViolationsSummary with _$ViolationsSummary {
  const factory ViolationsSummary({
    @JsonKey(name: 'total') int? total,
  }) = _ViolationsSummary;

  factory ViolationsSummary.fromJson(Map<String, dynamic> json) =>
      _$ViolationsSummaryFromJson(json);
}

@freezed
class HealthSummary with _$HealthSummary {
  const factory HealthSummary({
    @JsonKey(name: 'total') int? total,
  }) = _HealthSummary;

  factory HealthSummary.fromJson(Map<String, dynamic> json) =>
      _$HealthSummaryFromJson(json);
}

@freezed
class FinancialSummary with _$FinancialSummary {
  const factory FinancialSummary({
    @JsonKey(name: 'total_setoran') int? totalSetoran,
    @JsonKey(name: 'average_tabungan') int? averageTabungan,
  }) = _FinancialSummary;

  factory FinancialSummary.fromJson(Map<String, dynamic> json) =>
      _$FinancialSummaryFromJson(json);
}

@freezed
class StudentAnalytics with _$StudentAnalytics {
  const factory StudentAnalytics({
    @JsonKey(name: 'id_siswa') int? idSiswa,
    @JsonKey(name: 'nama_lengkap') String? namaLengkap,
    @JsonKey(name: 'nis') String? nis,
    @JsonKey(name: 'kelas') String? kelas,
    @JsonKey(name: 'tingkat') String? tingkat,
    @JsonKey(name: 'attendance') StudentAttendance? attendance,
    @JsonKey(name: 'violations') int? violations,
    @JsonKey(name: 'tahfidz') int? tahfidz,
  }) = _StudentAnalytics;

  factory StudentAnalytics.fromJson(Map<String, dynamic> json) =>
      _$StudentAnalyticsFromJson(json);
}

@freezed
class StudentAttendance with _$StudentAttendance {
  const factory StudentAttendance({
    @JsonKey(name: 'total') int? total,
    @JsonKey(name: 'hadir') int? hadir,
    @JsonKey(name: 'persentase') double? persentase,
  }) = _StudentAttendance;

  factory StudentAttendance.fromJson(Map<String, dynamic> json) =>
      _$StudentAttendanceFromJson(json);
}

@freezed
class AnalyticsFilters with _$AnalyticsFilters {
  const factory AnalyticsFilters({
    @JsonKey(name: 'tanggal_awal') String? tanggalAwal,
    @JsonKey(name: 'tanggal_akhir') String? tanggalAkhir,
    @JsonKey(name: 'id_kelas') int? idKelas,
    @JsonKey(name: 'id_halaqah') String? idHalaqah,
    @JsonKey(name: 'id_tingkat') int? idTingkat,
  }) = _AnalyticsFilters;

  factory AnalyticsFilters.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsFiltersFromJson(json);
}

@freezed
class AnalyticsPagination with _$AnalyticsPagination {
  const factory AnalyticsPagination({
    @JsonKey(name: 'page') int? page,
    @JsonKey(name: 'limit') int? limit,
    @JsonKey(name: 'total') int? total,
    @JsonKey(name: 'total_pages') int? totalPages,
  }) = _AnalyticsPagination;

  factory AnalyticsPagination.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsPaginationFromJson(json);
}

@freezed
class AnalyticsResponse with _$AnalyticsResponse {
  const factory AnalyticsResponse({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'errCode') String? errCode,
    @JsonKey(name: 'msg') String? msg,
    @JsonKey(name: 'summary') StudentAnalyticsSummary? summary,
    @JsonKey(name: 'filters') AnalyticsFilters? filters,
    @JsonKey(name: 'data') List<StudentAnalytics>? data,
    @JsonKey(name: 'pagination') AnalyticsPagination? pagination,
  }) = _AnalyticsResponse;

  factory AnalyticsResponse.fromJson(Map<String, dynamic> json) =>
      _$AnalyticsResponseFromJson(json);
}