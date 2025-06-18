// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_kulakan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestKulakanImpl _$$RequestKulakanImplFromJson(Map<String, dynamic> json) =>
    _$RequestKulakanImpl(
      key: json['key'] as String?,
      paymentType: (json['paymentType'] as num?)?.toInt(),
      totalOrder: (json['totalOrder'] as num?)?.toInt(),
      idSupplier: json['idSupplier'] as String?,
      dueDate: json['dueDate'] as String?,
      product: (json['product'] as List<dynamic>?)
          ?.map((e) => Barang.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RequestKulakanImplToJson(
        _$RequestKulakanImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'paymentType': instance.paymentType,
      'totalOrder': instance.totalOrder,
      'idSupplier': instance.idSupplier,
      'dueDate': instance.dueDate,
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
