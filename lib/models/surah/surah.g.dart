// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'surah.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SurahImpl _$$SurahImplFromJson(Map<String, dynamic> json) => _$SurahImpl(
      idSurah: (json['id_surah'] as num?)?.toInt(),
      idAyah: (json['id_ayah'] as num?)?.toInt(),
      arabic: json['arabic'] as String?,
      textArab: json['textarab'] as String?,
      indonesia: json['indonesia'] as String?,
      ayah: json['ayah'] as String?,
      bismillah: json['bismillah'] as String?,
      desc: json['desc'] as String?,
      sound: json['sound'] as String?,
    );

Map<String, dynamic> _$$SurahImplToJson(_$SurahImpl instance) =>
    <String, dynamic>{
      'id_surah': instance.idSurah,
      'id_ayah': instance.idAyah,
      'arabic': instance.arabic,
      'textarab': instance.textArab,
      'indonesia': instance.indonesia,
      'ayah': instance.ayah,
      'bismillah': instance.bismillah,
      'desc': instance.desc,
      'sound': instance.sound,
    };
