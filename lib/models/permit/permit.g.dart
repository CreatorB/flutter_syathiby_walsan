// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PermitImpl _$$PermitImplFromJson(Map<String, dynamic> json) => _$PermitImpl(
      idPermit: json['id_permit'] as String?,
      namePermit: json['name_permit'] as String?,
      day: json['day'] as String?,
      detail: json['detail'] as String?,
      date: json['date'] as String?,
      lastDate: json['lastdate'] as String?,
      status: json['status'] as String?,
      img: json['img'] as String?,
      doc: json['doc'] as String?,
      staff: json['staff'] as String?,
      namaSiswa: json['nama_siswa'] as String?,
      kelas: json['kelas'] as String?,
      asrama: json['asrama'] as String?,
      kabag: json['kabag'] as String?,
      alasan: json['alasan'] as String?,
      aproval: json['aproval'] as String?,
    );

Map<String, dynamic> _$$PermitImplToJson(_$PermitImpl instance) =>
    <String, dynamic>{
      'id_permit': instance.idPermit,
      'name_permit': instance.namePermit,
      'day': instance.day,
      'detail': instance.detail,
      'date': instance.date,
      'lastdate': instance.lastDate,
      'status': instance.status,
      'img': instance.img,
      'doc': instance.doc,
      'staff': instance.staff,
      'nama_siswa': instance.namaSiswa,
      'kelas': instance.kelas,
      'asrama': instance.asrama,
      'kabag': instance.kabag,
      'alasan': instance.alasan,
      'aproval': instance.aproval,
    };
