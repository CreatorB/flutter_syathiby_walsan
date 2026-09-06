import 'package:flutter/material.dart';
import 'package:rabbaanii_portal/res/colors.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  static const _lastUpdated = '28 Juli 2026';
  static const _appName = 'Walsan — Rabbaanii Portal Syathiby';
  static const _developer =
      'Ma\'had Tahfizh al-Qur\'an al-Imam as-Syathiby, Cileungsi, Bogor';

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kebijakan Privasi'),
        backgroundColor: colorScheme.surface,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 12, 20, 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _HeaderCard(
                appName: _appName,
                lastUpdated: _lastUpdated,
                developer: _developer,
              ),
              const SizedBox(height: 24),
              _Section(
                number: '1',
                title: 'Pendahuluan',
                body:
                    'Aplikasi $_appName (selanjutnya disebut "Aplikasi") adalah '
                    'aplikasi portal orang tua/wali yang disediakan oleh $_developer '
                    '(selanjutnya disebut "Kami") untuk memantau perkembangan '
                    'santri/anak di pesantren. Kebijakan Privasi ini menjelaskan '
                    'data apa saja yang kami kumpulkan, bagaimana kami '
                    'menggunakannya, dan hak-hak Anda sebagai pengguna.',
              ),
              _Section(
                number: '2',
                title: 'Data yang Kami Kumpulkan',
                body:
                    'Untuk keperluan layanan, kami mengumpulkan data-data berikut '
                    'melalui input wali dan input dari sistem internal pesantren:',
                bullets: const [
                  'Data profil wali: nama lengkap, alamat email, nomor telepon/WhatsApp, dan password (disimpan terenkripsi).',
                  'Data anak/santri: nama lengkap, kelas, asrama, dan foto profil (diambil dari sistem internal pesantren).',
                  'Data izin: tanggal, jenis izin, alasan, lampiran foto, dan status persetujuan.',
                  'Data kesehatan: catatan kunjungan klinik, obat yang diberikan, dan diagnosa umum.',
                  'Data pelanggaran: catatan pelanggaran dan poin yang diberikan.',
                  'Data tahfidz: progress hafalan Al-Qur\'an, muroja\'ah, dan nilai tasmi\'.',
                  'Data absensi makan dan tap izin (jam keluar/masuk).',
                  'Token notifikasi Firebase Cloud Messaging (FCM) untuk pengiriman notifikasi push ke perangkat Anda.',
                ],
              ),
              _Section(
                number: '3',
                title: 'Tujuan Penggunaan Data',
                body:
                    'Data yang dikumpulkan digunakan untuk:',
                bullets: const [
                  'Autentikasi wali agar hanya wali sah yang dapat mengakses data anaknya.',
                  'Menampilkan progress pendidikan, kesehatan, dan pelanggaran anak secara real-time.',
                  'Mengirim notifikasi push terkait izin, pelanggaran, dan informasi penting pesantren.',
                  'Memfasilitasi pengajuan izin, penjemputan, dan komunikasi wali dengan pesantren.',
                  'Penyusunan laporan berkala untuk wali dan manajemen pesantren.',
                ],
              ),
              _Section(
                number: '4',
                title: 'Layanan Pihak Ketiga',
                body:
                    'Aplikasi menggunakan layanan pihak ketiga terpercaya untuk '
                    'menyediakan fitur tertentu. Pihak ketiga tersebut hanya '
                    'menerima data minimum yang diperlukan untuk layanannya:',
                bullets: const [
                  'Google Firebase Authentication — untuk autentikasi wali (email & password).',
                  'Google Firebase Cloud Messaging (FCM) — untuk mengirim notifikasi push ke perangkat wali. FCM memerlukan token perangkat yang dihasilkan oleh Google Play Services / Apple Push Notification Service.',
                  'Google Analytics for Firebase (opsional, jika diaktifkan) — statistik penggunaan aplikasi anonim.',
                ],
                footer:
                    'Kami TIDAK menjual, menyewakan, atau membagikan data wali atau '
                    'santri kepada pihak ketiga untuk keperluan pemasaran atau '
                    'periklanan.',
              ),
              _Section(
                number: '5',
                title: 'Hak Anda sebagai Wali',
                body:
                    'Sebagai wali, Anda memiliki hak-hak berikut:',
                bullets: const [
                  'Hak akses: Anda dapat melihat semua data anak Anda yang tersimpan di Aplikasi.',
                  'Hak koreksi: Anda dapat menghubungi pesantren untuk memperbaiki data wali yang tidak akurat.',
                  'Hak hapus: Anda dapat mengajukan permintaan untuk menghapus akun wali. Setelah akun dihapus, data wali dan akses ke data anak akan dinonaktifkan, namun data historis pesantren (akademik, pelanggaran) tetap disimpan sesuai kebijakan internal pesantren.',
                  'Hak menarik persetujuan: Anda dapat berhenti menggunakan Aplikasi kapan saja dengan menghapus Aplikasi dari perangkat Anda.',
                  'Hak bertanya: Anda dapat menghubungi Kami untuk pertanyaan apapun terkait data pribadi (kontak di bagian 9).',
                ],
              ),
              _Section(
                number: '6',
                title: 'Penyimpanan dan Keamanan Data',
                body:
                    'Data disimpan di server internal Ma\'had (pusat data Ma\'had '
                    'Tahfizh al-Qur\'an al-Imam as-Syathiby) yang terletak di '
                    'Cileungsi, Bogor, Indonesia. Kami menerapkan langkah-langkah '
                    'keamanan berikut untuk melindungi data Anda:',
                bullets: const [
                  'Password wali disimpan dalam bentuk hash terenkripsi (bukan plaintext).',
                  'Koneksi antara Aplikasi dan server menggunakan HTTPS/TLS.',
                  'Akses ke server dibatasi hanya untuk staff pesantren yang berwenang.',
                  'Backup database dilakukan secara berkala untuk mencegah kehilangan data.',
                ],
                footer:
                    'Data anak akan disimpan selama anak terdaftar sebagai '
                    'santri aktif di pesantren dan akan diarsipkan setelah '
                    'anak lulus/keluar sesuai kebijakan internal pesantren.',
              ),
              _Section(
                number: '7',
                title: 'Anak di Bawah 13 Tahun',
                body:
                    'Aplikasi ini tidak ditujukan untuk digunakan langsung oleh '
                    'anak di bawah 13 tahun. Semua data anak dikelola melalui '
                    'wali sah (orang tua/wali yang berwenang). Dengan '
                    'menggunakan Aplikasi ini, Anda sebagai wali menyatakan '
                    'bahwa Anda adalah orang tua/wali sah dari anak yang '
                    'datanya ditampilkan.',
              ),
              _Section(
                number: '8',
                title: 'Perubahan Kebijakan Privasi',
                body:
                    'Kami dapat memperbarui Kebijakan Privasi ini dari waktu ke '
                    'waktu untuk mencerminkan perubahan praktik atau karena '
                    'alasan operasional, hukum, atau regulasi. Versi terbaru '
                    'selalu tersedia di halaman ini. Perubahan material akan '
                    'dikomunikasikan melalui notifikasi dalam Aplikasi atau '
                    'saluran komunikasi pesantren.',
              ),
              _Section(
                number: '9',
                title: 'Hubungi Kami',
                body:
                    'Jika Anda memiliki pertanyaan, keluhan, atau permintaan '
                    'terkait Kebijakan Privasi atau data pribadi Anda, silakan '
                    'hubungi kami melalui:',
                bullets: const [
                  'Lembaga: $_developer',
                  'Alamat: Cileungsi, Kabupaten Bogor, Jawa Barat, Indonesia',
                  'Website: syathiby.id',
                  'Email & nomor kontak resmi: tersedia di website resmi Ma\'had.',
                ],
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: colorScheme.primaryContainer.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Icon(Icons.info_outline, color: colorScheme.primary),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        'Dengan menggunakan Aplikasi $_appName, '
                        'Anda menyetujui Kebijakan Privasi ini.',
                        style: TextStyle(
                          fontSize: 13,
                          color: colorScheme.onSurface,
                          height: 1.4,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _HeaderCard extends StatelessWidget {
  const _HeaderCard({
    required this.appName,
    required this.lastUpdated,
    required this.developer,
  });

  final String appName;
  final String lastUpdated;
  final String developer;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            colorScheme.primaryContainer,
            colorScheme.primaryContainer.withOpacity(0.5),
          ],
        ),
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
                  Icons.shield_outlined,
                  color: colorScheme.onPrimary,
                  size: 28,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  'Kebijakan Privasi',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: colorScheme.onPrimaryContainer,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            appName,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: colorScheme.onPrimaryContainer,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            developer,
            style: TextStyle(
              fontSize: 12,
              color: colorScheme.onPrimaryContainer.withOpacity(0.85),
            ),
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Icon(
                Icons.update,
                size: 14,
                color: colorScheme.onPrimaryContainer.withOpacity(0.7),
              ),
              const SizedBox(width: 4),
              Text(
                'Terakhir diperbarui: $lastUpdated',
                style: TextStyle(
                  fontSize: 12,
                  color: colorScheme.onPrimaryContainer.withOpacity(0.7),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _Section extends StatelessWidget {
  const _Section({
    required this.number,
    required this.title,
    required this.body,
    this.bullets,
    this.footer,
  });

  final String number;
  final String title;
  final String body;
  final List<String>? bullets;
  final String? footer;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 28,
                height: 28,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: colorScheme.primary,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  number,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: colorScheme.onPrimary,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: colorScheme.onSurface,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            body,
            style: TextStyle(
              fontSize: 14,
              height: 1.55,
              color: colorScheme.onSurface.withOpacity(0.85),
            ),
          ),
          if (bullets != null && bullets!.isNotEmpty) ...[
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
                          fontSize: 13.5,
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
          if (footer != null) ...[
            const SizedBox(height: 6),
            Text(
              footer!,
              style: TextStyle(
                fontSize: 13.5,
                height: 1.5,
                fontStyle: FontStyle.italic,
                color: colorScheme.onSurface.withOpacity(0.75),
              ),
            ),
          ],
        ],
      ),
    );
  }
}