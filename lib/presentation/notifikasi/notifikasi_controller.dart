import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rabbaanii_portal/di/providers.dart';
import 'package:rabbaanii_portal/models/notifikasi/notifikasi.dart';
import 'package:rabbaanii_portal/models/service_injection.dart';

/// Keadaan daftar notifikasi wali (dipaginasi).
///
/// Dipakai sebagai state agar setiap perubahan memicu rebuild widget yang
/// berbeda -- bukan menyimpan daftar di dalam notifier.
class NotifikasiListState {
  const NotifikasiListState({
    this.items = const <Notifikasi>[],
    this.page = 1,
    this.hasMore = true,
    this.loading = false,
    this.unread = 0,
  });

  final List<Notifikasi> items;
  final int page;
  final bool hasMore;
  final bool loading;

  /// Jumlah notifikasi yang belum dibaca (dari server, bukan dihitung dari
  /// daftar yang sudah dimuat -- daftar hanya satu halaman).
  final int unread;

  NotifikasiListState copyWith({
    List<Notifikasi>? items,
    int? page,
    bool? hasMore,
    bool? loading,
    int? unread,
  }) {
    return NotifikasiListState(
      items: items ?? this.items,
      page: page ?? this.page,
      hasMore: hasMore ?? this.hasMore,
      loading: loading ?? this.loading,
      unread: unread ?? this.unread,
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
          .getNotifikasi(key, noWali, 'list', 1);
      final data = hasil.notifikasi ?? const <Notifikasi>[];
      state = NotifikasiListState(
        items: data,
        page: 1,
        hasMore: data.length >= perHalaman,
        loading: false,
        unread: hasil.unread ?? 0,
      );
    } catch (e) {
      debugPrint('Gagal memuat daftar notifikasi: $e');
      state = state.copyWith(loading: false);
    }
  }

  /// Muat halaman berikutnya (dipanggil saat nearing akhir daftar).
  Future<void> muatLagi(String key, String noWali) async {
    if (!_siap(key, noWali)) return;
    if (state.loading || !state.hasMore) return;
    final next = state.page + 1;
    state = state.copyWith(loading: true);
    try {
      final hasil = await ref
          .read(notifikasiServiceProvider)
          .getNotifikasi(key, noWali, 'list', next);
      final data = hasil.notifikasi ?? const <Notifikasi>[];
      state = state.copyWith(
        items: [...state.items, ...data],
        page: next,
        hasMore: data.length >= perHalaman,
        loading: false,
        unread: hasil.unread ?? state.unread,
      );
    } catch (e) {
      debugPrint('Gagal memuat halaman notifikasi berikutnya: $e');
      state = state.copyWith(loading: false);
    }
  }

  /// Tandai semua notifikasi di daftar sebagai terbaca (perubahan lokal).
  void tandaiSemuaTerbacaDiDaftar() {
    if (state.items.isEmpty) return;
    final baru = state.items
        .map(
          (n) => (n.status ?? 'baru') == 'dibaca'
              ? n
              : n.copyWith(status: 'dibaca', readAt: DateTime.now().toString()),
        )
        .toList();
    state = state.copyWith(items: baru, unread: 0);
  }

  /// Tandai satu notifikasi terbaca di daftar (tanpa menambah ulang).
  void tandaiTerbacaDiDaftar(int id) {
    if (state.items.isEmpty) return;
    var adaUbah = false;
    final baru = state.items.map((n) {
      if ((n.id ?? 0) == id && (n.status ?? 'baru') != 'dibaca') {
        adaUbah = true;
        return n.copyWith(status: 'dibaca', readAt: DateTime.now().toString());
      }
      return n;
    }).toList();
    if (adaUbah) {
      final masihBelum =
          baru.where((n) => (n.status ?? 'baru') == 'baru').length;
      state = state.copyWith(items: baru, unread: masihBelum);
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
    // di sini. Provider itu auto-dispose: invalidate akan membuatnya di-create
    // ulang dengan state KOSONG, jadi daftar yang barusan di-load lenyap dan
    // layar tampil "Belum ada notifikasi" padahal server sudah mengirim data.
    // Daftar diperbarui secara lokal (tandaiTerbacaDiDaftar); yang perlu
    // disegarkan hanya jumlah belum dibaca untuk badge lonceng.
    ref.invalidate(notifikasiUnreadProvider);
  }
}

final notifikasiListProvider =
    NotifierProvider<NotifikasiList, NotifikasiListState>(NotifikasiList.new);

final notifikasiReadProvider =
    AsyncNotifierProvider<NotifikasiRead, void>(NotifikasiRead.new);
