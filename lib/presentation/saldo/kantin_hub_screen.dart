import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rabbaanii_portal/models/kantin/kantin_wali.dart';
import 'package:rabbaanii_portal/models/kantin/kantin_wali_repository.dart';
import 'package:rabbaanii_portal/presentation/saldo/saldo_widgets.dart';
import 'package:rabbaanii_portal/routing/app_router.dart';

/// Menu induk "Kantin": ringkasan saldo anak + pintu ke submenu.
class KantinHubScreen extends ConsumerWidget {
  const KantinHubScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final anak = ref.watch(anakSaldoProvider);
    final tema = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Kantin')),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(anakSaldoProvider);
          await ref.read(anakSaldoProvider.future).catchError((_) => <AnakSaldo>[]);
        },
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.all(16),
          children: [
            Text('Saldo Anak', style: tema.textTheme.titleMedium),
            const SizedBox(height: 8),
            anak.when(
              loading: () => const Padding(
                padding: EdgeInsets.all(24),
                child: Center(child: CircularProgressIndicator()),
              ),
              error: (e, _) =>
                  GagalMemuat(error: e, onCoba: () => ref.invalidate(anakSaldoProvider)),
              data: (daftar) => Column(
                children: daftar
                    .map((a) => Card(
                          child: ListTile(
                            leading: const CircleAvatar(child: Icon(Icons.person)),
                            title: Text(a.namaSantri),
                            subtitle: Text(a.adaKartu ? 'Kartu terdaftar' : 'Kartu belum terdaftar'),
                            trailing: Text(
                              formatRupiah(a.saldo),
                              style: tema.textTheme.titleMedium
                                  ?.copyWith(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ))
                    .toList(),
              ),
            ),
            const SizedBox(height: 16),
            _Submenu(
              ikon: Icons.account_balance_wallet,
              judul: 'Saldo & Top-up',
              keterangan: 'Isi saldo dengan bukti transfer dan pantau statusnya',
              rute: AppRoute.saldoTopup.name,
            ),
            _Submenu(
              ikon: Icons.receipt_long,
              judul: 'Riwayat Jajan',
              keterangan: 'Daftar belanja anak di kantin beserta sisa saldo',
              rute: AppRoute.jajanAnak.name,
            ),
            _Submenu(
              ikon: Icons.restaurant_menu,
              judul: 'Menu & Harga',
              keterangan: 'Barang yang dijual kantin dan harganya',
              rute: AppRoute.kantinKatalog.name,
            ),
            _Submenu(
              ikon: Icons.tune,
              judul: 'Batas Jajan Harian',
              keterangan: 'Atur batas jajan per hari untuk setiap anak',
              rute: AppRoute.kantinBatas.name,
            ),
          ],
        ),
      ),
    );
  }
}

class _Submenu extends StatelessWidget {
  const _Submenu({
    required this.ikon,
    required this.judul,
    required this.keterangan,
    required this.rute,
  });

  final IconData ikon;
  final String judul;
  final String keterangan;
  final String rute;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(ikon, size: 32, color: Theme.of(context).colorScheme.primary),
        title: Text(judul, style: const TextStyle(fontWeight: FontWeight.w600)),
        subtitle: Text(keterangan),
        trailing: const Icon(Icons.chevron_right),
        onTap: () => context.pushNamed(rute),
      ),
    );
  }
}
