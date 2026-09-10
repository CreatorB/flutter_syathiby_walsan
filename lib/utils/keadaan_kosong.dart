import 'package:flutter/material.dart';

/// Tampilan "tidak ada data" dan "gagal memuat" berbahasa Indonesia untuk
/// daftar yang memakai `infinite_scroll_pagination`.
///
/// === KENAPA ADA ===
///
/// `PagedChildBuilderDelegate` punya tampilan bawaan sendiri, dan tampilan itu
/// berbahasa Inggris: "No items found", "The list is currently empty",
/// "Something went wrong", "Try again". Enam layar walsan -- izin, kesehatan,
/// pelanggaran, libur santri, penjengukan, dan hadits -- memakai bawaan itu,
/// sehingga wali santri yang membuka menu kosong disambut kalimat berbahasa
/// asing.
///
/// Selain bahasanya, kalimat bawaannya juga tidak menjelaskan apa pun. "No
/// items found" pada daftar izin tidak memberi tahu bahwa memang belum ada
/// pengajuan, dan tidak menunjukkan apa yang bisa dilakukan berikutnya.
class KeadaanKosong extends StatelessWidget {
  const KeadaanKosong({
    super.key,
    required this.judul,
    this.keterangan,
    this.ikon = Icons.inbox_outlined,
  });

  final String judul;
  final String? keterangan;
  final IconData ikon;

  @override
  Widget build(BuildContext context) {
    final teks = Theme.of(context).textTheme;
    final warna = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 48),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(ikon, size: 56, color: warna.outline),
          const SizedBox(height: 16),
          Text(
            judul,
            textAlign: TextAlign.center,
            style: teks.titleMedium,
          ),
          if (keterangan != null) ...[
            const SizedBox(height: 8),
            Text(
              keterangan!,
              textAlign: TextAlign.center,
              style: teks.bodyMedium?.copyWith(color: warna.outline),
            ),
          ],
        ],
      ),
    );
  }
}

/// Tampilan saat pemuatan gagal, dengan tombol coba lagi.
class KeadaanGagal extends StatelessWidget {
  const KeadaanGagal({super.key, required this.onCobaLagi, this.pesan});

  final VoidCallback onCobaLagi;
  final String? pesan;

  @override
  Widget build(BuildContext context) {
    final teks = Theme.of(context).textTheme;
    final warna = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 48),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.cloud_off_outlined, size: 56, color: warna.outline),
          const SizedBox(height: 16),
          Text(
            'Gagal memuat data',
            textAlign: TextAlign.center,
            style: teks.titleMedium,
          ),
          const SizedBox(height: 8),
          Text(
            pesan ?? 'Periksa sambungan internet Anda, lalu coba lagi.',
            textAlign: TextAlign.center,
            style: teks.bodyMedium?.copyWith(color: warna.outline),
          ),
          const SizedBox(height: 16),
          FilledButton.tonalIcon(
            onPressed: onCobaLagi,
            icon: const Icon(Icons.refresh),
            label: const Text('Coba Lagi'),
          ),
        ],
      ),
    );
  }
}
