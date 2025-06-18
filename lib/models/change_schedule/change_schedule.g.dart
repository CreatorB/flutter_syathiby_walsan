// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChangeScheduleImpl _$$ChangeScheduleImplFromJson(Map<String, dynamic> json) =>
    _$ChangeScheduleImpl(
      id_ubah_jadwal: json['id_ubah_jadwal'] as String?,
      date: json['date'] as String?,
      detail: json['detail'] as String?,
      staff: json['staff'] as String?,
      staff2: json['staff2'] as String?,
      status: json['status'] as String?,
      position: json['position'] as String?,
      pengganti: json['pengganti'] as String?,
      kabag: json['kabag'] as String?,
      aproval: json['aproval'] as String?,
      alasan: json['alasan'] as String?,
    );

Map<String, dynamic> _$$ChangeScheduleImplToJson(
        _$ChangeScheduleImpl instance) =>
    <String, dynamic>{
      'id_ubah_jadwal': instance.id_ubah_jadwal,
      'date': instance.date,
      'detail': instance.detail,
      'staff': instance.staff,
      'staff2': instance.staff2,
      'status': instance.status,
      'position': instance.position,
      'pengganti': instance.pengganti,
      'kabag': instance.kabag,
      'aproval': instance.aproval,
      'alasan': instance.alasan,
    };
