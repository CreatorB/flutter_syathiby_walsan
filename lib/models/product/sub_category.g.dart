// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubCategoryImpl _$$SubCategoryImplFromJson(Map<String, dynamic> json) =>
    _$SubCategoryImpl(
      status: json['status'] as String,
      errCode: json['errCode'] as String,
      msg: json['msg'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => SubCategoryData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SubCategoryImplToJson(_$SubCategoryImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'errCode': instance.errCode,
      'msg': instance.msg,
      'data': instance.data,
    };

_$SubCategoryDataImpl _$$SubCategoryDataImplFromJson(
        Map<String, dynamic> json) =>
    _$SubCategoryDataImpl(
      id_subcategory: json['id_subcategory'] as String,
      id_category: json['id_category'] as String,
      name_category: json['name_category'] as String,
    );

Map<String, dynamic> _$$SubCategoryDataImplToJson(
        _$SubCategoryDataImpl instance) =>
    <String, dynamic>{
      'id_subcategory': instance.id_subcategory,
      'id_category': instance.id_category,
      'name_category': instance.name_category,
    };
