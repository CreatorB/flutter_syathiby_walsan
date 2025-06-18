// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_raw_material.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestRawMaterialImpl _$$RequestRawMaterialImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestRawMaterialImpl(
      key: json['key'] as String?,
      paymentType: (json['payment_type'] as num?)?.toInt(),
      totalOrder: (json['total_order'] as num?)?.toInt(),
      product: (json['product'] as List<dynamic>?)
          ?.map((e) => BarangRaw.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RequestRawMaterialImplToJson(
    _$RequestRawMaterialImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('key', instance.key);
  writeNotNull('payment_type', instance.paymentType);
  writeNotNull('total_order', instance.totalOrder);
  writeNotNull('product', instance.product?.map((e) => e.toJson()).toList());
  return val;
}

_$BarangRawImpl _$$BarangRawImplFromJson(Map<String, dynamic> json) =>
    _$BarangRawImpl(
      idProduct: json['id_product'] as String?,
      amountProduct: (json['amount_product'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$BarangRawImplToJson(_$BarangRawImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id_product', instance.idProduct);
  writeNotNull('amount_product', instance.amountProduct);
  return val;
}
