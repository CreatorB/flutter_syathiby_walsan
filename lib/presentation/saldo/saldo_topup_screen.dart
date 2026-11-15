import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rabbaanii_portal/models/kantin/kantin_wali.dart';
import 'package:rabbaanii_portal/models/kantin/kantin_wali_repository.dart';
import 'package:rabbaanii_portal/presentation/saldo/saldo_widgets.dart';
import 'package:rabbaanii_portal/routing/app_router.dart';
import 'package:rabbaanii_portal/utils/extension/ui.dart';
import 'package:rabbaanii_portal/utils/keadaan_kosong.dart';

class SaldoTopupScreen extends ConsumerWidget {
  const SaldoTopupScreen({super.key});

  Future<void> _muatUlang(WidgetRef ref) async {
    ref.invalidate(anakSaldoProvider);
    ref.invalidate(rekeningTopupProvider);
    ref.invalidate(riwayatTopupProvider);
    await Future.wait([
      ref.read(anakSaldoProvider.future).catchError((_) => <AnakSaldo>[]),
      ref.read(riwayatTopupProvider.future).catchError((_) => <TopupItem>[]),
    ]);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final anak = ref.watch(anakSaldoProvider);
    final rekening = ref.watch(rekeningTopupProvider);
    final riwayat = ref.watch(riwayatTopupProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Saldo & Top-up')),
      body: RefreshIndicator(
        onRefresh: () => _muatUlang(ref),
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.all(16),
          children: [
            _judul(context, 'Saldo Anak'),
            anak.when(
              loading: () => const _Memuat(),
              error: (e, _) =>
                  GagalMemuat(error: e, onCoba: () => ref.invalidate(anakSaldoProvider)),
              data: (daftar) => daftar.isEmpty
                  ? const KeadaanKosong(
                      judul: 'Belum ada data anak',
                      keterangan: 'Tautkan santri terlebih dahulu di aplikasi.',
                      ikon: Icons.person_outline,
                    )
                  : Column(children: [
                      for (final a in daftar.where((x) => x.berhutang))
                        BannerHutang(
                          anak: a,
                          onLunasi: () => context.pushNamed(
                            AppRoute.topupForm.name,
                            queryParameters: {'anak': '${a.idSiswa}', 'nominal': '${a.hutang}'},
                          ).then((hasil) {
                            if (hasil == true) {
                              ref.invalidate(riwayatTopupProvider);
                              ref.invalidate(anakSaldoProvider);
                            }
                          }),
                        ),
                      ...daftar.map((a) => _KartuSaldo(anak: a)),
                    ]),
            ),
            const SizedBox(height: 16),
            _judul(context, 'Rekening Tujuan Transfer'),
            rekening.when(
              loading: () => const _Memuat(),
              error: (e, _) => GagalMemuat(
                  error: e, onCoba: () => ref.invalidate(rekeningTopupProvider)),
              data: (d) => d.rekening.isEmpty
                  ? const KeadaanKosong(
                      judul: 'Rekening belum tersedia',
                      keterangan: 'Hubungi admin pondok.',
                      ikon: Icons.account_balance_outlined,
                    )
                  : Column(children: d.rekening.map((r) => _KartuRekening(rekening: r)).toList()),
            ),
            const SizedBox(height: 12),
            FilledButton.icon(
              onPressed: () => context.pushNamed(AppRoute.topupForm.name).then((hasil) {
                if (hasil == true) {
                  ref.invalidate(riwayatTopupProvider);
                }
              }),
              icon: const Icon(Icons.add_card),
              label: const Text('Isi Saldo'),
            ),
            const SizedBox(height: 24),
            _judul(context, 'Riwayat Top-up'),
            riwayat.when(
              loading: () => const _Memuat(),
              error: (e, _) => GagalMemuat(
                  error: e, onCoba: () => ref.invalidate(riwayatTopupProvider)),
              data: (daftar) => daftar.isEmpty
                  ? const KeadaanKosong(
                      judul: 'Belum ada pengajuan top-up',
                      keterangan: 'Pengajuan yang Anda kirim akan muncul di sini.',
                      ikon: Icons.receipt_long_outlined,
                    )
                  : Column(children: daftar.map((t) => _BarisTopup(item: t)).toList()),
            ),
          ],
        ),
      ),
    );
  }

  Widget _judul(BuildContext context, String teks) => Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: Text(teks, style: Theme.of(context).textTheme.titleMedium),
      );
}

class _Memuat extends StatelessWidget {
  const _Memuat();

  @override
  Widget build(BuildContext context) => const Padding(
        padding: EdgeInsets.all(24),
        child: Center(child: CircularProgressIndicator()),
      );
}

class _KartuSaldo extends StatelessWidget {
  const _KartuSaldo({required this.anak});

  final AnakSaldo anak;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const CircleAvatar(child: Icon(Icons.person)),
        title: Text(anak.namaSantri),
        subtitle: Text(anak.nis.isEmpty ? 'NIS belum tercatat' : 'NIS ${anak.nis}'
            '${anak.adaKartu ? '' : ' • kartu belum terdaftar'}'),
        trailing: TeksSaldo(anak.saldo),
      ),
    );
  }
}

class _KartuRekening extends StatelessWidget {
  const _KartuRekening({required this.rekening});

  final RekeningTopup rekening;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(rekening.bank, style: Theme.of(context).textTheme.labelLarge),
            const SizedBox(height: 4),
            Row(
              children: [
                Expanded(
                  child: SelectableText(
                    rekening.noRekening,
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.bold, letterSpacing: 1),
                  ),
                ),
                TextButton.icon(
                  onPressed: () async {
                    await Clipboard.setData(ClipboardData(text: rekening.noRekening));
                    if (context.mounted) context.showSnackBar('Nomor rekening disalin');
                  },
                  icon: const Icon(Icons.copy, size: 18),
                  label: const Text('Salin'),
                ),
              ],
            ),
            Text('a.n. ${rekening.atasNama}'),
          ],
        ),
      ),
    );
  }
}

class _BarisTopup extends StatelessWidget {
  const _BarisTopup({required this.item});

  final TopupItem item;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    formatRupiah(item.nominal),
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                ChipStatusTopup(label: item.labelStatus, status: item.status),
              ],
            ),
            const SizedBox(height: 6),
            Text('${item.namaSantri} • ${item.kode}'),
            Text('Pengirim: ${item.namaPengirim}'),
            Text(
              item.diajukanPada,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            if (item.ditolak && item.alasanTolak.isNotEmpty) ...[
              const SizedBox(height: 6),
              Text(
                'Alasan penolakan: ${item.alasanTolak}',
                style: TextStyle(color: Colors.red.shade700),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
