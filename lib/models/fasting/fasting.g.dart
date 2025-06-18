// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fasting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PuasaImpl _$$PuasaImplFromJson(Map<String, dynamic> json) => _$PuasaImpl(
      key: json['key'] as String?,
      idPuasa: json['id_puasa'] as String?,
      jenisPuasa: json['jenis_puasa'] as String?,
      date: json['date'] as String?,
      status: json['status'] as String?,
      staff: json['staff'] as String?,
      namaSiswa: json['nama_siswa'] as String?,
      nis: json['nis'] as String?,
      kelas: json['kelas'] as String?,
      asrama: json['asrama'] as String?,
      img: json['img'] as String?,
      total: (json['total'] as num?)?.toInt(),
      totalma: (json['totalma'] as num?)?.toInt(),
      totalmsw: (json['totalmsw'] as num?)?.toInt(),
      totalpi: (json['totalpi'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PuasaImplToJson(_$PuasaImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'id_puasa': instance.idPuasa,
      'jenis_puasa': instance.jenisPuasa,
      'date': instance.date,
      'status': instance.status,
      'staff': instance.staff,
      'nama_siswa': instance.namaSiswa,
      'nis': instance.nis,
      'kelas': instance.kelas,
      'asrama': instance.asrama,
      'img': instance.img,
      'total': instance.total,
      'totalma': instance.totalma,
      'totalmsw': instance.totalmsw,
      'totalpi': instance.totalpi,
    };
