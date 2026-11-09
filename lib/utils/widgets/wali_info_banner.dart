import 'package:flutter/material.dart';
import 'package:rabbaanii_portal/utils/extension/color.dart';

/// Banner informasi untukSantri yang SUDAH punya wali.
///
/// Ditambahkan 27 Okt 2026 sebagai bagian dari perbaikan masalah "nama anak
/// saya tidak muncul / tidak bisa mendaftar".
///
/// Sebagian wali yang melapor sebenarnya salah paham soal alurnya: mereka
/// mengira namanya tidak ditemukan karena data anak bermasalah, padahal
/// namanya memang muncul, hanya saja anak itu sudah terdaftar di akun wali
/// lain. Menampilkan jumlah wali yang sudah ada membuat keadaan itu jelas
/// SEBELUM pendaftar menekan tombol, sehingga penolakan tidak lagi terasa
/// seperti kegagalan sistem.
///
/// Kalau [jumlahWali] kosong atau nol, widget ini tidak menampilkan apa pun.
class WaliInfoBanner extends StatelessWidget {
  const WaliInfoBanner({
    super.key,
    required this.jumlahWali,
    required this.message,
  });

  /// Jumlah wali aktif yang sudah tertaut ke santri ini.
  final int jumlahWali;

  /// Isi banner. Penulisannya cukup jelas soal langkah berikutnya, bukan
  /// sekadar Memberi tahu kondisi.
  final String message;

  @override
  Widget build(BuildContext context) {
    if (jumlahWali <= 0) {
      return const SizedBox.shrink();
    }
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: context.colorTertiaryContainer,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: context.colorTertiary),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.info_outline, size: 20, color: context.colorOnTertiaryContainer),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              message,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: context.colorOnTertiaryContainer,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
