import 'package:freezed_annotation/freezed_annotation.dart';

part 'notifikasi.freezed.dart';
part 'notifikasi.g.dart';

/// Satu notifikasi di kotak masuk wali (aplikasi Walsan).
///
/// Datanya dibaca dari tabel `notifikasi` (server), jadi notifikasi tetap ada
/// walau push FCM tidak sampai. Push ke wali memang jarang sampai --
/// `wali_siswa.token` kosong semua di produksi per 24 Nov 2026 -- sehingga
/// kotak masuk di server ini satu-satunya jejak notifikasi yang bisa dilihat
/// wali.
///
/// Setiap wali hanya melihat notifikasinya sendiri: server memfilter dengan
/// nomor HP wali, bukan dengan pilihan di layar.
@freezed
class Notifikasi with _$Notifikasi {
  const factory Notifikasi({
    int? id,
    String? judul,
    String? pesan,
    String? source,
    @JsonKey(name: 'ref_id') String? refId,
    String? status,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'read_at') String? readAt,
  }) = _Notifikasi;

  factory Notifikasi.fromJson(Map<String, dynamic> json) =>
      _$NotifikasiFromJson(json);
}

/// Jumlah notifikasi yang belum dibaca (untuk badge lonceng).
@freezed
class NotifikasiUnread with _$NotifikasiUnread {
  const factory NotifikasiUnread({
    int? unread,
  }) = _NotifikasiUnread;

  factory NotifikasiUnread.fromJson(Map<String, dynamic> json) =>
      _$NotifikasiUnreadFromJson(json);
}

/// Satu halaman daftar notifikasi + jumlahnya.
///
/// Server membalas satu objek berisi daftar notifikasi, jumlah seluruh
/// notifikasi, dan jumlah yang belum dibaca -- bukan array polos, supaya
/// badge lonceng dan tombol "tandai semua terbaca" tidak perlu permintaan
/// tambahan.
@freezed
class NotifikasiHalaman with _$NotifikasiHalaman {
  const factory NotifikasiHalaman({
    @JsonKey(name: 'notifikasi') List<Notifikasi>? notifikasi,
    int? total,
    int? unread,
    int? page,
    int? week,
    String? label,
    @JsonKey(name: 'ada_lagi') bool? adaLagi,
  }) = _NotifikasiHalaman;

  factory NotifikasiHalaman.fromJson(Map<String, dynamic> json) =>
      _$NotifikasiHalamanFromJson(json);
}

/// Hasil penandaan notifikasi sudah dibaca.
@freezed
class NotifikasiRead with _$NotifikasiRead {
  const factory NotifikasiRead({
    int? updated,
    int? unread,
  }) = _NotifikasiRead;

  factory NotifikasiRead.fromJson(Map<String, dynamic> json) =>
      _$NotifikasiReadFromJson(json);
}
