// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventImpl _$$EventImplFromJson(Map<String, dynamic> json) => _$EventImpl(
      id_event: json['id_event'] as String?,
      name_event: json['name_event'] as String?,
      start_date: json['start_date'] as String?,
      finish_date: json['finish_date'] as String?,
      detail: json['detail'] as String?,
      jumlah: (json['jumlah'] as num?)?.toInt(),
      dijemput: (json['dijemput'] as num?)?.toInt(),
      dikembalikan: (json['dikembalikan'] as num?)?.toInt(),
      location: json['location'] as String?,
    );

Map<String, dynamic> _$$EventImplToJson(_$EventImpl instance) =>
    <String, dynamic>{
      'id_event': instance.id_event,
      'name_event': instance.name_event,
      'start_date': instance.start_date,
      'finish_date': instance.finish_date,
      'detail': instance.detail,
      'jumlah': instance.jumlah,
      'dijemput': instance.dijemput,
      'dikembalikan': instance.dikembalikan,
      'location': instance.location,
    };
