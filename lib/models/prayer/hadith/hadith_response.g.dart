// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hadith_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HadithResponseImpl _$$HadithResponseImplFromJson(Map<String, dynamic> json) =>
    _$HadithResponseImpl(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      data: HadithData.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] as bool,
    );

Map<String, dynamic> _$$HadithResponseImplToJson(
        _$HadithResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };

_$HadithDataImpl _$$HadithDataImplFromJson(Map<String, dynamic> json) =>
    _$HadithDataImpl(
      name: json['name'] as String,
      id: json['id'] as String,
      available: (json['available'] as num).toInt(),
      requested: (json['requested'] as num).toInt(),
      hadiths: (json['hadiths'] as List<dynamic>)
          .map((e) => Hadith.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HadithDataImplToJson(_$HadithDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'available': instance.available,
      'requested': instance.requested,
      'hadiths': instance.hadiths,
    };

_$HadithImpl _$$HadithImplFromJson(Map<String, dynamic> json) => _$HadithImpl(
      number: (json['number'] as num).toInt(),
      arab: json['arab'] as String,
      id: json['id'] as String,
    );

Map<String, dynamic> _$$HadithImplToJson(_$HadithImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
      'arab': instance.arab,
      'id': instance.id,
    };
