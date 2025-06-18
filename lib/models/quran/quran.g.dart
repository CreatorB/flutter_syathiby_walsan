// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quran.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuranImpl _$$QuranImplFromJson(Map<String, dynamic> json) => _$QuranImpl(
      surah: Surah.fromJson(json['surah'] as Map<String, dynamic>),
      ayah: Ayah.fromJson(json['ayah'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$QuranImplToJson(_$QuranImpl instance) =>
    <String, dynamic>{
      'surah': instance.surah,
      'ayah': instance.ayah,
    };
