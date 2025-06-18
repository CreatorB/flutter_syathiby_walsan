// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ayah_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AyahResponseImpl _$$AyahResponseImplFromJson(Map<String, dynamic> json) =>
    _$AyahResponseImpl(
      result: (json['result'] as List<dynamic>)
          .map((e) => Ayah.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AyahResponseImplToJson(_$AyahResponseImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
    };

_$AyahImpl _$$AyahImplFromJson(Map<String, dynamic> json) => _$AyahImpl(
      id: json['id'] as String,
      sura: json['sura'] as String,
      aya: json['aya'] as String,
      arabicText: json['arabic_text'] as String,
      translation: json['translation'] as String,
      footnotes: json['footnotes'] as String,
    );

Map<String, dynamic> _$$AyahImplToJson(_$AyahImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sura': instance.sura,
      'aya': instance.aya,
      'arabic_text': instance.arabicText,
      'translation': instance.translation,
      'footnotes': instance.footnotes,
    };
