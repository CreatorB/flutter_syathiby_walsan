import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rabbaanii_portal/di/providers.dart';
import 'package:rabbaanii_portal/models/prayer/syathiby_prayer.dart';

/// Pilihan wilayah jadwal sholat milik wali, plus pemanggil API-nya.
///
/// Bawaannya SENGAJA kosong = ikut lokasi pondok. Untuk wali santri itu
/// pilihan yang paling masuk akal: yang ingin mereka tahu biasanya jadwal di
/// tempat anaknya berada. Yang tinggal di kota lain tinggal menggantinya
/// sekali, dan pilihannya disimpan.

const _kunciWilayah = 'walsan_wilayah_sholat';

final syathibyPrayerServiceProvider = Provider<SyathibyPrayerService>((ref) {
  // Memakai Dio yang sama dengan endpoint lain: baseUrl-nya sudah mengarah
  // ke .../geten/ dan mengikuti flavor (lokal / staging / produksi).
  return SyathibyPrayerService(ref.watch(dioProvider));
});

/// Wilayah pilihan wali; null berarti "ikut pondok".
class WilayahSholatNotifier extends StateNotifier<Wilayah?> {
  final Ref _ref;

  WilayahSholatNotifier(this._ref) : super(null) {
    _muat();
  }

  void _muat() {
    final helper = _ref.read(sharedPreferencesHelperProvider);
    state = Wilayah.dariTersimpan(helper.getString(_kunciWilayah));
  }

  Future<void> pilih(Wilayah? wilayah) async {
    final helper = _ref.read(sharedPreferencesHelperProvider);
    if (wilayah == null) {
      // Dikosongkan, bukan dihapus: kunci yang hilang dan kunci yang kosong
      // sama-sama berarti "ikut pondok", tapi menulisnya membuat niatnya jelas.
      await helper.setString(_kunciWilayah, '');
    } else {
      await helper.setString(_kunciWilayah, wilayah.tersimpan);
    }
    state = wilayah;
  }
}

final wilayahSholatProvider =
    StateNotifierProvider<WilayahSholatNotifier, Wilayah?>(
  (ref) => WilayahSholatNotifier(ref),
);

/// Jadwal hari ini untuk wilayah yang sedang dipilih.
final jadwalSholatProvider = FutureProvider.autoDispose<JadwalSholat>((ref) {
  final wilayah = ref.watch(wilayahSholatProvider);
  return ref.watch(syathibyPrayerServiceProvider).jadwalHariIni(wilayah: wilayah);
});

/// Daftar provinsi untuk pemilih wilayah.
final daftarProvinsiProvider = FutureProvider.autoDispose<List<String>>((ref) {
  return ref.watch(syathibyPrayerServiceProvider).daftarProvinsi();
});

/// Daftar kabupaten/kota di satu provinsi.
final daftarKabkotaProvider =
    FutureProvider.autoDispose.family<List<String>, String>((ref, provinsi) {
  return ref.watch(syathibyPrayerServiceProvider).daftarKabkota(provinsi);
});
