// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dhikr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DhikrImpl _$$DhikrImplFromJson(Map<String, dynamic> json) => _$DhikrImpl(
      title: json['title'] as String?,
      arabic: json['arabic'] as String,
      transliteration: json['transliteration'] as String?,
      translation: json['translation'] as String,
      count: json['count'] as String,
      faedah: json['faedah'] as String?,
      reference: json['reference'] as String?,
    );

Map<String, dynamic> _$$DhikrImplToJson(_$DhikrImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'arabic': instance.arabic,
      'transliteration': instance.transliteration,
      'translation': instance.translation,
      'count': instance.count,
      'faedah': instance.faedah,
      'reference': instance.reference,
    };
