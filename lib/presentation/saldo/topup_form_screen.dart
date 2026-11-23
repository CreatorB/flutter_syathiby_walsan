import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:rabbaanii_portal/di/providers.dart';
import 'package:rabbaanii_portal/models/kantin/kantin_wali.dart';
import 'package:rabbaanii_portal/models/kantin/kantin_wali_repository.dart';
import 'package:rabbaanii_portal/presentation/saldo/saldo_widgets.dart';
import 'package:rabbaanii_portal/utils/extension/ui.dart';
import 'package:rabbaanii_portal/utils/kompres_gambar.dart';

const int _batasBuktiByte = 5 * 1024 * 1024;

/// Memformat angka yang diketik menjadi pemisah ribuan: 1250000 -> 1.250.000
class PemisahRibuan extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    final angka = parseNominal(newValue.text);
    if (angka == 0) return const TextEditingValue();
    final teks = formatAngka(angka);
    return TextEditingValue(
      text: teks,
      selection: TextSelection.collapsed(offset: teks.length),
    );
  }
}

class TopupFormScreen extends ConsumerStatefulWidget {
  const TopupFormScreen({super.key, this.idSiswaAwal, this.nominalAwal});

  /// Anak terpilih awal (mis. dari tombol "Lunasi Sekarang").
  final int? idSiswaAwal;

  /// Nominal terisi awal (mis. sebesar hutang).
  final int? nominalAwal;

  @override
  ConsumerState<TopupFormScreen> createState() => _TopupFormScreenState();
}

class _TopupFormScreenState extends ConsumerState<TopupFormScreen> {
  final _form = GlobalKey<FormState>();
  final _nominal = TextEditingController();
  final _pengirim = TextEditingController();
  final _catatan = TextEditingController();
  final _picker = ImagePicker();

  int? _idSiswa;
  int? _idRekening;
  DateTime _tanggal = DateTime.now();
  Uint8List? _bukti;
  String _namaBerkas = 'bukti.jpg';
  bool _mengirim = false;

  @override
  void initState() {
    super.initState();
    _idSiswa = widget.idSiswaAwal;
    final n = widget.nominalAwal;
    if (n != null && n > 0) _nominal.text = formatAngka(n);
  }

  @override
  void dispose() {
    _nominal.dispose();
    _pengirim.dispose();
    _catatan.dispose();
    super.dispose();
  }

  Future<void> _pilihFoto(ImageSource sumber) async {
    try {
      final berkas = await _picker.pickImage(
        source: sumber,
        maxWidth: 1600,
        maxHeight: 1600,
        imageQuality: 80,
      );
      if (berkas == null) return;
      // Kompres sebelum dikirim. Di web, image_picker mengabaikan
      // maxWidth/imageQuality, jadi tanpa langkah ini bukti transfer bisa
      // 5 MB dan membebani server.
      final bytes = await kompresGambarUntukUnggah(await berkas.readAsBytes());
      if (bytes.length > _batasBuktiByte) {
        if (mounted) {
          context.showSnackBar(
              'Ukuran foto masih lebih dari 5 MB. Pilih foto lain atau potong bagian yang perlu saja.',
              isErrorMessage: true);
        }
        return;
      }
      setState(() {
        _bukti = bytes;
        _namaBerkas = berkas.name.isEmpty ? 'bukti.jpg' : berkas.name;
      });
    } catch (e) {
      if (mounted) {
        context.showSnackBar('Foto tidak dapat dibuka: $e', isErrorMessage: true);
      }
    }
  }

