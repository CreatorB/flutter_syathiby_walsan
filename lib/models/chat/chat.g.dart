// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatImpl _$$ChatImplFromJson(Map<String, dynamic> json) => _$ChatImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      detail: json['detail'] as String?,
      img: json['img'] as String?,
      detail_images: json['detail_images'] as String?,
      date: json['date'] as String?,
      status: json['status'] as String?,
      like: json['like'] as String?,
      coment: json['coment'] as String?,
      mylike: (json['mylike'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ChatImplToJson(_$ChatImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'detail': instance.detail,
      'img': instance.img,
      'detail_images': instance.detail_images,
      'date': instance.date,
      'status': instance.status,
      'like': instance.like,
      'coment': instance.coment,
      'mylike': instance.mylike,
    };
