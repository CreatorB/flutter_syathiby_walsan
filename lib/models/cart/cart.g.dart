// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartImpl _$$CartImplFromJson(Map<String, dynamic> json) => _$CartImpl(
      position: (json['position'] as num?)?.toInt(),
      count: (json['count'] as num?)?.toDouble(),
      note: json['note'] as String?,
      newPrice: json['new_price'] as String? ?? '0',
      nominalAddon: json['nominal_addon'] as String? ?? '0',
      type: json['type'] as String?,
      product: json['product'] == null
          ? null
          : Product.fromJson(json['product'] as Map<String, dynamic>),
      addon: json['addon'] == null
          ? null
          : AddOn.fromJson(json['addon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CartImplToJson(_$CartImpl instance) =>
    <String, dynamic>{
      'position': instance.position,
      'count': instance.count,
      'note': instance.note,
      'new_price': instance.newPrice,
      'nominal_addon': instance.nominalAddon,
      'type': instance.type,
      'product': instance.product,
      'addon': instance.addon,
    };
