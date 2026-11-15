import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rabbaanii_portal/models/kantin/kantin_wali.dart';
import 'package:rabbaanii_portal/models/kantin/kantin_wali_repository.dart';
import 'package:rabbaanii_portal/presentation/saldo/saldo_widgets.dart';
import 'package:rabbaanii_portal/utils/keadaan_kosong.dart';

/// Katalog produk kantin (hanya baca) dengan pencarian lokal.
class KatalogKantinScreen extends ConsumerStatefulWidget {
  const KatalogKantinScreen({super.key});

  @override
  ConsumerState<KatalogKantinScreen> createState() => _KatalogKantinScreenState();
}

class _KatalogKantinScreenState extends ConsumerState<KatalogKantinScreen> {
  String _cari = '';

  @override
  Widget build(BuildContext context) {
    final katalog = ref.watch(katalogKantinProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Menu & Harga')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 4),
            child: TextField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Cari nama barang',
                border: OutlineInputBorder(),
              ),
              onChanged: (v) => setState(() => _cari = v.trim().toLowerCase()),
            ),
          ),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async {
                ref.invalidate(katalogKantinProvider);
                await ref
                    .read(katalogKantinProvider.future)
                    .catchError((_) => <ProdukKatalog>[]);
              },
              child: katalog.when(
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (e, _) => ListView(children: [
                  GagalMemuat(error: e, onCoba: () => ref.invalidate(katalogKantinProvider)),
                ]),
                data: (semua) {
                  final daftar = semua
                      .where((p) => _cari.isEmpty || p.nama.toLowerCase().contains(_cari))
                      .toList();
                  if (daftar.isEmpty) {
                    return ListView(children: [
                      KeadaanKosong(
                        judul: semua.isEmpty ? 'Belum ada barang' : 'Barang tidak ditemukan',
                        keterangan: semua.isEmpty
                            ? 'Kantin belum mengisi daftar barang.'
                            : 'Coba kata kunci lain.',
                        ikon: Icons.restaurant_menu,
                      ),
                    ]);
                  }
                  return ListView.separated(
                    physics: const AlwaysScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(16),
                    itemCount: daftar.length,
                    separatorBuilder: (_, __) => const Divider(height: 1),
                    itemBuilder: (context, i) {
                      final p = daftar[i];
                      return ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text(p.nama,
                            style: TextStyle(
                                color: p.tersedia ? null : Theme.of(context).disabledColor)),
                        subtitle: p.kategori.isEmpty ? null : Text(p.kategori),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(formatRupiah(p.harga),
                                style: const TextStyle(fontWeight: FontWeight.bold)),
                            if (!p.tersedia)
                              Text('Habis',
                                  style: TextStyle(
                                      color: Colors.red.shade700,
                                      fontWeight: FontWeight.w600)),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
