import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rabbaanii_portal/di/providers.dart';
import 'package:rabbaanii_portal/models/kantin/kantin_wali.dart';
import 'package:rabbaanii_portal/utils/rest_exception.dart';

/// Kegagalan dari server atau jaringan dengan pesan yang siap ditampilkan.
class KantinWaliException implements Exception {
  KantinWaliException(this.message);

  final String message;

  @override
  String toString() => message;
}

/// Membongkar respons endpoint wali. ResponseInterceptor sudah mengambil `data`
/// untuk errCode 01; errCode lain (mis. 03/04) diteruskan sebagai peta utuh.
Map<String, dynamic> bongkarRespons(dynamic raw) {
  if (raw is Map) {
    final peta = Map<String, dynamic>.from(raw);
    final kode = peta['errCode']?.toString();
    if (kode != null && kode != '01') {
      throw KantinWaliException(
          '${peta['msg'] ?? 'Permintaan tidak dapat diproses'}');
    }
    final data = peta['data'];
    if (data is Map) return Map<String, dynamic>.from(data);
    return peta;
  }
  return <String, dynamic>{};
}

String pesanKesalahan(Object e) {
  if (e is KantinWaliException) return e.message;
  if (e is DioException) {
    final dalam = e.error;
    if (dalam is RestException) return dalam.message;
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return 'Waktu koneksi dengan server habis. Coba lagi.';
      case DioExceptionType.connectionError:
        return 'Tidak dapat terhubung ke server. Periksa koneksi internet Anda.';
      default:
        return 'Terjadi kesalahan saat menghubungi server.';
    }
  }
  return 'Terjadi kesalahan: $e';
}

bool sesiHabis(Object e) => e is DioException && e.error is SessionExpiredException;

class KantinWaliRepository {
  KantinWaliRepository(this._dio);

  final Dio _dio;

  Future<Map<String, dynamic>> _ambil(String path, Map<String, dynamic> q) async {
    try {
      final res = await _dio.get(path, queryParameters: q);
      return bongkarRespons(res.data);
    } on DioException catch (e) {
      if (e.error is SessionExpiredException) rethrow;
      throw KantinWaliException(pesanKesalahan(e));
    }
  }

  Map<String, dynamic> _dasar(String key, String noWali, String act) =>
      {'key': key, 'phone_number': noWali, 'act': act};

  Future<DataRekeningTopup> rekening(String key, String noWali) async =>
      DataRekeningTopup.fromJson(
          await _ambil('wali/topup.php', _dasar(key, noWali, 'rekening')));

  Future<List<TopupItem>> riwayatTopup(String key, String noWali,
          {int? idSiswa}) async =>
      TopupItem.daftarDari(await _ambil('wali/topup.php', {
        ..._dasar(key, noWali, 'riwayat'),
        if (idSiswa != null) 'id_siswa': idSiswa,
      }));

  Future<List<AnakSaldo>> anak(String key, String noWali) async =>
      AnakSaldo.daftarDari(
          await _ambil('wali/kantin.php', _dasar(key, noWali, 'anak')));

  Future<JajanRiwayat> riwayatJajan(
    String key,
    String noWali, {
    required int idSiswa,
    String? dari,
    String? sampai,
    int page = 1,
  }) async =>
      JajanRiwayat.fromJson(await _ambil('wali/kantin.php', {
        ..._dasar(key, noWali, 'riwayat'),
        'id_siswa': idSiswa,
        if (dari != null) 'dari': dari,
        if (sampai != null) 'sampai': sampai,
        'page': page,
      }));

  Future<HasilAjukanTopup> ajukanTopup({
    required String key,
    required String noWali,
    required int idSiswa,
    required int nominal,
    required String namaPengirim,
    required int idRekening,
    String? tanggalTransfer,
    String? catatan,
    required List<int> bytesBukti,
    required String namaBerkas,
  }) async {
    final form = FormData.fromMap({
      ..._dasar(key, noWali, 'ajukan'),
      'id_siswa': idSiswa,
      'nominal': nominal,
      'nama_pengirim': namaPengirim,
      'id_rekening': idRekening,
      if (tanggalTransfer != null) 'tanggal_transfer': tanggalTransfer,
      if (catatan != null && catatan.isNotEmpty) 'catatan': catatan,
      'bukti': MultipartFile.fromBytes(bytesBukti, filename: namaBerkas),
    });
    try {
      final res = await _dio.post(
        'wali/topup.php',
        data: form,
        options: Options(contentType: 'multipart/form-data'),
      );
      return HasilAjukanTopup.fromJson(bongkarRespons(res.data));
    } on DioException catch (e) {
      if (e.error is SessionExpiredException) rethrow;
      throw KantinWaliException(pesanKesalahan(e));
    }
  }
}

final kantinWaliRepositoryProvider = Provider<KantinWaliRepository>(
  (ref) => KantinWaliRepository(ref.watch(dioProvider)),
);

class _Sesi {
  const _Sesi(this.key, this.noWali);

  final String key;
  final String noWali;
}

_Sesi _sesi(Ref ref) {
  final u = ref.watch(getCurrentUserProvider);
  return _Sesi('${u?.key ?? ''}', '${u?.user ?? ''}');
}

final anakSaldoProvider = FutureProvider.autoDispose<List<AnakSaldo>>((ref) {
  final s = _sesi(ref);
  return ref.watch(kantinWaliRepositoryProvider).anak(s.key, s.noWali);
});

final rekeningTopupProvider =
    FutureProvider.autoDispose<DataRekeningTopup>((ref) {
  final s = _sesi(ref);
  return ref.watch(kantinWaliRepositoryProvider).rekening(s.key, s.noWali);
});

final riwayatTopupProvider = FutureProvider.autoDispose<List<TopupItem>>((ref) {
  final s = _sesi(ref);
  return ref.watch(kantinWaliRepositoryProvider).riwayatTopup(s.key, s.noWali);
});
