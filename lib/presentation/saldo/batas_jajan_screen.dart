import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rabbaanii_portal/di/providers.dart';
import 'package:rabbaanii_portal/models/kantin/kantin_wali.dart';
import 'package:rabbaanii_portal/models/kantin/kantin_wali_repository.dart';
import 'package:rabbaanii_portal/presentation/saldo/saldo_widgets.dart';
import 'package:rabbaanii_portal/utils/extension/ui.dart';
import 'package:rabbaanii_portal/utils/keadaan_kosong.dart';

/// Wali mengatur batas jajan harian per anak. 0 = ikut aturan pondok.
class BatasJajanScreen extends ConsumerStatefulWidget {
  const BatasJajanScreen({super.key});

  @override
  ConsumerState<BatasJajanScreen> createState() => _BatasJajanScreenState();
}

class _BatasJajanScreenState extends ConsumerState<BatasJajanScreen> {
  final _nominal = TextEditingController();

  int? _idSiswa;
  BatasJajan? _batas;
  Object? _galat;
  bool _memuat = false;
  bool _menyimpan = false;

  @override
  void dispose() {
    _nominal.dispose();
    super.dispose();
  }

  String _key() => '${ref.read(getCurrentUserProvider)?.key ?? ''}';
  String _noWali() => '${ref.read(getCurrentUserProvider)?.user ?? ''}';

  Future<void> _muat(int idSiswa) async {
    setState(() {
      _idSiswa = idSiswa;
      _memuat = true;
      _galat = null;
    });
    try {
      final b = await ref.read(kantinWaliRepositoryProvider).batas(_key(), _noWali(), idSiswa);
      if (!mounted) return;
      setState(() {
        _batas = b;
        _nominal.text = b.batasWali > 0 ? formatAngka(b.batasWali) : '';
        _memuat = false;
      });
    } catch (e) {
      if (!mounted) return;
      setState(() {
        _galat = e;
        _memuat = false;
      });
    }
  }

  Future<void> _simpan() async {
    final id = _idSiswa;
    if (id == null || _menyimpan) return;
    final nilai = parseNominal(_nominal.text);
    setState(() => _menyimpan = true);
    try {
      await ref.read(kantinWaliRepositoryProvider).setBatas(_key(), _noWali(), id, nilai);
      if (!mounted) return;
      context.showSnackBar(nilai == 0
          ? 'Batas Anda dihapus. Berlaku aturan pondok.'
          : 'Batas jajan harian disimpan.');
      await _muat(id);
    } catch (e) {
      if (mounted) context.showSnackBar(pesanKesalahan(e));
    } finally {
      if (mounted) setState(() => _menyimpan = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final anak = ref.watch(anakSaldoProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Batas Jajan Harian')),
      body: anak.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) =>
            GagalMemuat(error: e, onCoba: () => ref.invalidate(anakSaldoProvider)),
        data: (daftar) {
          if (daftar.isEmpty) {
            return const KeadaanKosong(
              judul: 'Belum ada data anak',
              keterangan: 'Tautkan santri terlebih dahulu di aplikasi.',
              ikon: Icons.person_outline,
            );
          }
          if (_idSiswa == null && !_memuat) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (mounted && _idSiswa == null) _muat(daftar.first.idSiswa);
            });
          }
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              DropdownButtonFormField<int>(
                value: _idSiswa,
                decoration: const InputDecoration(
                  labelText: 'Untuk anak',
                  border: OutlineInputBorder(),
                ),
                items: daftar
                    .map((a) => DropdownMenuItem(value: a.idSiswa, child: Text(a.namaSantri)))
                    .toList(),
                onChanged: (v) {
                  if (v != null) _muat(v);
                },
              ),
              const SizedBox(height: 16),
              if (_memuat)
                const Padding(
                  padding: EdgeInsets.all(24),
                  child: Center(child: CircularProgressIndicator()),
                )
              else if (_galat != null)
                GagalMemuat(error: _galat!, onCoba: () => _idSiswa == null ? null : _muat(_idSiswa!))
              else if (_batas != null) ..._isi(context, _batas!),
            ],
          );
        },
      ),
    );
  }

  List<Widget> _isi(BuildContext context, BatasJajan b) {
    String batas(int v) => v > 0 ? formatRupiah(v) : 'Tanpa batas';
    return [
      Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _baris('Batas pondok', batas(b.batasPondok)),
              _baris('Batas dari Anda', b.batasWali > 0 ? formatRupiah(b.batasWali) : 'Belum diatur'),
              _baris('Batas yang berlaku', batas(b.batasEfektif)),
              const Divider(),
              _baris('Terpakai hari ini', formatRupiah(b.terpakaiHariIni)),
              _baris('Sisa jatah hari ini', b.sisa == null ? 'Tanpa batas' : formatRupiah(b.sisa!)),
            ],
          ),
        ),
      ),
      const SizedBox(height: 16),
      TextField(
        controller: _nominal,
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly, _FormatRibuan()],
        decoration: const InputDecoration(
          labelText: 'Batas jajan per hari (Rp)',
          prefixText: 'Rp ',
          helperText: 'Kosongkan atau isi 0 untuk mengikuti aturan pondok. '
              'Tidak boleh melebihi batas pondok.',
          helperMaxLines: 3,
          border: OutlineInputBorder(),
        ),
      ),
      const SizedBox(height: 16),
      FilledButton(
        onPressed: _menyimpan ? null : _simpan,
        child: _menyimpan
            ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2))
            : const Text('Simpan Batas'),
      ),
    ];
  }

  Widget _baris(String label, String nilai) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(child: Text(label)),
            Text(nilai, style: const TextStyle(fontWeight: FontWeight.w600)),
          ],
        ),
      );
}

class _FormatRibuan extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue lama, TextEditingValue baru) {
    final angka = parseNominal(baru.text);
    if (baru.text.isEmpty) return baru;
    final teks = formatAngka(angka);
    return TextEditingValue(text: teks, selection: TextSelection.collapsed(offset: teks.length));
  }
}
