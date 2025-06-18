// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'murottal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MurottalImpl _$$MurottalImplFromJson(Map<String, dynamic> json) =>
    _$MurottalImpl(
      baseUrl: json['base_url'] as String,
      paddingSurahNumber: (json['padding_surah_number'] as num?)?.toInt() ?? 3,
      paddingAyahNumber: (json['padding_ayah_number'] as num?)?.toInt(),
      source: json['source'] as String,
      separator: json['separator'] as String?,
      type: json['type'] as String,
      extension: json['extension'] as String,
      reciters: (json['reciters'] as List<dynamic>)
          .map((e) => Reciter.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MurottalImplToJson(_$MurottalImpl instance) =>
    <String, dynamic>{
      'base_url': instance.baseUrl,
      'padding_surah_number': instance.paddingSurahNumber,
      'padding_ayah_number': instance.paddingAyahNumber,
      'source': instance.source,
      'separator': instance.separator,
      'type': instance.type,
      'extension': instance.extension,
      'reciters': instance.reciters,
    };

_$ReciterImpl _$$ReciterImplFromJson(Map<String, dynamic> json) =>
    _$ReciterImpl(
      reciterName: json['reciter_name'] as String,
      endPoint: json['end_point'] as String,
      photoUrl: json['photo_url'] as String?,
      country: json['country'] as String?,
      biography: json['biography'] as String?,
    );

Map<String, dynamic> _$$ReciterImplToJson(_$ReciterImpl instance) =>
    <String, dynamic>{
      'reciter_name': instance.reciterName,
      'end_point': instance.endPoint,
      'photo_url': instance.photoUrl,
      'country': instance.country,
      'biography': instance.biography,
    };
