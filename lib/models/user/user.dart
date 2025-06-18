import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'name_parent') String? nameParent,
    String? address,
    String? email,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    @JsonKey(name: 'email_parent') String? emailParent,
    @JsonKey(name: 'img_parent') String? imageParent,
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
    String? img,
    dynamic signup,
    @JsonKey(name: 'name_store') String? nameStore,
    @JsonKey(name: 'id_staff') String? idStaff,
    String? level,
    String? nis,
    String? ttl,
    String? position,
    String? date,
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
