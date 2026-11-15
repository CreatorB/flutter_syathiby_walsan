import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rabbaanii_portal/di/providers.dart';
import 'package:rabbaanii_portal/models/kantin/kantin_wali.dart';
import 'package:rabbaanii_portal/models/kantin/kantin_wali_repository.dart';
import 'package:rabbaanii_portal/presentation/saldo/saldo_widgets.dart';
import 'package:rabbaanii_portal/utils/keadaan_kosong.dart';

class JajanAnakScreen extends ConsumerStatefulWidget {
  const JajanAnakScreen({super.key});

  @override
  ConsumerState<JajanAnakScreen> createState() => _JajanAnakScreenState();
}

class _JajanAnakScreenState extends ConsumerState<JajanAnakScreen> {
  static const int _perHalaman = 30;

  final _scroll = ScrollController();
  final List<JajanTransaksi> _daftar = [];

  int? _idSiswa;
  late DateTimeRange _periode;
  int _saldo = 0;
  int _totalBelanja = 0;
  int _jumlah = 0;
  int _halaman = 0;
  bool _adaLagi = true;
  bool _memuat = false;
  Object? _galat;

  @override
  void initState() {
    super.initState();
    final sekarang = DateTime.now();
    _periode = DateTimeRange(
      start: sekarang.subtract(const Duration(days: 29)),
      end: sekarang,
    );
    _scroll.addListener(() {
      if (_scroll.position.pixels >= _scroll.position.maxScrollExtent - 200) {
        _muat();
      }
    });
  }

  @override
  void dispose() {
    _scroll.dispose();
    super.dispose();
  }

  String _ymd(DateTime d) =>
      '${d.year.toString().padLeft(4, '0')}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';

  Future<void> _mulaiUlang() async {
    setState(() {
      _daftar.clear();
      _halaman = 0;
      _adaLagi = true;
      _galat = null;
    });
    await _muat();
  }

  Future<void> _muat() async {
    if (_memuat || !_adaLagi || _idSiswa == null) return;
    setState(() => _memuat = true);
    final u = ref.read(getCurrentUserProvider);
    try {
      final h = await ref.read(kantinWaliRepositoryProvider).riwayatJajan(
            '${u?.key ?? ''}',
            '${u?.user ?? ''}',
            idSiswa: _idSiswa!,
            dari: _ymd(_periode.start),
            sampai: _ymd(_periode.end),
            page: _halaman + 1,
          );
      if (!mounted) return;
      setState(() {
        _halaman = _halaman + 1;
        _saldo = h.saldo;
        _totalBelanja = h.totalBelanja;
        _jumlah = h.jumlah;
        _daftar.addAll(h.transaksi);
        _adaLagi = h.transaksi.length >= _perHalaman && _daftar.length < h.jumlah;
        _galat = null;
      });
    } catch (e) {
      if (mounted) setState(() => _galat = e);
    } finally {
      if (mounted) setState(() => _memuat = false);
    }
  }

  Future<void> _pilihPeriode() async {
    final hasil = await showDateRangePicker(
      context: context,
      firstDate: DateTime.now().subtract(const Duration(days: 365)),
      lastDate: DateTime.now(),
      initialDateRange: _periode,
      helpText: 'Pilih rentang tanggal',
      saveText: 'Terapkan',
    );
    if (hasil != null) {
      _periode = hasil;
      await _mulaiUlang();
    }
  }

  @override
  Widget build(BuildContext context) {
    final anak = ref.watch(anakSaldoProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Jajan Anak')),
      body: anak.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(
            child: GagalMemuat(error: e, onCoba: () => ref.invalidate(anakSaldoProvider))),
        data: (daftarAnak) {
          if (daftarAnak.isEmpty) {
            return const Center(
              child: KeadaanKosong(
                judul: 'Belum ada data anak',
                keterangan: 'Tautkan santri terlebih dahulu di aplikasi.',
                ikon: Icons.person_outline,
              ),
            );
          }
          if (_idSiswa == null) {
            _idSiswa = daftarAnak.first.idSiswa;
            WidgetsBinding.instance.addPostFrameCallback((_) => _muat());
          }
          return _badan(context, daftarAnak);
        },
      ),
    );
  }

  Widget _badan(BuildContext context, List<AnakSaldo> daftarAnak) {
    final tema = Theme.of(context);
    return RefreshIndicator(
      onRefresh: _mulaiUlang,
      child: ListView(
        controller: _scroll,
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.all(16),
        children: [
          if (daftarAnak.length > 1)
            Wrap(
              spacing: 8,
              children: daftarAnak
                  .map((a) => ChoiceChip(
                        label: Text(a.namaSantri),
                        selected: a.idSiswa == _idSiswa,
                        onSelected: (_) {
                          setState(() => _idSiswa = a.idSiswa);
                          _mulaiUlang();
                        },
                      ))
                  .toList(),
            )
          else
            Text(daftarAnak.first.namaSantri, style: tema.textTheme.titleMedium),
          const SizedBox(height: 12),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Saldo saat ini'),
                  Text(formatRupiah(_saldo),
                      style: tema.textTheme.headlineSmall
                          ?.copyWith(fontWeight: FontWeight.bold)),
                  const Divider(height: 24),
                  Row(
                    children: [
                      Expanded(child: _ringkas('Total belanja', formatRupiah(_totalBelanja))),
                      Expanded(child: _ringkas('Jumlah transaksi', '$_jumlah')),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 8),
          OutlinedButton.icon(
            onPressed: _pilihPeriode,
            icon: const Icon(Icons.date_range),
            label: Text('${_ymd(_periode.start)}  s/d  ${_ymd(_periode.end)}'),
          ),
          const SizedBox(height: 12),
          if (_galat != null && _daftar.isEmpty)
            GagalMemuat(error: _galat!, onCoba: _mulaiUlang)
          else if (_daftar.isEmpty && _memuat)
            const Padding(
              padding: EdgeInsets.all(32),
              child: Center(child: CircularProgressIndicator()),
            )
          else if (_daftar.isEmpty)
            const KeadaanKosong(
              judul: 'Belum ada jajan pada periode ini',
              keterangan: 'Ubah rentang tanggal untuk melihat periode lain.',
              ikon: Icons.fastfood_outlined,
            )
          else ...[
            ..._daftar.map((t) => _KartuTransaksi(transaksi: t)),
            if (_memuat)
              const Padding(
                padding: EdgeInsets.all(16),
                child: Center(child: CircularProgressIndicator()),
              ),
            if (_galat != null)
              GagalMemuat(error: _galat!, onCoba: _muat),
          ],
        ],
      ),
    );
  }

  Widget _ringkas(String label, String nilai) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: Theme.of(context).textTheme.bodySmall),
          Text(nilai,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.w600)),
        ],
      );
}

class _KartuTransaksi extends StatelessWidget {
  const _KartuTransaksi({required this.transaksi});

  final JajanTransaksi transaksi;

  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text('${transaksi.tanggal}  ${transaksi.jam}',
                      style: tema.textTheme.bodySmall),
                ),
                Text(formatRupiah(transaksi.total),
                    style: tema.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 6),
            ...transaksi.item.map(
              (i) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 1),
                child: Row(
                  children: [
                    Expanded(child: Text('${i.jumlah} x ${i.nama}')),
                    Text(formatRupiah(i.subtotal)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 6),
            Text('Saldo sesudah: ${formatRupiah(transaksi.saldoSesudah)}',
                style: tema.textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}
