// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_on.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddOnImpl _$$AddOnImplFromJson(Map<String, dynamic> json) => _$AddOnImpl(
      idAddon: json['id_addon'] as String?,
      idProduct: json['id_product'] as String?,
      name: json['name'] as String?,
      nameAddon: json['name_addon'] as String?,
      nominal: json['nominal'] as String?,
      datanya: json['datanya'] as String?,
      posisi: json['posisi'] as String?,
      posisis: json['posisis'] as bool?,
      price: json['price'] as String?,
      inc: json['inc'] as String?,
      type: json['type'] as String?,
      status: json['status'] as String?,
      number: json['number'] as String?,
    );

Map<String, dynamic> _$$AddOnImplToJson(_$AddOnImpl instance) =>
    <String, dynamic>{
      'id_addon': instance.idAddon,
      'id_product': instance.idProduct,
      'name': instance.name,
      'name_addon': instance.nameAddon,
      'nominal': instance.nominal,
      'datanya': instance.datanya,
      'posisi': instance.posisi,
      'posisis': instance.posisis,
      'price': instance.price,
      'inc': instance.inc,
      'type': instance.type,
      'status': instance.status,
      'number': instance.number,
    };
