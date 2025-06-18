// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_variant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PriceVariantImpl _$$PriceVariantImplFromJson(Map<String, dynamic> json) =>
    _$PriceVariantImpl(
      idPriceVariant: json['id_pricevariant'] as String?,
      idProduct: json['id_product'] as String?,
      name: json['name'] as String?,
      detail: json['detail'] as String?,
      minimal: json['minimal'] as String?,
      price: json['price'] as String?,
    );

Map<String, dynamic> _$$PriceVariantImplToJson(_$PriceVariantImpl instance) =>
    <String, dynamic>{
      'id_pricevariant': instance.idPriceVariant,
      'id_product': instance.idProduct,
      'name': instance.name,
      'detail': instance.detail,
      'minimal': instance.minimal,
      'price': instance.price,
    };
