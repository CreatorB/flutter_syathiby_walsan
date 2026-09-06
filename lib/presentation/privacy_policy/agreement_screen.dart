import 'package:flutter/material.dart';

class AgreementScreen extends StatelessWidget {
  const AgreementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perjanjian Pengguna'),
        backgroundColor: colorScheme.surface,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: colorScheme.primary,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.handshake_outlined,
                            color: colorScheme.onPrimary,
                            size: 28,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Text(
                            'Perjanjian Pengguna',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: colorScheme.onPrimaryContainer,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Berlaku sejak 28 Juli 2026',
                      style: TextStyle(
                        fontSize: 12,
                        color: colorScheme.onPrimaryContainer.withOpacity(0.75),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              _Section(
                title: '1. Penerimaan Perjanjian',
                body:
                    'Dengan memasang, mendaftarkan, atau menggunakan Aplikasi '
                    'Walsan — Rabbaanii Portal Syathiby ("Aplikasi"), Anda '
                    'sebagai wali dari santri Ma\'had Tahfizh al-Qur\'an '
                    'al-Imam as-Syathiby ("Pesantren") setuju untuk terikat '
                    'oleh Perjanjian Pengguna ini. Jika Anda tidak setuju, '
                    'mohon untuk tidak menggunakan Aplikasi.',
              ),
              _Section(
                title: '2. Kewajiban Wali',
                body:
                    'Sebagai wali, Anda wajib:',
                bullets: const [
                  'Memberikan data diri dan data anak yang benar, akurat, dan terbaru.',
                  'Menjaga kerahasiaan kredensial akun (email dan password) Anda.',
                  'Tidak membagikan akun kepada pihak lain yang bukan wali sah.',
                  'Menggunakan Aplikasi sesuai fungsinya untuk memantau dan berkomunikasi dengan Pesantren.',
                  'Mematuhi seluruh peraturan yang ditetapkan Pesantren terkait perizinan, penjemputan, dan aktivitas pesantren.',
                ],
              ),
              _Section(
                title: '3. Hak Akses dan Pembatasan',
                body:
                    'Anda hanya dapat mengakses data anak yang secara sah menjadi '
                    'bawahan Anda (wali). Akses ke data anak lain yang bukan '
                    'bawahan Anda sangat dilarang. Kami berhak menangguhkan atau '
                    'mengakhiri akses Anda jika ditemukan pelanggaran terhadap '
                    'ketentuan ini.',
              ),
              _Section(
                title: '4. Konten dan Kekayaan Intelektual',
                body:
                    'Seluruh konten di dalam Aplikasi (termasuk namun tidak '
                    'terbatas pada teks, gambar, logo, ikon, dan kode program) '
                    'adalah milik Pesantren atau pemberi lisensi kepada '
                    'Pesantren. Dilarang memperbanyak, mendistribusikan, atau '
                    'memodifikasi konten tanpa izin tertulis dari Pesantren.',
              ),
              _Section(
                title: '5. Batasan Tanggung Jawab',
                body:
                    'Aplikasi disediakan "sebagaimana adanya" (as-is). Kami '
                    'berupaya menjaga ketersediaan dan keakuratan data, namun '
                    'tidak menjamin Aplikasi akan selalu tersedia tanpa '
                    'gangguan atau kesalahan. Kami tidak bertanggung jawab '
                    'atas kerugian yang timbul akibat gangguan teknis, '
                    'keterlambatan notifikasi, atau penggunaan Aplikasi di '
                    'luar kendali kami.',
              ),
              _Section(
                title: '6. Perubahan Perjanjian',
                body:
                    'Kami dapat memperbarui Perjanjian Pengguna ini dari '
                    'waktu ke waktu. Versi terbaru selalu tersedia di '
                    'halaman ini. Perubahan material akan dikomunikasikan '
                    'melalui notifikasi dalam Aplikasi.',
              ),
              _Section(
                title: '7. Kontak',
                body:
                    'Untuk pertanyaan terkait Perjanjian Pengguna, silakan '
                    'menghubungi Pesantren melalui kanal resmi yang '
                    'tersedia di website syathiby.id.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Section extends StatelessWidget {
  const _Section({required this.title, required this.body, this.bullets});

  final String title;
  final String body;
  final List<String>? bullets;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              color: colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            body,
            style: TextStyle(
              fontSize: 13.5,
              height: 1.55,
              color: colorScheme.onSurface.withOpacity(0.85),
            ),
          ),
          if (bullets != null) ...[
            const SizedBox(height: 8),
            ...bullets!.map(
              (b) => Padding(
                padding: const EdgeInsets.only(left: 4, bottom: 6),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 6, right: 8),
                      child: Container(
                        width: 5,
                        height: 5,
                        decoration: BoxDecoration(
                          color: colorScheme.primary,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        b,
                        style: TextStyle(
                          fontSize: 13,
                          height: 1.5,
                          color: colorScheme.onSurface.withOpacity(0.85),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}