// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_logout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestLogoutImpl _$$RequestLogoutImplFromJson(Map<String, dynamic> json) =>
    _$RequestLogoutImpl(
      key: json['key'] as String?,
      token: json['token'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      mock: json['mock'] as bool?,
      device: json['device'] as String?,
      lokasi: json['lokasi'] as String?,
    );

Map<String, dynamic> _$$RequestLogoutImplToJson(_$RequestLogoutImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'token': instance.token,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'mock': instance.mock,
      'device': instance.device,
      'lokasi': instance.lokasi,
    };
