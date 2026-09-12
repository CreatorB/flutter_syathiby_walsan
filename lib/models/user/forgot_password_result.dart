import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_result.freezed.dart';
part 'forgot_password_result.g.dart';

/// Satu nomor WA admin yang relevan ("Admin Ikhwan", "Admin Akhwat", atau
/// "Admin" untuk cadangan umum) -- lihat
/// fungsi_setting.php::syathiby_kontak_admin_wa_untuk_wali() di backend.
@freezed
class WaKontak with _$WaKontak {
  const factory WaKontak({
    required String label,
    required String nomor,
  }) = _WaKontak;

  factory WaKontak.fromJson(Map<String, dynamic> json) =>
      _$WaKontakFromJson(json);
}

/// Balasan `profile/forgetpasswordwali.php`.
///
/// Terpisah dari [Message] (bukan menambah field ke sana) karena Message
/// dipakai luas oleh endpoint lain -- menambah field khusus alur ini ke sana
/// akan membingungkan pemanggil lain yang tidak pernah mengisinya.
///
/// `kontakWa` dan `butuhKode` opsional: server lama (atau BREVO_API_KEY belum
/// diisi) tidak pernah mengirim `butuh_kode`, dan `kontak_wa` bisa kosong
/// kalau pondok belum mengisi pengaturannya. `kontakWa` bisa berisi 0, 1,
/// atau 2 entri -- wali dengan anak ikhwan DAN akhwat mendapat keduanya.
@freezed
class ForgotPasswordResult with _$ForgotPasswordResult {
  const factory ForgotPasswordResult({
    required String status,
    required String errCode,
    required String msg,
    @JsonKey(name: 'kontak_wa') @Default([]) List<WaKontak> kontakWa,
    @JsonKey(name: 'butuh_kode') @Default(false) bool butuhKode,
  }) = _ForgotPasswordResult;

  factory ForgotPasswordResult.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordResultFromJson(json);
}
