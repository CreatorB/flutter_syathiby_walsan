// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportImpl _$$ReportImplFromJson(Map<String, dynamic> json) => _$ReportImpl(
      idAttendance: json['id_attendance'] as String?,
      key: json['key'] as String?,
      email: json['email'] as String?,
      fullName: json['full_name'] as String?,
      phoneNumber: json['phone_number'] as String?,
      address: json['address'] as String?,
      period: json['period'] as String?,
      part: json['part'] as String?,
      idStore: json['id_store'] as String?,
      nameStore: json['name_store'] as String?,
      ontime: json['ontime'] as String?,
      late: json['late'] as String?,
      notPresent: json['notpresent'] as String?,
      overtime: json['overtime'] as String?,
      permit: json['permit'] as String?,
      assign: (json['assign'] as num?)?.toInt(),
      proses: (json['proses'] as num?)?.toInt(),
      finish: (json['finish'] as num?)?.toInt(),
      presence: json['presence'] as String?,
    );

Map<String, dynamic> _$$ReportImplToJson(_$ReportImpl instance) =>
    <String, dynamic>{
      'id_attendance': instance.idAttendance,
      'key': instance.key,
      'email': instance.email,
      'full_name': instance.fullName,
      'phone_number': instance.phoneNumber,
      'address': instance.address,
      'period': instance.period,
      'part': instance.part,
      'id_store': instance.idStore,
      'name_store': instance.nameStore,
      'ontime': instance.ontime,
      'late': instance.late,
      'notpresent': instance.notPresent,
      'overtime': instance.overtime,
      'permit': instance.permit,
      'assign': instance.assign,
      'proses': instance.proses,
      'finish': instance.finish,
      'presence': instance.presence,
    };
