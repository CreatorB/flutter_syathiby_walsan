// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailHistoryImpl _$$DetailHistoryImplFromJson(Map<String, dynamic> json) =>
    _$DetailHistoryImpl(
      nameProduct: json['name_product'] as String?,
      nameStore: json['name_store'] as String?,
      img: json['img'] as String?,
      detail: json['detail'] as String?,
      date: json['date'] as String?,
      stock: json['stock'] as String?,
      nominal: json['nominal'] as String?,
      by: json['by'] as String?,
      status: json['status'] as String?,
      unit: json['unit'] as String?,
    );

Map<String, dynamic> _$$DetailHistoryImplToJson(_$DetailHistoryImpl instance) =>
    <String, dynamic>{
      'name_product': instance.nameProduct,
      'name_store': instance.nameStore,
      'img': instance.img,
      'detail': instance.detail,
      'date': instance.date,
      'stock': instance.stock,
      'nominal': instance.nominal,
      'by': instance.by,
      'status': instance.status,
      'unit': instance.unit,
    };
