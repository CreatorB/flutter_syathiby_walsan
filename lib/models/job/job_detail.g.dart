// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailsJobImpl _$$DetailsJobImplFromJson(Map<String, dynamic> json) =>
    _$DetailsJobImpl(
      info: json['info'] == null
          ? null
          : Info.fromJson(json['info'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => JobData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DetailsJobImplToJson(_$DetailsJobImpl instance) =>
    <String, dynamic>{
      'info': instance.info,
      'data': instance.data,
    };

_$InfoImpl _$$InfoImplFromJson(Map<String, dynamic> json) => _$InfoImpl(
      id_history_job: json['id_history_job'] as String?,
      no_invoice: json['no_invoice'] as String?,
      note: json['note'] as String?,
      detail: json['detail'] as String?,
      date: json['date'] as String?,
      status: json['status'] as String?,
      img: json['img'] as String?,
      name_staff: json['name_staff'] as String?,
      by: json['by'] as String?,
    );

Map<String, dynamic> _$$InfoImplToJson(_$InfoImpl instance) =>
    <String, dynamic>{
      'id_history_job': instance.id_history_job,
      'no_invoice': instance.no_invoice,
      'note': instance.note,
      'detail': instance.detail,
      'date': instance.date,
      'status': instance.status,
      'img': instance.img,
      'name_staff': instance.name_staff,
      'by': instance.by,
    };

_$JobDataImpl _$$JobDataImplFromJson(Map<String, dynamic> json) =>
    _$JobDataImpl(
      id: json['id'] as String?,
      name_staff: json['name_staff'] as String?,
      comment: json['comment'] as String?,
      no_invoice: json['no_invoice'] as String?,
      date: json['date'] as String?,
      status: json['status'] as String?,
      img: json['img'] as String?,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$JobDataImplToJson(_$JobDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name_staff': instance.name_staff,
      'comment': instance.comment,
      'no_invoice': instance.no_invoice,
      'date': instance.date,
      'status': instance.status,
      'img': instance.img,
      'note': instance.note,
    };
