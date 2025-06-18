import 'package:freezed_annotation/freezed_annotation.dart';

part 'rekap.freezed.dart';
part 'rekap.g.dart';

@freezed
class Rekap with _$Rekap {
  const factory Rekap({
    @JsonKey(name: 'key') String? key,
    @JsonKey(name: 'nama_lengkap') String? namaLengkap,
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'jumlahmapel') dynamic jumlahMapel,
    @JsonKey(name: 'hadirpelajaran') dynamic hadirPelajaran,
    @JsonKey(name: 'izinpelajaran') dynamic izinPelajaran,
    @JsonKey(name: 'sakitpelajaran') dynamic sakitPelajaran,
    @JsonKey(name: 'alfapelajaran') dynamic alfaPelajaran,
    @JsonKey(name: 'tahfidzdhuha') String? tahfidzdhuha,
    @JsonKey(name: 'tahfidzsubuh') String? tahfidzSubuh,
    @JsonKey(name: 'tahfidzsiang') String? tahfidzSiang,
    @JsonKey(name: 'tahfidzmalam') String? tahfidzMalam,
    @JsonKey(name: 'makanpagi') String? makanPagi,
    @JsonKey(name: 'makansiang') String? makanSiang,
    @JsonKey(name: 'makanmalam') String? makanMalam,
    @JsonKey(name: 'tidur') String? tidur,
  }) = _Rekap;

  factory Rekap.fromJson(Map<String, dynamic> json) => _$RekapFromJson(json);
}