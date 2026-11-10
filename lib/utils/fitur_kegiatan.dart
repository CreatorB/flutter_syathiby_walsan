/// Penanda ketersediaan fitur kegiatan di aplikasi walsan.
///
/// Fitur "Kegiatan Asrama", "Aktivitas Santri", dan "Libur Santri" sudah
/// tersedia di aplikasi, tetapi untuk sementara disembunyikan karena belum
/// ada operator yang standby untuk menangani kegiatan.
///
/// Saat operator sudah siap, cukup ubah [tampil] menjadi `true`; seluruh
/// menu kegiatan akan kembali muncul tanpa perlu mengubah kode lain.
class FiturKegiatan {
  const FiturKegiatan._();

  /// `true` = fitur kegiatan tampil di aplikasi walsan.
  static const bool tampil = false;
}
