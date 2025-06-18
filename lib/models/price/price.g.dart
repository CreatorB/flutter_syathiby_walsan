// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PriceImpl _$$PriceImplFromJson(Map<String, dynamic> json) => _$PriceImpl(
      idPrice: json['id_price'] as String?,
      namePrice: json['name_price'] as String?,
      nominal: json['nominal'] as String?,
      initial: json['initial'] as String?,
    );

Map<String, dynamic> _$$PriceImplToJson(_$PriceImpl instance) =>
    <String, dynamic>{
      'id_price': instance.idPrice,
      'name_price': instance.namePrice,
      'nominal': instance.nominal,
      'initial': instance.initial,
    };
