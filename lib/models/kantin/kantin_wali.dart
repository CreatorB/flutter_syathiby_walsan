int _int(dynamic v) {
  if (v is int) return v;
  if (v is num) return v.toInt();
  return int.tryParse('${v ?? ''}'.split('.').first) ?? 0;
}

String _str(dynamic v) => v == null ? '' : '$v';

bool _bool(dynamic v) {
  if (v is bool) return v;
  final s = '${v ?? ''}'.toLowerCase();
  return s == '1' || s == 'true' || s == 'ya';
}

/// 1250000 -> "1.250.000"
String formatAngka(int nilai) {
  final negatif = nilai < 0;
  final s = nilai.abs().toString();
  final buf = StringBuffer();
  for (var i = 0; i < s.length; i++) {
    if (i > 0 && (s.length - i) % 3 == 0) buf.write('.');
    buf.write(s[i]);
  }
  return '${negatif ? '-' : ''}$buf';
}

String formatRupiah(int nilai) => 'Rp ${formatAngka(nilai)}';

/// Saldo yang boleh negatif: saldo minus ditampilkan sebagai hutang, bukan "-Rp X".
String formatSaldo(int saldo) =>
    saldo < 0 ? 'Hutang ${formatRupiah(-saldo)}' : formatRupiah(saldo);

/// "1.250.000" / "Rp 1.250.000" -> 1250000
int parseNominal(String teks) =>
    int.tryParse(teks.replaceAll(RegExp(r'[^0-9]'), '')) ?? 0;

class RekeningTopup {
  const RekeningTopup({
    required this.idRekening,
    required this.bank,
    required this.noRekening,
    required this.atasNama,
  });

  final int idRekening;
  final String bank;
  final String noRekening;
  final String atasNama;

  factory RekeningTopup.fromJson(Map<String, dynamic> j) => RekeningTopup(
        idRekening: _int(j['id_rekening']),
        bank: _str(j['bank']),
        noRekening: _str(j['no_rekening']),
        atasNama: _str(j['atas_nama']),
      );
}

class AturanTopup {
  const AturanTopup({this.min = 10000, this.maks = 5000000});

  final int min;
  final int maks;

  factory AturanTopup.fromJson(Map<String, dynamic> j) => AturanTopup(
        min: _int(j['topup_min']) > 0 ? _int(j['topup_min']) : 10000,
        maks: _int(j['topup_maks']) > 0 ? _int(j['topup_maks']) : 5000000,
      );
}

class DataRekeningTopup {
  const DataRekeningTopup({required this.rekening, required this.aturan});

  final List<RekeningTopup> rekening;
  final AturanTopup aturan;

  factory DataRekeningTopup.fromJson(Map<String, dynamic> j) =>
      DataRekeningTopup(
        rekening: _daftar(j['rekening']).map(RekeningTopup.fromJson).toList(),
        aturan: AturanTopup.fromJson(_peta(j['aturan'])),
      );
}

class AnakSaldo {
  const AnakSaldo({
    required this.idSiswa,
    required this.namaSantri,
    required this.nis,
    required this.saldo,
    required this.adaKartu,
    this.hutang = 0,
    this.batasHutang = 0,
    this.topupMinEfektif = 0,
  });

  final int idSiswa;
  final String namaSantri;
  final String nis;

  /// Boleh negatif (hutang kantin).
  final int saldo;
  final bool adaKartu;

  /// Hutang kantin (>= 0). Server lama tanpa field ini: diturunkan dari saldo negatif.
  final int hutang;
  final int batasHutang;

  /// Minimal nominal top-up untuk anak ini; 0 = ikuti aturan umum.
  final int topupMinEfektif;

  bool get berhutang => hutang > 0;

  factory AnakSaldo.fromJson(Map<String, dynamic> j) => AnakSaldo(
        idSiswa: _int(j['id_siswa']),
        namaSantri: _str(j['nama_santri']),
        nis: _str(j['nis']),
        saldo: _int(j['saldo']),
        adaKartu: _bool(j['ada_kartu']),
        hutang: _hutang(j),
        batasHutang: _int(j['batas_hutang']),
        topupMinEfektif: _int(j['topup_min_efektif']),
      );

  static List<AnakSaldo> daftarDari(Map<String, dynamic> data) =>
      _daftar(data['anak']).map(AnakSaldo.fromJson).toList();
}

class TopupItem {
  const TopupItem({
    required this.idTopup,
    required this.kode,
    required this.idSiswa,
    required this.namaSantri,
    required this.nominal,
    required this.namaPengirim,
    required this.bank,
    required this.noRekening,
    required this.status,
    required this.alasanTolak,
    required this.diajukanPada,
    required this.diprosesPada,
  });

  final int idTopup;
  final String kode;
  final int idSiswa;
  final String namaSantri;
  final int nominal;
  final String namaPengirim;
  final String bank;
  final String noRekening;
  final String status;
  final String alasanTolak;
  final String diajukanPada;
  final String? diprosesPada;

  bool get menunggu => status == 'menunggu';
  bool get disetujui => status == 'disetujui';
  bool get ditolak => status == 'ditolak';

  String get labelStatus => disetujui
      ? 'Disetujui'
      : ditolak
          ? 'Ditolak'
          : 'Menunggu verifikasi';

