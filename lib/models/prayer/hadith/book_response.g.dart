// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookResponseImpl _$$BookResponseImplFromJson(Map<String, dynamic> json) =>
    _$BookResponseImpl(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => Book.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'] as bool,
    );

Map<String, dynamic> _$$BookResponseImplToJson(_$BookResponseImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };

_$BookImpl _$$BookImplFromJson(Map<String, dynamic> json) => _$BookImpl(
      name: json['name'] as String,
      id: json['id'] as String,
      available: (json['available'] as num).toInt(),
    );

Map<String, dynamic> _$$BookImplToJson(_$BookImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'available': instance.available,
    };
