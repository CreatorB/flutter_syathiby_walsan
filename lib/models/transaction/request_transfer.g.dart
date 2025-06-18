// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_transfer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestTransferImpl _$$RequestTransferImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestTransferImpl(
      key: json['key'] as String?,
      paymentType: (json['paymentType'] as num?)?.toInt(),
      totalOrder: (json['totalOrder'] as num?)?.toInt(),
      idStore: json['idStore'] as String?,
      product: (json['product'] as List<dynamic>?)
          ?.map((e) => Barang.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RequestTransferImplToJson(
        _$RequestTransferImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'paymentType': instance.paymentType,
      'totalOrder': instance.totalOrder,
      'idStore': instance.idStore,
      'product': instance.product,
    };

_$BarangImpl _$$BarangImplFromJson(Map<String, dynamic> json) => _$BarangImpl(
      idProduct: json['idProduct'] as String?,
      amountProduct: (json['amountProduct'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BarangImplToJson(_$BarangImpl instance) =>
    <String, dynamic>{
      'idProduct': instance.idProduct,
      'amountProduct': instance.amountProduct,
    };
