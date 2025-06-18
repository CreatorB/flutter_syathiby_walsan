// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VeganItemTagV2<T> _$VeganItemTagV2FromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    VeganItemTagV2<T>(
      data: fromJsonT(json['data']),
      status: json['status'] as String,
      msg: json['msg'] as String,
      errCode: json['errCode'] as String,
    );

Map<String, dynamic> _$VeganItemTagV2ToJson<T>(
  VeganItemTagV2<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': toJsonT(instance.data),
      'status': instance.status,
      'msg': instance.msg,
      'errCode': instance.errCode,
    };

_$ResponseWrapperImpl<T> _$$ResponseWrapperImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ResponseWrapperImpl<T>(
      status: json['status'] as String,
      msg: json['msg'] as String,
      errCode: json['errCode'] as String,
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
    );

Map<String, dynamic> _$$ResponseWrapperImplToJson<T>(
  _$ResponseWrapperImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'errCode': instance.errCode,
      'data': _$nullableGenericToJson(instance.data, toJsonT),
    };

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
