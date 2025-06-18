// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseEntityImpl _$$ResponseEntityImplFromJson(Map<String, dynamic> json) =>
    _$ResponseEntityImpl(
      data: json['data'],
      status: json['status'] as String,
      msg: json['msg'] as String,
      errCode: json['errCode'] as String,
    );

Map<String, dynamic> _$$ResponseEntityImplToJson(
        _$ResponseEntityImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
      'msg': instance.msg,
      'errCode': instance.errCode,
    };
