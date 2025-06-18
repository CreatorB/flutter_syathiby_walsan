// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tracking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrackingImpl _$$TrackingImplFromJson(Map<String, dynamic> json) =>
    _$TrackingImpl(
      full_name: json['full_name'] as String?,
      phone_number: json['phone_number'] as String?,
      img: json['img'] as String?,
      date_update: json['date_update'] as String?,
      latlong: json['latlong'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
    );

Map<String, dynamic> _$$TrackingImplToJson(_$TrackingImpl instance) =>
    <String, dynamic>{
      'full_name': instance.full_name,
      'phone_number': instance.phone_number,
      'img': instance.img,
      'date_update': instance.date_update,
      'latlong': instance.latlong,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
