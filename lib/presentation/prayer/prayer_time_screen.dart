import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:rabbaanii_portal/models/prayer/syathiby_prayer.dart';
import 'package:rabbaanii_portal/presentation/prayer/wilayah_controller.dart';
import 'package:rabbaanii_portal/utils/extension/typography.dart';

/// Layar jadwal sholat.
///
/// === APA YANG BERUBAH 11 SEP 2026 ===
///
/// Sebelumnya layar ini memanggil `prayer-times-xi.vercel.app` — layanan
/// pihak ketiga — memakai koordinat GPS perangkat, lalu menghitung sendiri
/// tanggal hijriyah dan nama kotanya lewat geocoding.
///
/// Dua masalah yang membuatnya diganti:
///
///  1. Sumbernya milik orang lain. Kalau layanan itu berhenti, jadwal sholat
///     di aplikasi wali ikut mati dan pondok tidak bisa berbuat apa-apa.
///  2. Bergantung izin lokasi. Walsan disajikan sebagai WEB, dan di browser
///     izin lokasi sering ditolak atau tidak muncul sama sekali — saat itu
///     terjadi, layarnya kosong tanpa penjelasan apa pun.
///
/// Sekarang memakai API pondok sendiri (data Kemenag lewat equran.id, 517
/// kabupaten/kota, tersimpan di server). Tanpa izin lokasi, dan wali boleh
/// memilih kotanya sendiri kalau tidak tinggal di dekat pondok.
class PrayerTimeScreen extends HookConsumerWidget {
  const PrayerTimeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final jadwal = ref.watch(jadwalSholatProvider);
    final wilayah = ref.watch(wilayahSholatProvider);
    final sisa = useState<Duration?>(null);

