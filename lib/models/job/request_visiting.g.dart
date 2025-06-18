// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_visiting.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestVisiting _$RequestVisitingFromJson(Map<String, dynamic> json) =>
    RequestVisiting(
      key: json['key'] as String?,
      name: json['name'] as String?,
      address: json['address'] as String?,
      date: json['date'] as String?,
      hour: json['hour'] as String?,
      detail: json['detail'] as String?,
      img: json['img'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$RequestVisitingToJson(RequestVisiting instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'address': instance.address,
      'date': instance.date,
      'hour': instance.hour,
      'detail': instance.detail,
      'img': instance.img,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
