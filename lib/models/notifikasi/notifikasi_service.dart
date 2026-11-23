import 'package:dio/dio.dart';
import 'package:rabbaanii_portal/models/notifikasi/notifikasi.dart';
import 'package:retrofit/retrofit.dart';

part 'notifikasi_service.g.dart';

/// Endpoint lonceng notifikasi wali.
///
/// Autentikasi memakai DUA hal: `key` (id_session yang menandai SANATRI) dan
/// `phone_number` (nomor wali yang sedang login). Kunci sesi dipakai bersama
/// seluruh wali seorang santri, jadi tanpa nomor wali server tidak tahu
/// lonceng mana yang harus dibuka.
@RestApi()
abstract class NotifikasiService {
  factory NotifikasiService(Dio dio, {String baseUrl}) = _NotifikasiService;

  /// Daftar notifikasi wali yang sedang login (satu halaman).
  @GET('wali/notifikasi.php')
  Future<NotifikasiHalaman> getNotifikasi(
    @Query('key') String key,
    @Query('phone_number') String phoneNumber,
    @Query('act') String act,
    @Query('page') int page,
  );

  /// Detail satu notifikasi. Server hanya mengembalikan notifikasi milik wali
  /// yang sedang login -- id milik orang lain dibalas "tidak ditemukan".
  @GET('wali/notifikasi.php')
  Future<Notifikasi> getNotifikasiDetail(
    @Query('key') String key,
    @Query('phone_number') String phoneNumber,
    @Query('act') String act,
    @Query('id') int id,
  );

  /// Jumlah notifikasi yang belum dibaca (untuk badge lonceng).
  @GET('wali/notifikasi.php')
  Future<NotifikasiUnread> getNotifikasiUnread(
    @Query('key') String key,
    @Query('phone_number') String phoneNumber,
    @Query('act') String act,
  );

  /// Tandai satu notifikasi (id) atau semua yang belum dibaca sebagai dibaca.
  @GET('wali/notifikasi.php')
  Future<NotifikasiRead> readNotifikasi(
    @Query('key') String key,
    @Query('phone_number') String phoneNumber,
    @Query('act') String act,
    @Query('id') int id,
  );
}
