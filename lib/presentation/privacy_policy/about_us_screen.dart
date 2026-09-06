import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Kami'),
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
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: colorScheme.primary,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        Icons.info_outline,
                        color: colorScheme.onPrimary,
                        size: 28,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ma\'had Tahfizh',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: colorScheme.onPrimaryContainer,
                            ),
                          ),
                          Text(
                            'al-Qur\'an al-Imam as-Syathiby',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: colorScheme.onPrimaryContainer,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              _Section(
                title: 'Tentang Pesantren',
                body:
                    'Ma\'had Tahfizh al-Qur\'an al-Imam as-Syathiby '
                    '(selanjutnya disebut "Pesantren") adalah lembaga '
                    'pendidikan Islam yang berlokasi di Cileungsi, '
                    'Kabupaten Bogor, Jawa Barat, Indonesia. Pesantren '
                    'berkomitmen untuk mendidik generasi Qur\'an yang '
                    'berakhlak mulia, berilmu, dan bermanfaat bagi '
                    'umat.',
              ),
              _Section(
                title: 'Visi',
                body:
                    'Menjadi lembaga tahfizh al-Qur\'an unggulan yang '
                    'melahirkan huffazh yang berakhlakul karimah, '
                    'berpengetahuan luas, dan berkontribusi positif '
                    'bagi masyarakat.',
              ),
              _Section(
                title: 'Misi',
                body:
                    'Menyelenggarakan pendidikan tahfizh al-Qur\'an yang '
                    'bermutu dengan metode yang teruji dan sanad yang '
                    'bersambung; membina karakter islami; serta '
                    'mendorong pengembangan potensi akademik dan '
                    'non-akademik santri.',
              ),
              _Section(
                title: 'Tentang Aplikasi Walsan',
                body:
                    'Aplikasi Walsan (Rabbaanii Portal Syathiby) adalah '
                    'portal digital yang disediakan oleh Pesantren untuk '
                    'orang tua/wali memantau perkembangan anak mereka '
                    'yang sedang menempuh pendidikan di Pesantren. '
                    'Melalui aplikasi ini, wali dapat melihat progress '
                    'tahfizh, catatan izin, catatan kesehatan, pelanggaran, '
                    'dan berbagai informasi penting lainnya secara '
                    'real-time.',
              ),
              _Section(
                title: 'Lokasi',
                body:
                    'Cileungsi, Kabupaten Bogor, Provinsi Jawa Barat, '
                    'Indonesia. Informasi alamat lengkap dan kontak resmi '
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
  const _Section({required this.title, required this.body});

  final String title;
  final String body;

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
        ],
      ),
    );
  }
}