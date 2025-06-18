// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hadith_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HadithDetailResponseImpl _$$HadithDetailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$HadithDetailResponseImpl(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      data: HadithDetailResponseData.fromJson(
          json['data'] as Map<String, dynamic>),
      error: json['error'] as bool,
    );

Map<String, dynamic> _$$HadithDetailResponseImplToJson(
        _$HadithDetailResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };

_$HadithDetailResponseDataImpl _$$HadithDetailResponseDataImplFromJson(
        Map<String, dynamic> json) =>
    _$HadithDetailResponseDataImpl(
      name: json['name'] as String,
      id: json['id'] as String,
      available: (json['available'] as num).toInt(),
      contents: Hadith.fromJson(json['contents'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HadithDetailResponseDataImplToJson(
        _$HadithDetailResponseDataImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'available': instance.available,
      'contents': instance.contents,
    };
