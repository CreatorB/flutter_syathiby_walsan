// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsImpl _$$NewsImplFromJson(Map<String, dynamic> json) => _$NewsImpl(
      idNews: json['id_news'] as String?,
      title: json['title'] as String?,
      detail: json['detail'] as String?,
      desc: json['desc'] as String?,
      img: json['img'] as String?,
    );

Map<String, dynamic> _$$NewsImplToJson(_$NewsImpl instance) =>
    <String, dynamic>{
      'id_news': instance.idNews,
      'title': instance.title,
      'detail': instance.detail,
      'desc': instance.desc,
      'img': instance.img,
    };
