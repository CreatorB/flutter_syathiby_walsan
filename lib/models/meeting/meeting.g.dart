// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RapatImpl _$$RapatImplFromJson(Map<String, dynamic> json) => _$RapatImpl(
      idMeeting: json['id_meeting'] as String?,
      nameMeeting: json['name_meeting'] as String?,
      operator: json['operator'] as String?,
      deskripsi: json['deskripsi'] as String?,
      meetingFor: json['meeting_for'] as String?,
      date: json['date'] as String?,
      dateFinish: json['date_finish'] as String?,
      hourStart: json['hour_start'] as String?,
      hourFinish: json['hour_finish'] as String?,
      location: json['location'] as String?,
      admin: json['admin'] as String?,
      linkHost: json['linkhost'] as String?,
      linkPeserta: json['linkpeserta'] as String?,
      statusMeeting: json['status_meeting'],
    );

Map<String, dynamic> _$$RapatImplToJson(_$RapatImpl instance) =>
    <String, dynamic>{
      'id_meeting': instance.idMeeting,
      'name_meeting': instance.nameMeeting,
      'operator': instance.operator,
      'deskripsi': instance.deskripsi,
      'meeting_for': instance.meetingFor,
      'date': instance.date,
      'date_finish': instance.dateFinish,
      'hour_start': instance.hourStart,
      'hour_finish': instance.hourFinish,
      'location': instance.location,
      'admin': instance.admin,
      'linkhost': instance.linkHost,
      'linkpeserta': instance.linkPeserta,
      'status_meeting': instance.statusMeeting,
    };