  void _menuFoto() {
    showModalBottomSheet<void>(
      context: context,
      builder: (ctx) => SafeArea(
        child: Wrap(
          children: [
            ListTile(
              leading: const Icon(Icons.photo_library_outlined),
              title: const Text('Pilih dari galeri'),
              onTap: () {
                Navigator.pop(ctx);
                _pilihFoto(ImageSource.gallery);
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo_camera_outlined),
              title: const Text('Ambil foto'),
              onTap: () {
                Navigator.pop(ctx);
                _pilihFoto(ImageSource.camera);
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _pilihTanggal() async {
    final hasil = await showDatePicker(
      context: context,
      initialDate: _tanggal,
      firstDate: DateTime.now().subtract(const Duration(days: 30)),
      lastDate: DateTime.now(),
    );
    if (hasil != null) setState(() => _tanggal = hasil);
  }

  String _ymd(DateTime d) =>
      '${d.year.toString().padLeft(4, '0')}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';

  Future<void> _kirim(AturanTopup aturan) async {
    if (!_form.currentState!.validate()) return;
    if (_bukti == null) {
      context.showSnackBar('Foto bukti transfer wajib diunggah.', isErrorMessage: true);
      return;
    }
    final u = ref.read(getCurrentUserProvider);
    setState(() => _mengirim = true);
    try {
      final hasil = await ref.read(kantinWaliRepositoryProvider).ajukanTopup(
            key: '${u?.key ?? ''}',
            noWali: '${u?.user ?? ''}',
            idSiswa: _idSiswa!,
            nominal: parseNominal(_nominal.text),
            namaPengirim: _pengirim.text.trim(),
            idRekening: _idRekening!,
            tanggalTransfer: _ymd(_tanggal),
            catatan: _catatan.text.trim(),
            bytesBukti: _bukti!,
            namaBerkas: _namaBerkas,
          );
      if (!mounted) return;
      await showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (ctx) => AlertDialog(
          title: const Text('Pengajuan terkirim'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Kode pengajuan Anda:'),
              const SizedBox(height: 4),
              SelectableText(hasil.kode,
                  style: Theme.of(ctx)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold)),
              const SizedBox(height: 12),
              const Text(
                  'Saldo akan bertambah setelah admin keuangan memverifikasi bukti transfer. '
                  'Pantau statusnya di Riwayat Top-up.'),
            ],
          ),
          actions: [
            FilledButton(
              onPressed: () => Navigator.pop(ctx),
              child: const Text('Tutup'),
            ),
          ],
        ),
      );
      if (mounted) context.pop(true);
    } catch (e) {
      if (!mounted) return;
      if (sesiHabis(e)) {
        clearSessionAndRedirectToLogin(context);
      } else {
        context.showSnackBar(pesanKesalahan(e), isErrorMessage: true);
      }
    } finally {
      if (mounted) setState(() => _mengirim = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final anak = ref.watch(anakSaldoProvider);
    final rekening = ref.watch(rekeningTopupProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Isi Saldo')),
      body: anak.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) =>
            Center(child: GagalMemuat(error: e, onCoba: () => ref.invalidate(anakSaldoProvider))),
        data: (daftarAnak) => rekening.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (e, _) => Center(
              child: GagalMemuat(error: e, onCoba: () => ref.invalidate(rekeningTopupProvider))),
          data: (data) => _isi(context, daftarAnak, data),
        ),
      ),
    );
  }

  Widget _isi(BuildContext context, List<AnakSaldo> daftarAnak, DataRekeningTopup data) {
    if (daftarAnak.isEmpty || data.rekening.isEmpty) {
      return const Center(
        child: Padding(
          padding: EdgeInsets.all(32),
          child: Text(
            'Top-up belum dapat dilakukan: data anak atau rekening tujuan belum tersedia.',
            textAlign: TextAlign.center,
          ),
        ),
      );
    }
    if (_idSiswa == null || !daftarAnak.any((a) => a.idSiswa == _idSiswa)) {
      _idSiswa = daftarAnak.first.idSiswa;
    }
    _idRekening ??= data.rekening.first.idRekening;
    final anakTerpilih = daftarAnak.firstWhere((a) => a.idSiswa == _idSiswa);
    final minAnak =
        anakTerpilih.topupMinEfektif > 0 ? anakTerpilih.topupMinEfektif : data.aturan.min;
    final aturan = AturanTopup(min: minAnak, maks: data.aturan.maks);

    return Form(
      key: _form,
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          DropdownButtonFormField<int>(
            value: _idSiswa,
            decoration: const InputDecoration(labelText: 'Untuk anak', border: OutlineInputBorder()),
            items: daftarAnak
                .map((a) => DropdownMenuItem(value: a.idSiswa, child: Text(a.namaSantri)))
                .toList(),
            onChanged: (v) => setState(() => _idSiswa = v),
          ),
          if (anakTerpilih.berhutang) ...[
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.red.shade50,
                border: Border.all(color: Colors.red.shade200),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                'Ananda memiliki hutang kantin ${formatRupiah(anakTerpilih.hutang)}. '
                'Top-up akan melunasi hutang lebih dulu; sisanya menjadi saldo.',
                style: TextStyle(color: Colors.red.shade900),
              ),
            ),
          ],
          const SizedBox(height: 14),
          TextFormField(
            controller: _nominal,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly, PemisahRibuan()],
            decoration: InputDecoration(
              labelText: 'Nominal transfer',
              prefixText: 'Rp ',
              helperText:
                  'Minimal ${formatRupiah(aturan.min)}, maksimal ${formatRupiah(aturan.maks)}'
                  '${anakTerpilih.berhutang ? '. Top-up melunasi hutang lebih dulu.' : ''}',
              border: const OutlineInputBorder(),
            ),
            validator: (v) {
              final n = parseNominal(v ?? '');
              if (n == 0) return 'Nominal wajib diisi';
              if (n < aturan.min) return 'Minimal ${formatRupiah(aturan.min)}';
              if (n > aturan.maks) return 'Maksimal ${formatRupiah(aturan.maks)}';
              return null;
            },
          ),
          const SizedBox(height: 14),
          TextFormField(
            controller: _pengirim,
            textCapitalization: TextCapitalization.words,
            decoration: const InputDecoration(
              labelText: 'Nama pengirim (atas nama rekening yang dipakai transfer)',
              helperText: 'Harus sama dengan nama di bukti transfer agar mudah dicek',
              border: OutlineInputBorder(),
            ),
            validator: (v) => (v ?? '').trim().length < 3 ? 'Nama pengirim wajib diisi' : null,
          ),
          const SizedBox(height: 14),
          DropdownButtonFormField<int>(
            value: _idRekening,
            isExpanded: true,
            decoration:
                const InputDecoration(labelText: 'Rekening tujuan', border: OutlineInputBorder()),
            items: data.rekening
                .map((r) => DropdownMenuItem(
                      value: r.idRekening,
                      child: Text('${r.bank} - ${r.noRekening}', overflow: TextOverflow.ellipsis),
                    ))
                .toList(),
            onChanged: (v) => setState(() => _idRekening = v),
          ),
          const SizedBox(height: 14),
          InkWell(
            onTap: _pilihTanggal,
            child: InputDecorator(
              decoration: const InputDecoration(
                labelText: 'Tanggal transfer',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.calendar_today),
              ),
              child: Text(_ymd(_tanggal)),
            ),
          ),
          const SizedBox(height: 14),
          TextFormField(
            controller: _catatan,
            maxLines: 2,
            decoration: const InputDecoration(
                labelText: 'Catatan (opsional)', border: OutlineInputBorder()),
          ),
          const SizedBox(height: 14),
          Text('Foto bukti transfer', style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 8),
          if (_bukti != null)
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.memory(_bukti!, height: 220, fit: BoxFit.cover),
            ),
          const SizedBox(height: 8),
          OutlinedButton.icon(
            onPressed: _mengirim ? null : _menuFoto,
            icon: const Icon(Icons.upload_file),
            label: Text(_bukti == null ? 'Unggah bukti transfer' : 'Ganti foto'),
          ),
          const SizedBox(height: 20),
          FilledButton(
            onPressed: _mengirim ? null : () => _kirim(aturan),
            child: _mengirim
                ? const SizedBox(
                    height: 20, width: 20, child: CircularProgressIndicator(strokeWidth: 2))
                : const Text('Kirim Pengajuan'),
          ),
        ],
      ),
    );
  }
}
