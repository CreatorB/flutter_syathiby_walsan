import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rabbaanii_portal/di/providers.dart';
import 'package:rabbaanii_portal/models/notifikasi/notifikasi.dart';
import 'package:rabbaanii_portal/models/service_injection.dart';

/// Satu blok notifikasi: satu MINGGU (server yang menentukan batasnya).
class BlokMinggu {
  const BlokMinggu({
    required this.week,
    required this.label,
    required this.items,
  });

  final int week;
  final String label;
  final List<Notifikasi> items;
}

/// Keadaan daftar notifikasi wali (dimuat per minggu).
///
/// Dipakai sebagai state agar setiap perubahan memicu rebuild widget yang
/// berbeda -- bukan menyimpan daftar di dalam notifier.
class NotifikasiListState {
  const NotifikasiListState({
    this.blok = const <BlokMinggu>[],
    this.adaLagi = true,
    this.loading = false,
    this.unread = 0,
    this.total = 0,
  });

  /// Notifikasi yang sudah dimuat, dikelompokkan per minggu.
  final List<BlokMinggu> blok;

  /// Masih ada minggu yang lebih lama belum dimuat?
  final bool adaLagi;
  final bool loading;

  /// Jumlah notifikasi yang belum dibaca (dari server, bukan dihitung dari
  /// daftar yang sudah dimuat -- daftar hanya berisi sebagian minggu).
  final int unread;

  /// Jumlah seluruh notifikasi.
  final int total;

  int get jumlahItem => blok.fold(0, (total, b) => total + b.items.length);

  NotifikasiListState copyWith({
    List<BlokMinggu>? blok,
    bool? adaLagi,
    bool? loading,
    int? unread,
    int? total,
  }) {
    return NotifikasiListState(
      blok: blok ?? this.blok,
      adaLagi: adaLagi ?? this.adaLagi,
      loading: loading ?? this.loading,
      unread: unread ?? this.unread,
      total: total ?? this.total,
    );
  }
}

/// Daftar notifikasi wali dengan pagination (muat halaman berikutnya saat
/// layar di-scroll ke bawah).
///
/// Identitas wali: `key` (id_session yang menandai SANATRI) +
/// `noWali` (nomor HP wali yang sedang login). Kunci sesi dipakai bersama
/// seluruh wali seorang santri, jadi nomor wali WAJIB ikut dikirim -- tanpa
/// itu server tidak tahu lonceng mana yang harus dibuka.
class NotifikasiList extends Notifier<NotifikasiListState> {
  static const int perHalaman = 20;

  @override
  NotifikasiListState build() => const NotifikasiListState();

  /// Muat ulang dari awal (tarik ke bawah).
  Future<void> muatAwal(String key, String noWali) async {
    if (!_siap(key, noWali)) return;
    state = state.copyWith(loading: true);
    try {
      final hasil = await ref
          .read(notifikasiServiceProvider)
          .getNotifikasi(key, noWali, 'list', 0);
      final data = hasil.notifikasi ?? const <Notifikasi>[];
      state = NotifikasiListState(
        blok: <BlokMinggu>[
          BlokMinggu(
            week: hasil.week ?? 0,
            label: hasil.label ?? 'Pekan ini',
            items: data,
          ),
        ],
        adaLagi: hasil.adaLagi ?? false,
        loading: false,
        unread: hasil.unread ?? 0,
        total: hasil.total ?? 0,
      );
    } catch (e) {
      debugPrint('Gagal memuat daftar notifikasi: $e');
      state = state.copyWith(loading: false);
    }
  }

  /// Muat minggu berikutnya (dipanggil saat nearing akhir daftar).
  Future<void> muatMingguBerikutnya(String key, String noWali) async {
    if (!_siap(key, noWali)) return;
    if (state.loading || !state.adaLagi) return;
    final next = (state.blok.isEmpty ? 0 : state.blok.last.week) + 1;
    state = state.copyWith(loading: true);
    try {
      final hasil = await ref
          .read(notifikasiServiceProvider)
          .getNotifikasi(key, noWali, 'list', next);
      final data = hasil.notifikasi ?? const <Notifikasi>[];
      state = state.copyWith(
        blok: <BlokMinggu>[
          ...state.blok,
          BlokMinggu(
            week: hasil.week ?? next,
            label: hasil.label ?? 'Minggu ${hasil.week ?? next}',
            items: data,
          ),
        ],
        adaLagi: hasil.adaLagi ?? false,
        loading: false,
        unread: hasil.unread ?? state.unread,
        total: hasil.total ?? state.total,
      );
    } catch (e) {
      debugPrint('Gagal memuat minggu notifikasi berikutnya: $e');
      state = state.copyWith(loading: false);
    }
  }

