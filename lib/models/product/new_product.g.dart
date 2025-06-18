// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductNewImpl _$$ProductNewImplFromJson(Map<String, dynamic> json) =>
    _$ProductNewImpl(
      status: json['status'] as String,
      errCode: json['errCode'] as String,
      msg: json['msg'] as String,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductNewImplToJson(_$ProductNewImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'errCode': instance.errCode,
      'msg': instance.msg,
      'data': instance.data,
    };
