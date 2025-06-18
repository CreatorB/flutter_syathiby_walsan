// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'violation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PelanggaranImpl _$$PelanggaranImplFromJson(Map<String, dynamic> json) =>
    _$PelanggaranImpl(
      key: json['key'] as String?,
      idPelanggaran: json['id_pelanggaran'] as String?,
      namaPelanggaran: json['nama_pelanggaran'] as String?,
      detail: json['detail'] as String?,
      date: json['date'] as String?,
      hour: json['hour'] as String?,
      location: json['location'] as String?,
      namaSiswa: json['nama_siswa'] as String?,
      kelas: json['kelas'] as String?,
      status: json['status'] as String?,
      img: json['img'] as String?,
      staff: json['staff'] as String?,
      alasan: json['alasan'] as String?,
      penindak: json['penindak'] as String?,
      kabag: json['kabag'] as String?,
    );

Map<String, dynamic> _$$PelanggaranImplToJson(_$PelanggaranImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'id_pelanggaran': instance.idPelanggaran,
      'nama_pelanggaran': instance.namaPelanggaran,
      'detail': instance.detail,
      'date': instance.date,
      'hour': instance.hour,
      'location': instance.location,
      'nama_siswa': instance.namaSiswa,
      'kelas': instance.kelas,
      'status': instance.status,
      'img': instance.img,
      'staff': instance.staff,
      'alasan': instance.alasan,
      'penindak': instance.penindak,
      'kabag': instance.kabag,
    };