  /// Tandai semua notifikasi di daftar sebagai terbaca (perubahan lokal).
  void tandaiSemuaTerbacaDiDaftar() {
    if (state.blok.isEmpty) return;
    final blok = state.blok.map((b) {
      return BlokMinggu(
        week: b.week,
        label: b.label,
        items: b.items
            .map(
              (n) => (n.status ?? 'baru') == 'dibaca'
                  ? n
                  : n.copyWith(
                      status: 'dibaca',
                      readAt: DateTime.now().toString(),
                    ),
            )
            .toList(),
      );
    }).toList();
    state = state.copyWith(blok: blok, unread: 0);
  }

  /// Tandai satu notifikasi terbaca di daftar (tanpa menambah ulang).
  void tandaiTerbacaDiDaftar(int id) {
    if (state.blok.isEmpty) return;
    var adaUbah = false;
    var belumTersisa = 0;
    final blok = state.blok.map((b) {
      final items = b.items.map((n) {
        if ((n.id ?? 0) == id && (n.status ?? 'baru') != 'dibaca') {
          adaUbah = true;
          return n.copyWith(status: 'dibaca', readAt: DateTime.now().toString());
        }
        return n;
      }).toList();
      belumTersisa += items.where((n) => (n.status ?? 'baru') == 'baru').length;
      return BlokMinggu(week: b.week, label: b.label, items: items);
    }).toList();
    if (adaUbah) {
      state = state.copyWith(blok: blok, unread: belumTersisa);
    }
  }

  bool _siap(String key, String noWali) =>
      key.isNotEmpty && key != 'null' && noWali.isNotEmpty && noWali != 'null';
}

/// Detail satu notifikasi wali.
///
/// Diambil ulang dari server memakai key sesi + nomor wali + id, jadi wali
/// hanya bisa membuka notifikasinya sendiri. Parameter key/noWali ikut
/// diterima supaya layar detail bisa memakai provider yang sama dengan daftar.
final notifikasiDetailProvider = FutureProvider.autoDispose
    .family<Notifikasi, DetailNotifikasiArg>(
  (ref, arg) async {
    if (arg.key.isEmpty ||
        arg.key == 'null' ||
        arg.noWali.isEmpty ||
        arg.id <= 0) {
      return const Notifikasi();
    }
    return ref
        .watch(notifikasiServiceProvider)
        .getNotifikasiDetail(arg.key, arg.noWali, 'detail', arg.id);
  },
);

/// Argumen untuk [notifikasiDetailProvider].
class DetailNotifikasiArg {
  const DetailNotifikasiArg({
    required this.key,
    required this.noWali,
    required this.id,
  });

  final String key;
  final String noWali;
  final int id;

  @override
  bool operator ==(Object other) =>
      other is DetailNotifikasiArg &&
      other.key == key &&
      other.noWali == noWali &&
      other.id == id;

  @override
  int get hashCode => Object.hash(key, noWali, id);
}

/// Jumlah notifikasi yang belum dibaca -- untuk badge lonceng.
final notifikasiUnreadProvider = FutureProvider.autoDispose<int>((ref) async {
  final u = ref.watch(getCurrentUserProvider);
  final key = u?.key ?? '';
  final noWali = u?.user ?? '';
  if (key.isEmpty || key == 'null' || noWali.isEmpty) return 0;
  try {
    final hasil = await ref
        .watch(notifikasiServiceProvider)
        .getNotifikasiUnread(key, noWali, 'unread');
    return hasil.unread ?? 0;
  } catch (_) {
    // Lonceng tidak boleh membuat beranda error; angka 0 cukup.
    return 0;
  }
});

/// Menandai notifikasi sudah dibaca.
class NotifikasiRead extends AsyncNotifier<void> {
  @override
  FutureOr<void> build() async {}

  Future<void> tandaiDibaca({
    required String key,
    required String noWali,
    int id = 0,
  }) async {
    if (key.isEmpty || key == 'null' || noWali.isEmpty) return;
    try {
      await ref
          .read(notifikasiServiceProvider)
          .readNotifikasi(key, noWali, 'read', id);
    } catch (_) {
      // Gagal menandai tidak boleh menggagalkan UI.
    }
    // PENTING: provider daftar (notifikasiListProvider) TIDAK boleh di-invalidate
    // di sini. Invalidate membangun ulang state provider dari awal (kosong),
    // jadi daftar yang barusan di-load lenyap dan layar tampil "Belum ada
    // notifikasi" padahal server sudah mengirim data.
    // Daftar diperbarui secara lokal (tandaiTerbacaDiDaftar); yang perlu
    // disegarkan hanya jumlah belum dibaca untuk badge lonceng.
    ref.invalidate(notifikasiUnreadProvider);
  }
}

final notifikasiListProvider =
    NotifierProvider<NotifikasiList, NotifikasiListState>(NotifikasiList.new);

final notifikasiReadProvider =
    AsyncNotifierProvider<NotifikasiRead, void>(NotifikasiRead.new);
