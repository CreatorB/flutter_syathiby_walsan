import 'package:freezed_annotation/freezed_annotation.dart';

part 'store.freezed.dart';
part 'store.g.dart';

@freezed
class Store with _$Store {
  const factory Store({
    @JsonKey(name: 'id_store') String? idStore,
    @JsonKey(name: 'name_store') String? nameStore,
    @JsonKey(name: 'number_store') String? numberStore,
    String? address,
    String? email,
    String? nohp,
    String? tax,
    @JsonKey(name: 'service_charge') String? serviceCharge,
    String? saldo,
    String? point,
    String? order,
    String? type,
    dynamic omset,
    String? level,
    String? position,
    String? shift,
    dynamic initial,
    dynamic footer,
    String? photo,
    String? img,
    @JsonKey(name: 'name_staff') String? nameStaff,
    int? attandence,
    int? job,
    String? today,
    String? workhour,
    String? timeattand,
    String? during,
    String? late,
    String? notif,
    String? notifpelanggaran,
    String? notifizin,
    String? notifizinsantri,
    String? notifmudir,
    String? notifmanager,
    String? notifkeuangan,
    String? notiflogistik,
    String? notifpermintaanobatmanager,
    String? notifukp,
    String? absen,
    String? guru,
    String? holiday,
    String? notifinfo,
    String? chat,
    String? kepengasuhan,
    String? kependidikan,
    String? kerumahtanggaan,
    String? tahfidz,
    String? kesehatan,
    String? permohonan,
    String? keuangan,
    String? meeting,
    String? unitusaha,
  }) = _Store;

  factory Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);
}
