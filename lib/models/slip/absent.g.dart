// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'absent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AbsentImpl _$$AbsentImplFromJson(Map<String, dynamic> json) => _$AbsentImpl(
      id_attendance: json['id_attendance'] as String?,
      staff: json['staff'] as String?,
      date: json['date'] as String?,
      hour: json['hour'] as String?,
      location: json['location'] as String?,
      device: json['device'],
      status: json['status'] as String?,
      img: json['img'] as String?,
      name_staff: json['name_staff'] as String?,
      attandence: (json['attandence'] as num?)?.toInt(),
      job: (json['job'] as num?)?.toInt(),
      today: json['today'] as String?,
      workhour: json['workhour'] as String?,
      timeattand: json['timeattand'] as String?,
      type: json['type'] as String?,
      during: json['during'],
      late: json['late'] as String?,
      done: json['done'] as String?,
      locationfinish: json['locationfinish'] as String?,
      overtime: json['overtime'] as String?,
      overtime2: json['overtime2'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      distance: json['distance'] as String?,
      name_event: json['name_event'] as String?,
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$$AbsentImplToJson(_$AbsentImpl instance) =>
    <String, dynamic>{
      'id_attendance': instance.id_attendance,
      'staff': instance.staff,
      'date': instance.date,
      'hour': instance.hour,
      'location': instance.location,
      'device': instance.device,
      'status': instance.status,
      'img': instance.img,
      'name_staff': instance.name_staff,
      'attandence': instance.attandence,
      'job': instance.job,
      'today': instance.today,
      'workhour': instance.workhour,
      'timeattand': instance.timeattand,
      'type': instance.type,
      'during': instance.during,
      'late': instance.late,
      'done': instance.done,
      'locationfinish': instance.locationfinish,
      'overtime': instance.overtime,
      'overtime2': instance.overtime2,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'distance': instance.distance,
      'name_event': instance.name_event,
      'reason': instance.reason,
    };
