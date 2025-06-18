// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ComissionImpl _$$ComissionImplFromJson(Map<String, dynamic> json) =>
    _$ComissionImpl(
      totalorderall: json['totalorderall'] as String?,
      date: json['date'] as String?,
      totalcommision: json['totalcommision'] as String?,
      detail: (json['detail'] as List<dynamic>?)
          ?.map((e) => DetailCommission.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ComissionImplToJson(_$ComissionImpl instance) =>
    <String, dynamic>{
      'totalorderall': instance.totalorderall,
      'date': instance.date,
      'totalcommision': instance.totalcommision,
      'detail': instance.detail,
    };
