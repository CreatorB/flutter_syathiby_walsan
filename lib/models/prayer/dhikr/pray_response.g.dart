// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pray_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrayResponseImpl _$$PrayResponseImplFromJson(Map<String, dynamic> json) =>
    _$PrayResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => Pray.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PrayResponseImplToJson(_$PrayResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
