// Uji untuk=walsan 1.0.1+2 (10 Nov 2026).
//
// Catatan: berkas ini sebelumnya berisi stub template Flutter bawaan
// ("Counter increments smoke test") yang menguji tombol '+' counter --
// UI yang tidak pernah ada di aplikasi walsan. Stub itu gagal sejak repo
// dibuat (commit "Initial commit"), sehingga `flutter test` selalu merah
// dan tidak bisa dipakai sebagai gerbang rilis.
//
// Diganti dengan uji yang benar-benar menyentuh bagian yang ikut rilis.

import 'package:flutter_test/flutter_test.dart';
import 'package:rabbaanii_portal/models/student/siswa.dart';
import 'package:rabbaanii_portal/utils/fitur_kegiatan.dart';

void main() {
  group('Fitur kegiatan', () {
    test('sakelar tampilan dibunyikan (menu kegiatan disembunyikan sementara)', () {
      // Menu "Kegiatan Asrama", "Aktivitas Santri", dan "Libur Santri"
      // disembunyikan karena belum ada operator yang standby. Ubah ke true
      // saat operator sudah siap.
      expect(FiturKegiatan.tampil, isFalse);
    });
  });

  group('Siswa', () {
    test('membaca jumlah_wali dan sudah_punya_wali dari respons server', () {
      // Dua field ini ikut rilis 1.0.1+2. Datanya berasal dari
      // `geten/siswa/searchsiswafont.php` dan dipakai untuk memberi tahu
      // pendaftar bahwa anaknya sudah punya akun wali lain.
      final siswa = Siswa.fromJson(const {
        'nis': '0099625532',
        'id_siswa': '2094',
        'nama_lengkap': 'AAS',
        'kelas': '12 C',
        'jumlah_wali': 2,
        'sudah_punya_wali': 1,
      });

      expect(siswa.nis, '0099625532');
      expect(siswa.namaLengkap, 'AAS');
      expect(siswa.jumlahWali, 2);
      expect(siswa.sudahPunyaWali, 1);
    });

    test('field wali tetap null bila server tidak mengirimnya', () {
      final siswa = Siswa.fromJson(const {'nis': '0001', 'nama_lengkap': 'Uji'});

      expect(siswa.jumlahWali, isNull);
      expect(siswa.sudahPunyaWali, isNull);
    });
  });
}
