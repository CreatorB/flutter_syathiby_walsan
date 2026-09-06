import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rabbaanii_portal/models/student/student_analytics.dart';
import 'package:retrofit/retrofit.dart';

part 'analytics_service.g.dart';
part 'analytics_service.freezed.dart';

@RestApi()
abstract class AnalyticsRestInterface {
  factory AnalyticsRestInterface(Dio dio, {String baseUrl}) =
      _AnalyticsRestInterface;

  @GET('admin/getsiswaanalytics.php')
  Future<AnalyticsResponse> getSiswaAnalytics({
    @Query('key') required String key,
    @Query('id_siswa') int? idSiswa,
    @Query('id_kelas') int? idKelas,
    @Query('id_halaqah') String? idHalaqah,
    @Query('id_tingkat') int? idTingkat,
    @Query('tanggal_awal') String? tanggalAwal,
    @Query('tanggal_akhir') String? tanggalAkhir,
    @Query('page') int? page,
  });

  @GET('admin/getwalianalytics.php')
  Future<WaliAnalyticsResponse> getWaliAnalytics({
    @Query('key') required String key,
    @Query('no_wali') String? noWali,
    @Query('tanggal_awal') String? tanggalAwal,
    @Query('tanggal_akhir') String? tanggalAkhir,
  });

  @GET('admin/exportpdf.php')
  @DioResponseType(ResponseType.bytes)
  Future<List<int>> exportPdf({
    @Query('key') required String key,
    @Query('id_siswa') int? idSiswa,
    @Query('format') String? format,
    @Query('tanggal_awal') String? tanggalAwal,
    @Query('tanggal_akhir') String? tanggalAkhir,
  });

  @GET('admin/exportexcel.php')
  @DioResponseType(ResponseType.bytes)
  Future<List<int>> exportExcel({
    @Query('key') required String key,
    @Query('id_kelas') int? idKelas,
    @Query('id_halaqah') String? idHalaqah,
    @Query('id_tingkat') int? idTingkat,
    @Query('tanggal_awal') String? tanggalAwal,
    @Query('tanggal_akhir') String? tanggalAkhir,
    @Query('type') String? type,
  });
}

@freezed
class WaliChildAnalytics with _$WaliChildAnalytics {
  const factory WaliChildAnalytics({
    @JsonKey(name: 'id_siswa') int? idSiswa,
    @JsonKey(name: 'nama_lengkap') String? namaLengkap,
    @JsonKey(name: 'nis') String? nis,
    @JsonKey(name: 'kelas') String? kelas,
    @JsonKey(name: 'attendance') StudentAttendance? attendance,
    @JsonKey(name: 'violations') int? violations,
    @JsonKey(name: 'tahfidz_count') int? tahfidzCount,
  }) = _WaliChildAnalytics;

  factory WaliChildAnalytics.fromJson(Map<String, dynamic> json) =>
      _$WaliChildAnalyticsFromJson(json);
}

@freezed
class WaliAnalytics with _$WaliAnalytics {
  const factory WaliAnalytics({
    @JsonKey(name: 'no_wali') String? noWali,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'jumlah_siswa') int? jumlahSiswa,
    @JsonKey(name: 'children') List<WaliChildAnalytics>? children,
    @JsonKey(name: 'summary') StudentAnalyticsSummary? summary,
  }) = _WaliAnalytics;

  factory WaliAnalytics.fromJson(Map<String, dynamic> json) =>
      _$WaliAnalyticsFromJson(json);
}

@freezed
class WaliAnalyticsResponse with _$WaliAnalyticsResponse {
  const factory WaliAnalyticsResponse({
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'errCode') String? errCode,
    @JsonKey(name: 'msg') String? msg,
    @JsonKey(name: 'data') List<WaliAnalytics>? data,
  }) = _WaliAnalyticsResponse;

  factory WaliAnalyticsResponse.fromJson(Map<String, dynamic> json) =>
      _$WaliAnalyticsResponseFromJson(json);
}