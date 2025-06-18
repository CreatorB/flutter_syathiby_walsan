// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'medicine.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DataObatImpl _$$DataObatImplFromJson(Map<String, dynamic> json) =>
    _$DataObatImpl(
      id_data_obat: json['id_data_obat'] as String?,
      name: json['name'] as String?,
      unit: json['unit'] as String?,
      img: json['img'] as String?,
      active: json['active'] as bool?,
      price: (json['price'] as num?)?.toInt(),
      stock: json['stock'] as String?,
      description: json['description'] as String?,
      posisi: json['posisi'] as bool?,
    );

Map<String, dynamic> _$$DataObatImplToJson(_$DataObatImpl instance) =>
    <String, dynamic>{
      'id_data_obat': instance.id_data_obat,
      'name': instance.name,
      'unit': instance.unit,
      'img': instance.img,
      'active': instance.active,
      'price': instance.price,
      'stock': instance.stock,
      'description': instance.description,
      'posisi': instance.posisi,
    };
