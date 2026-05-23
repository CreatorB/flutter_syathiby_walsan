import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: 'full_name') String? fullName,       // wali's name (for account screen)
    @JsonKey(name: 'name_parent') String? nameParent,   // alias for wali's name
    @JsonKey(name: 'nama_siswa') String? namaSiswa,     // student's name (for student card)
    String? address,
    String? email,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    @JsonKey(name: 'email_parent') String? emailParent, // wali email
    @JsonKey(name: 'img_parent') String? imageParent,   // wali photo (for account/profile)
    String? key,
    dynamic afiliasi,
    int? omset,
    String? saldo,
    String? subdomain,
    String? point,
    int? transaksi,
    int? order,
    String? type,
    @JsonKey(name: 'system_point') dynamic systemPoint,
    String? img,   // student photo (for student card)
    dynamic signup,
    @JsonKey(name: 'name_store') String? nameStore,
    @JsonKey(name: 'id_staff') String? idStaff,
    String? level,
    String? nis,
    String? ttl,
    String? position,
    String? date,
    String? kelas,
    String? absensi,
    String? tabungan,
    int? limit_harian,
    String? menabung_terakhir,
    String? status_kartu,
    String? uang_saku,
    String? uang_loundry,
    String? uang_belanja,
    String? location,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
