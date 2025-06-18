// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raw_material.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RawMaterialImpl _$$RawMaterialImplFromJson(Map<String, dynamic> json) =>
    _$RawMaterialImpl(
      idRawMaterial: json['id_raw_material'] as String?,
      name: json['name'] as String?,
      unit: json['unit'] as String?,
      img: json['img'] as String?,
      active: json['active'] as bool?,
      price: json['price'],
      stock: json['stock'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      description: json['description'] as String?,
      posisi: json['posisi'] as bool?,
    );

Map<String, dynamic> _$$RawMaterialImplToJson(_$RawMaterialImpl instance) =>
    <String, dynamic>{
      'id_raw_material': instance.idRawMaterial,
      'name': instance.name,
      'unit': instance.unit,
      'img': instance.img,
      'active': instance.active,
      'price': instance.price,
      'stock': instance.stock,
      'amount': instance.amount,
      'description': instance.description,
      'posisi': instance.posisi,
    };
