// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobImpl _$$JobImplFromJson(Map<String, dynamic> json) => _$JobImpl(
      key: json['key'] as String?,
      id_history_job: json['id_history_job'] as String?,
      no_invoice: json['no_invoice'] as String?,
      note: json['note'] as String?,
      detail: json['detail'] as String?,
      date: json['date'] as String? ?? '0',
      status: json['status'] as String?,
      img: json['img'] as String?,
      operator: json['operator'] as String?,
      phone_number: json['phone_number'] as String?,
      hour: json['hour'] as String?,
      id_asrama: json['id_asrama'] as String?,
    );

Map<String, dynamic> _$$JobImplToJson(_$JobImpl instance) => <String, dynamic>{
      'key': instance.key,
      'id_history_job': instance.id_history_job,
      'no_invoice': instance.no_invoice,
      'note': instance.note,
      'detail': instance.detail,
      'date': instance.date,
      'status': instance.status,
      'img': instance.img,
      'operator': instance.operator,
      'phone_number': instance.phone_number,
      'hour': instance.hour,
      'id_asrama': instance.id_asrama,
    };
