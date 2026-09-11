import 'package:dio/dio.dart';

/// Jadwal sholat dari API Syathiby sendiri.
///
/// === KENAPA PINDAH DARI SUMBER LAMA ===
///
/// Sebelum 11 Sep 2026 layar jadwal sholat memanggil
/// `https://prayer-times-xi.vercel.app` — layanan pihak ketiga milik orang
/// lain, dengan koordinat GPS perangkat. Dua masalahnya:
///
///  1. Tidak ada yang mengendalikannya. Kalau layanan itu berhenti atau
///     berubah, jadwal sholat di aplikasi wali ikut mati, dan pondok tidak
///     bisa berbuat apa-apa.
///  2. Bergantung pada izin lokasi. Walsan disajikan sebagai WEB, dan di
///     browser izin lokasi sering ditolak atau tidak muncul sama sekali —
///     saat itu terjadi, layarnya kosong tanpa penjelasan.
///
/// Sekarang memakai API Syathiby: data Kemenag lewat equran.id, 517
/// kabupaten/kota, disimpan di server pondok sendiri. Tidak perlu izin
/// lokasi, dan wali bisa memilih kotanya sendiri.
///
/// Sengaja TANPA freezed/retrofit: cukup satu berkas, tidak menambah langkah
/// build_runner yang harus diingat orang berikutnya.

/// Satu wilayah (provinsi + kabupaten/kota) sesuai daftar resmi API.
class Wilayah {
  final String provinsi;
  final String kabkota;

  const Wilayah({required this.provinsi, required this.kabkota});

  /// Nama untuk ditampilkan; "Kab. Bogor" ditulis apa adanya karena itulah
  /// yang dikenali API — mengarangkan bentuk lain hanya membuatnya ditolak.
  String get label => '$kabkota, $provinsi';

  /// Disimpan sebagai "Provinsi|Kabkota" — bentuk yang sama dengan kunci di
  /// sisi server, jadi tidak ada kemungkinan salah pasang.
  String get tersimpan => '$provinsi|$kabkota';

  static Wilayah? dariTersimpan(String? nilai) {
    if (nilai == null || nilai.isEmpty) return null;
    final bagian = nilai.split('|');
    if (bagian.length != 2 || bagian[0].isEmpty || bagian[1].isEmpty) {
      return null;
    }
    return Wilayah(provinsi: bagian[0], kabkota: bagian[1]);
  }

  @override
  bool operator ==(Object other) =>
      other is Wilayah &&
      other.provinsi == provinsi &&
      other.kabkota == kabkota;

  @override
  int get hashCode => Object.hash(provinsi, kabkota);
}

/// Jadwal satu hari.
class JadwalSholat {
  final String kota;
  final Wilayah wilayah;
  final String tanggalMasehi;
  final String hijriyah;
  final Map<String, String> waktu; // subuh, dzuhur, ashar, maghrib, isya, ...
  final String? berikutnyaNama;
  final int? berikutnyaDetik;

  const JadwalSholat({
    required this.kota,
    required this.wilayah,
    required this.tanggalMasehi,
    required this.hijriyah,
    required this.waktu,
    this.berikutnyaNama,
    this.berikutnyaDetik,
  });

  /// True kalau server menjawab sukses tapi TIDAK punya satu pun jam.
  ///
  /// Ini terjadi saat wilayah itu belum punya cadangan dan sumbernya sedang
  /// tidak bisa dihubungi. Wajib ditangani: menampilkan jam karangan untuk
  /// waktu sholat lebih buruk daripada tidak menampilkan apa-apa.
  bool get kosong => waktu.isEmpty;

  factory JadwalSholat.dariJson(Map<String, dynamic> json) {
    final data = (json['data'] as Map?)?.cast<String, dynamic>() ?? {};
    final pt = (data['prayer_times'] as Map?)?.cast<String, dynamic>() ?? {};
    final wil = (data['wilayah'] as Map?)?.cast<String, dynamic>() ?? {};
    final hij = (data['hijriyah'] as Map?)?.cast<String, dynamic>() ?? {};
    final next = (data['next_prayer'] as Map?)?.cast<String, dynamic>() ?? {};

    final waktu = <String, String>{};
    pt.forEach((k, v) {
      if (v is String && v.isNotEmpty) waktu[k] = v;
    });

    return JadwalSholat(
      kota: (data['kota'] ?? '').toString(),
      wilayah: Wilayah(
        provinsi: (wil['provinsi'] ?? '').toString(),
        kabkota: (wil['kabkota'] ?? '').toString(),
      ),
      tanggalMasehi: (data['tanggal_masehi'] ?? '').toString(),
      hijriyah: (hij['formatted'] ?? '').toString(),
      waktu: waktu,
      berikutnyaNama: next['name']?.toString(),
      berikutnyaDetik: next['countdown_seconds'] is int
          ? next['countdown_seconds'] as int
          : int.tryParse('${next['countdown_seconds']}'),
    );
  }
}

/// Pemanggil API jadwal sholat Syathiby.
class SyathibyPrayerService {
  final Dio _dio;
  SyathibyPrayerService(this._dio);

  /// Jadwal hari ini. Tanpa [wilayah], server memakai lokasi pondok —
  /// perilaku yang sama seperti kiosk, dan itu memang bawaan yang masuk akal
  /// untuk wali santri.
  Future<JadwalSholat> jadwalHariIni({Wilayah? wilayah}) async {
    final res = await _dio.get(
      'prayer/today.php',
      queryParameters: wilayah == null
          ? null
          : {'provinsi': wilayah.provinsi, 'kabkota': wilayah.kabkota},
    );
    final body = res.data is Map
        ? (res.data as Map).cast<String, dynamic>()
        : <String, dynamic>{};
    if (body['errCode'] != '01') {
      throw Exception(body['msg'] ?? 'Jadwal sholat tidak bisa diambil');
    }
    return JadwalSholat.dariJson(body);
  }

  /// Daftar provinsi. Praktis tidak pernah berubah, jadi aman disimpan
  /// di sisi aplikasi.
  Future<List<String>> daftarProvinsi() async {
    final res = await _dio.get('prayer/wilayah.php');
    final body = res.data is Map
        ? (res.data as Map).cast<String, dynamic>()
        : <String, dynamic>{};
    final data = (body['data'] as Map?)?.cast<String, dynamic>() ?? {};
    final list = (data['provinsi'] as List?) ?? const [];
    return list
        .map((e) => (e is Map ? e['provinsi'] : e).toString())
        .where((e) => e.isNotEmpty)
        .toList();
  }

  /// Kabupaten/kota dalam satu provinsi.
  Future<List<String>> daftarKabkota(String provinsi) async {
    final res = await _dio.get(
      'prayer/wilayah.php',
      queryParameters: {'provinsi': provinsi},
    );
    final body = res.data is Map
        ? (res.data as Map).cast<String, dynamic>()
        : <String, dynamic>{};
    final data = (body['data'] as Map?)?.cast<String, dynamic>() ?? {};
    final list = (data['kabkota'] as List?) ?? const [];
    return list.map((e) => e.toString()).where((e) => e.isNotEmpty).toList();
  }
}
