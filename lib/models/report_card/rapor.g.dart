// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rapor.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RaporImpl _$$RaporImplFromJson(Map<String, dynamic> json) => _$RaporImpl(
      key: json['key'] as String?,
      idKelas: json['id_kelas'] as String?,
      kelas: json['kelas'] as String?,
      semester: json['semester'] as String?,
      namaLengkap: json['nama_lengkap'] as String?,
      nis: json['nis'] as String?,
      staff: json['staff'] as String?,
      kkm: json['kkm'] as String?,
      rangking: json['rangking'] as String?,
      keterangan: json['keterangan'] as String?,
      img: json['img'] as String?,
    );

Map<String, dynamic> _$$RaporImplToJson(_$RaporImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'id_kelas': instance.idKelas,
      'kelas': instance.kelas,
      'semester': instance.semester,
      'nama_lengkap': instance.namaLengkap,
      'nis': instance.nis,
      'staff': instance.staff,
      'kkm': instance.kkm,
      'rangking': instance.rangking,
      'keterangan': instance.keterangan,
      'img': instance.img,
    };
