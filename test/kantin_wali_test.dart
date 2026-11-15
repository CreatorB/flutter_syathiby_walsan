import 'package:flutter_test/flutter_test.dart';
import 'package:rabbaanii_portal/models/kantin/kantin_wali.dart';
import 'package:rabbaanii_portal/models/kantin/kantin_wali_repository.dart';

void main() {
  test('rekening dan aturan top-up', () {
    final d = DataRekeningTopup.fromJson({
      'rekening': [
        {
          'id_rekening': 1,
          'bank': 'BSI',
          'no_rekening': '7563030008',
          'atas_nama': 'YYS CAHAYA SUNNAH SYATHIBI TITPAN'
        }
      ],
      'aturan': {'topup_min': 10000, 'topup_maks': 5000000},
    });
    expect(d.rekening.single.noRekening, '7563030008');
    expect(d.aturan.min, 10000);
    expect(d.aturan.maks, 5000000);
  });

  test('aturan memakai bawaan bila server tidak mengirim', () {
    final d = DataRekeningTopup.fromJson({'rekening': []});
    expect(d.aturan.min, 10000);
    expect(d.aturan.maks, 5000000);
  });

  test('anak dan saldo (angka bisa berupa string dari MySQL)', () {
    final daftar = AnakSaldo.daftarDari({
      'anak': [
        {'id_siswa': '1', 'nama_santri': 'Ahmad', 'nis': '2301', 'saldo': '125000', 'ada_kartu': true},
        {'id_siswa': 2, 'nama_santri': 'Umar', 'nis': '', 'saldo': 0, 'ada_kartu': 0},
      ]
    });
    expect(daftar.length, 2);
    expect(daftar[0].idSiswa, 1);
    expect(daftar[0].saldo, 125000);
    expect(daftar[0].adaKartu, isTrue);
    expect(daftar[1].adaKartu, isFalse);
  });

  test('riwayat top-up dan label status', () {
    final daftar = TopupItem.daftarDari({
      'topup': [
        {
          'id_topup': 1,
          'kode': 'TU-20261116-0001',
          'id_siswa': 1,
          'nama_santri': 'Ahmad',
          'nominal': 50000,
          'nama_pengirim': 'Budi',
          'bank': 'BSI',
          'no_rekening': '7563030008',
          'status': 'menunggu',
          'alasan_tolak': '',
          'diajukan_pada': '2026-11-16 10:00:00',
          'diproses_pada': null,
        },
        {
          'id_topup': 2,
          'kode': 'TU-20261116-0002',
          'id_siswa': 1,
          'nama_santri': 'Ahmad',
          'nominal': 20000,
          'nama_pengirim': 'Budi',
          'bank': 'BSI',
          'no_rekening': '7563030008',
          'status': 'ditolak',
          'alasan_tolak': 'Bukti tidak terbaca',
          'diajukan_pada': '2026-11-16 11:00:00',
          'diproses_pada': '2026-11-16 12:00:00',
        },
      ]
    });
    expect(daftar[0].menunggu, isTrue);
    expect(daftar[0].labelStatus, 'Menunggu verifikasi');
    expect(daftar[0].diprosesPada, isNull);
    expect(daftar[1].ditolak, isTrue);
    expect(daftar[1].alasanTolak, 'Bukti tidak terbaca');
  });

  test('riwayat jajan beserta item', () {
    final r = JajanRiwayat.fromJson({
      'saldo': 125000,
      'total_belanja': 45000,
      'jumlah': 12,
      'page': 1,
      'transaksi': [
        {
          'no_nota': 'KN-1',
          'tanggal': '2026-11-16',
          'jam': '09:12',
          'total': 8000,
          'metode': 'tabungan',
          'saldo_sesudah': 117000,
          'item': [
            {'nama': 'Roti', 'harga': 4000, 'jumlah': 2, 'subtotal': 8000}
          ],
        }
      ],
    });
    expect(r.saldo, 125000);
    expect(r.jumlah, 12);
    expect(r.transaksi.single.item.single.nama, 'Roti');
    expect(r.transaksi.single.saldoSesudah, 117000);
  });

  test('hasil pengajuan top-up', () {
    final h = HasilAjukanTopup.fromJson({'kode': 'TU-20261116-0001', 'status': 'menunggu'});
    expect(h.kode, 'TU-20261116-0001');
  });

  test('format angka dan rupiah', () {
    expect(formatAngka(0), '0');
    expect(formatAngka(999), '999');
    expect(formatAngka(1250000), '1.250.000');
    expect(formatRupiah(10000), 'Rp 10.000');
    expect(parseNominal('Rp 1.250.000'), 1250000);
    expect(parseNominal(''), 0);
  });

  group('bongkarRespons', () {
    test('data sudah dibongkar interseptor', () {
      expect(bongkarRespons({'anak': []}), {'anak': []});
    });

    test('respons utuh sukses', () {
      expect(bongkarRespons({'errCode': '01', 'data': {'x': 1}}), {'x': 1});
    });

    test('errCode selain 01 menampilkan pesan server apa adanya', () {
      expect(
        () => bongkarRespons({'errCode': '04', 'msg': 'Bukti transfer wajib diunggah'}),
        throwsA(isA<KantinWaliException>()
            .having((e) => e.message, 'message', 'Bukti transfer wajib diunggah')),
      );
    });
  });
}
