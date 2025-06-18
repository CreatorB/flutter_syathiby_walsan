// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_add_order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestAddOrderImpl _$$RequestAddOrderImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestAddOrderImpl(
      key: json['key'] as String?,
      totalOrder: (json['totalOrder'] as num?)?.toInt(),
      paymentType: (json['paymentType'] as num?)?.toInt(),
      noInvoice: json['noInvoice'] as String?,
      product: (json['product'] as List<dynamic>?)
          ?.map((e) => Barang.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RequestAddOrderImplToJson(
        _$RequestAddOrderImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'totalOrder': instance.totalOrder,
      'paymentType': instance.paymentType,
      'noInvoice': instance.noInvoice,
      'product': instance.product,
    };

_$BarangImpl _$$BarangImplFromJson(Map<String, dynamic> json) => _$BarangImpl(
      idProduct: json['idProduct'] as String?,
      amountProduct: (json['amountProduct'] as num?)?.toInt(),
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$BarangImplToJson(_$BarangImpl instance) =>
    <String, dynamic>{
      'idProduct': instance.idProduct,
      'amountProduct': instance.amountProduct,
      'notes': instance.notes,
    };
