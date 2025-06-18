// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_raw.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartRawImpl _$$CartRawImplFromJson(Map<String, dynamic> json) =>
    _$CartRawImpl(
      position: (json['position'] as num?)?.toInt(),
      count: (json['count'] as num?)?.toDouble(),
      note: json['note'] as String?,
      newPrice: json['new_price'] as String? ?? '0',
      product: json['product'] == null
          ? null
          : RawMaterial.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CartRawImplToJson(_$CartRawImpl instance) =>
    <String, dynamic>{
      'position': instance.position,
      'count': instance.count,
      'note': instance.note,
      'new_price': instance.newPrice,
      'product': instance.product,
    };