    // Hitung mundur ke waktu sholat berikutnya. Sumbernya `countdown_seconds`
    // dari server, bukan hitungan sendiri dari jam lokal -- jam perangkat wali
    // bisa saja salah, dan hitungan yang meleset di layar jadwal sholat lebih
    // buruk daripada tidak ada hitungan.
    useEffect(() {
      final detik = jadwal.valueOrNull?.berikutnyaDetik;
      if (detik == null) return null;
      sisa.value = Duration(seconds: detik);
      final t = Timer.periodic(const Duration(seconds: 1), (_) {
        final n = sisa.value;
        if (n == null || n.inSeconds <= 0) return;
        sisa.value = n - const Duration(seconds: 1);
      });
      return t.cancel;
    }, [jadwal.valueOrNull?.berikutnyaDetik]);

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              jadwal.valueOrNull?.kota ?? 'Jadwal Sholat',
              style: context.titleMedium,
            ),
            Text(
              wilayah == null ? 'Mengikuti lokasi pondok' : wilayah.provinsi,
              style: context.titleSmall,
            ),
          ],
        ),
        actions: [
          IconButton(
            tooltip: 'Ganti wilayah',
            icon: const Icon(Icons.location_city_outlined),
            onPressed: () => _pilihWilayah(context, ref),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () => ref.refresh(jadwalSholatProvider.future),
        child: jadwal.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (e, _) => _Pesan(
            ikon: Icons.cloud_off_outlined,
            judul: 'Jadwal sholat belum bisa diambil',
            isi: 'Periksa koneksi internet, lalu tarik layar ke bawah untuk '
                'mencoba lagi.',
            aksi: () => ref.invalidate(jadwalSholatProvider),
          ),
          data: (d) {
            // Server menjawab sukses tapi tidak punya satu pun jam: wilayah itu
            // belum punya cadangan dan sumbernya sedang tidak bisa dihubungi.
            // JANGAN menampilkan jam apa pun di sini -- untuk waktu sholat,
            // angka yang salah lebih berbahaya daripada tidak ada angka.
            if (d.kosong) {
              return _Pesan(
                ikon: Icons.schedule_outlined,
                judul: 'Jadwal untuk ${d.kota} belum tersedia',
                isi: 'Pondok belum punya salinan jadwal untuk wilayah ini dan '
                    'sumber datanya sedang tidak bisa dihubungi. Coba lagi '
                    'nanti, atau pilih wilayah lain.',
                aksi: () => _pilihWilayah(context, ref),
                labelAksi: 'Pilih wilayah lain',
              );
            }
            return ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                if (d.berikutnyaNama != null) ...[
                  Center(
                    child: Text(d.berikutnyaNama!, style: context.titleLargeBold),
                  ),
                  const SizedBox(height: 8.0),
                  Center(
                    child: Text(
                      d.waktu[d.berikutnyaNama!.toLowerCase()] ?? '',
                      style: context.headlineLargeBold,
                    ),
                  ),
                  Center(
                    child: Text(
                      sisa.value == null ? '' : '${_hitungMundur(sisa.value!)} lagi',
                      style: context.titleMedium,
                    ),
                  ),
                  const SizedBox(height: 24.0),
                ],
                Center(child: Text(d.kota, style: context.titleMediumBold)),
                const SizedBox(height: 4.0),
                Center(
                  child: Text(_tanggalPanjang(d.tanggalMasehi),
                      style: context.titleSmall),
                ),
                Center(child: Text(d.hijriyah, style: context.titleSmall)),
                const SizedBox(height: 12.0),
                const Divider(),
                for (final e in _urutan)
                  if (d.waktu[e.$1] != null)
                    ListTile(
                      visualDensity:
                          const VisualDensity(horizontal: 0, vertical: -2),
                      title: Text(e.$2),
                      trailing: Text(d.waktu[e.$1]!, style: context.bodyLargeBold),
                    ),
                const SizedBox(height: 16.0),
                Center(
                  child: TextButton.icon(
                    onPressed: () => _pilihWilayah(context, ref),
                    icon: const Icon(Icons.location_city_outlined, size: 18),
                    label: Text(
                      wilayah == null
                          ? 'Tinggal di kota lain? Pilih wilayah'
                          : 'Ganti wilayah',
                    ),
                  ),
                ),
                const SizedBox(height: 8.0),
                Center(
                  child: Text(
                    'Sumber: Kemenag RI',
                    style: context.bodySmall,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  /// Urutan tampil + labelnya. Imsak/terbit/dhuha hanya muncul kalau
  /// sumbernya menyediakan -- data lama dari cadangan tidak punya itu.
  static const List<(String, String)> _urutan = [
    ('imsak', 'Imsak'),
    ('subuh', 'Shubuh'),
    ('terbit', 'Terbit'),
    ('dhuha', 'Dhuha'),
    ('dzuhur', 'Dzuhur'),
    ('ashar', 'Ashar'),
    ('maghrib', 'Maghrib'),
    ('isya', 'Isya'),
  ];

  static String _hitungMundur(Duration d) {
    final j = d.inHours;
    final m = d.inMinutes.remainder(60);
    final dt = d.inSeconds.remainder(60);
    if (j > 0) return '$j jam $m menit';
    if (m > 0) return '$m menit $dt detik';
    return '$dt detik';
  }

  static String _tanggalPanjang(String iso) {
    try {
      return DateFormat('EEEE, d MMMM y', 'id').format(DateTime.parse(iso));
    } catch (_) {
      // Kalau locale 'id' belum dimuat, jangan sampai seluruh layar gagal
      // hanya karena format tanggal.
      return iso;
    }
  }

  Future<void> _pilihWilayah(BuildContext context, WidgetRef ref) async {
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      builder: (_) => const _PemilihWilayah(),
    );
  }
}

class _Pesan extends StatelessWidget {
  final IconData ikon;
  final String judul;
  final String isi;
  final VoidCallback? aksi;
  final String labelAksi;

  const _Pesan({
    required this.ikon,
    required this.judul,
    required this.isi,
    this.aksi,
    this.labelAksi = 'Coba lagi',
  });

  @override
  Widget build(BuildContext context) {
    // ListView supaya tarik-untuk-menyegarkan tetap bekerja walau isinya sedikit.
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 64),
      children: [
        Icon(ikon, size: 56, color: Theme.of(context).disabledColor),
        const SizedBox(height: 16),
        Text(judul, textAlign: TextAlign.center, style: context.titleMediumBold),
        const SizedBox(height: 8),
        Text(isi, textAlign: TextAlign.center, style: context.bodyMedium),
        if (aksi != null) ...[
          const SizedBox(height: 16),
          Center(child: FilledButton(onPressed: aksi, child: Text(labelAksi))),
        ],
      ],
    );
  }
}

/// Pemilih wilayah: provinsi dulu, lalu kabupaten/kota.
///
/// Daftarnya diambil dari API pondok (`wilayah.php`), bukan dari daftar yang
/// ditanam di aplikasi -- kalau ditanam, ia akan basi tanpa ada yang tahu, dan
/// nama yang tidak dikenal server akan ditolak dengan galat yang membingungkan.
class _PemilihWilayah extends HookConsumerWidget {
  const _PemilihWilayah();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provinsiDipilih = useState<String?>(null);

    return DraggableScrollableSheet(
      initialChildSize: 0.7,
      maxChildSize: 0.9,
      expand: false,
      builder: (_, controller) {
        final judul = provinsiDipilih.value == null
            ? 'Pilih provinsi'
            : 'Pilih kabupaten/kota';
        return Column(
          children: [
            const SizedBox(height: 12),
            Container(
              width: 40,
              height: 4,
              decoration: BoxDecoration(
                color: Theme.of(context).dividerColor,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            ListTile(
              leading: provinsiDipilih.value == null
                  ? null
                  : IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () => provinsiDipilih.value = null,
                    ),
              title: Text(judul, style: context.titleMediumBold),
            ),
            if (provinsiDipilih.value == null)
              ListTile(
                leading: const Icon(Icons.home_outlined),
                title: const Text('Ikuti lokasi pondok'),
                subtitle: const Text('Cileungsi, Kabupaten Bogor'),
                onTap: () async {
                  await ref.read(wilayahSholatProvider.notifier).pilih(null);
                  if (context.mounted) Navigator.pop(context);
                },
              ),
            const Divider(height: 1),
            Expanded(
              child: provinsiDipilih.value == null
                  ? _Daftar(
                      isi: ref.watch(daftarProvinsiProvider),
                      controller: controller,
                      onTap: (v) => provinsiDipilih.value = v,
                    )
                  : _Daftar(
                      isi: ref.watch(
                          daftarKabkotaProvider(provinsiDipilih.value!)),
                      controller: controller,
                      onTap: (v) async {
                        await ref.read(wilayahSholatProvider.notifier).pilih(
                              Wilayah(
                                provinsi: provinsiDipilih.value!,
                                kabkota: v,
                              ),
                            );
                        if (context.mounted) Navigator.pop(context);
                      },
                    ),
            ),
          ],
        );
      },
    );
  }
}

class _Daftar extends StatelessWidget {
  final AsyncValue<List<String>> isi;
  final ScrollController controller;
  final void Function(String) onTap;

  const _Daftar({
    required this.isi,
    required this.controller,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return isi.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (e, _) => Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Text(
            'Daftar wilayah belum bisa diambil. Periksa koneksi internet.',
            textAlign: TextAlign.center,
            style: context.bodyMedium,
          ),
        ),
      ),
      data: (list) => ListView.separated(
        controller: controller,
        itemCount: list.length,
        separatorBuilder: (_, __) => const Divider(height: 1),
        itemBuilder: (_, i) => ListTile(
          title: Text(list[i]),
          onTap: () => onTap(list[i]),
        ),
      ),
    );
  }
}