  factory TopupItem.fromJson(Map<String, dynamic> j) => TopupItem(
        idTopup: _int(j['id_topup']),
        kode: _str(j['kode']),
        idSiswa: _int(j['id_siswa']),
        namaSantri: _str(j['nama_santri']),
        nominal: _int(j['nominal']),
        namaPengirim: _str(j['nama_pengirim']),
        bank: _str(j['bank']),
        noRekening: _str(j['no_rekening']),
        status: _str(j['status']),
        alasanTolak: _str(j['alasan_tolak']),
        diajukanPada: _str(j['diajukan_pada']),
        diprosesPada: j['diproses_pada'] == null ? null : _str(j['diproses_pada']),
      );

  static List<TopupItem> daftarDari(Map<String, dynamic> data) =>
      _daftar(data['topup']).map(TopupItem.fromJson).toList();
}

class JajanItem {
  const JajanItem({
    required this.nama,
    required this.harga,
    required this.jumlah,
    required this.subtotal,
  });

  final String nama;
  final int harga;
  final int jumlah;
  final int subtotal;

  factory JajanItem.fromJson(Map<String, dynamic> j) => JajanItem(
        nama: _str(j['nama']),
        harga: _int(j['harga']),
        jumlah: _int(j['jumlah']),
        subtotal: _int(j['subtotal']),
      );
}

class JajanTransaksi {
  const JajanTransaksi({
    required this.noNota,
    required this.tanggal,
    required this.jam,
    required this.total,
    required this.metode,
    required this.saldoSesudah,
    required this.item,
  });

  final String noNota;
  final String tanggal;
  final String jam;
  final int total;
  final String metode;
  final int saldoSesudah;
  final List<JajanItem> item;

  factory JajanTransaksi.fromJson(Map<String, dynamic> j) => JajanTransaksi(
        noNota: _str(j['no_nota']),
        tanggal: _str(j['tanggal']),
        jam: _str(j['jam']),
        total: _int(j['total']),
        metode: _str(j['metode']),
        saldoSesudah: _int(j['saldo_sesudah']),
        item: _daftar(j['item']).map(JajanItem.fromJson).toList(),
      );
}

class JajanRiwayat {
  const JajanRiwayat({
    required this.saldo,
    required this.totalBelanja,
    required this.jumlah,
    required this.page,
    required this.transaksi,
    this.hutang = 0,
    this.batasHutang = 0,
  });

  final int hutang;
  final int batasHutang;
  final int saldo;
  final int totalBelanja;
  final int jumlah;
  final int page;
  final List<JajanTransaksi> transaksi;

  factory JajanRiwayat.fromJson(Map<String, dynamic> j) => JajanRiwayat(
        saldo: _int(j['saldo']),
        totalBelanja: _int(j['total_belanja']),
        jumlah: _int(j['jumlah']),
        page: _int(j['page']) > 0 ? _int(j['page']) : 1,
        hutang: _hutang(j),
        batasHutang: _int(j['batas_hutang']),
        transaksi: _daftar(j['transaksi']).map(JajanTransaksi.fromJson).toList(),
      );
}

class ProdukKatalog {
  const ProdukKatalog({
    required this.nama,
    required this.harga,
    required this.kategori,
    required this.tersedia,
  });

  final String nama;
  final int harga;
  final String kategori;
  final bool tersedia;

  factory ProdukKatalog.fromJson(Map<String, dynamic> j) => ProdukKatalog(
        nama: _str(j['nama']),
        harga: _int(j['harga']),
        kategori: _str(j['kategori']),
        tersedia: j['tersedia'] == null ? true : _bool(j['tersedia']),
      );

  static List<ProdukKatalog> daftarDari(Map<String, dynamic> data) =>
      _daftar(data['produk']).map(ProdukKatalog.fromJson).toList();
}

class BatasJajan {
  const BatasJajan({
    required this.batasPondok,
    required this.batasWali,
    required this.batasEfektif,
    required this.terpakaiHariIni,
  });

  /// 0 = tanpa batas.
  final int batasPondok;
  final int batasWali;
  final int batasEfektif;
  final int terpakaiHariIni;

  /// Sisa jatah hari ini; null bila tanpa batas.
  int? get sisa =>
      batasEfektif > 0 ? (batasEfektif - terpakaiHariIni).clamp(0, batasEfektif) : null;

  factory BatasJajan.fromJson(Map<String, dynamic> j) => BatasJajan(
        batasPondok: _int(j['batas_pondok']),
        batasWali: _int(j['batas_wali']),
        batasEfektif: _int(j['batas_efektif']),
        terpakaiHariIni: _int(j['terpakai_hari_ini']),
      );
}

class HasilAjukanTopup {
  const HasilAjukanTopup({required this.kode, required this.status});

  final String kode;
  final String status;

  factory HasilAjukanTopup.fromJson(Map<String, dynamic> j) =>
      HasilAjukanTopup(kode: _str(j['kode']), status: _str(j['status']));
}

/// `hutang` dari server; bila tidak dikirim (server lama) diturunkan dari saldo minus.
int _hutang(Map<String, dynamic> j) {
  if (j['hutang'] != null) {
    final h = _int(j['hutang']);
    return h < 0 ? 0 : h;
  }
  final saldo = _int(j['saldo']);
  return saldo < 0 ? -saldo : 0;
}

Map<String, dynamic> _peta(dynamic v) =>
    v is Map ? Map<String, dynamic>.from(v) : <String, dynamic>{};

List<Map<String, dynamic>> _daftar(dynamic v) => v is List
    ? v.whereType<Map>().map((e) => Map<String, dynamic>.from(e)).toList()
    : <Map<String, dynamic>>[];
