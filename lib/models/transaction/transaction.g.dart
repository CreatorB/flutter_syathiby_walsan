// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionImpl _$$TransactionImplFromJson(Map<String, dynamic> json) =>
    _$TransactionImpl(
      uuid: json['uuid'] as String?,
      nameProduct: json['name_product'] as String?,
      nameSupplier: json['name_supplier'] as String?,
      img: json['img'] as String?,
      noInvoice: json['no_invoice'] as String?,
      oleh: json['oleh'] as String?,
      date: json['date'] as String?,
      payment: json['payment'] as String?,
      totalOrder: json['totalorder'] as String?,
      totalPay: (json['totalpay'] as num?)?.toInt(),
      nominal: json['nominal'] as String?,
      by: json['by'] as String?,
      status: json['status'] as String?,
      type: json['type'] as String?,
      nameTable: json['name_table'] as String?,
    );

Map<String, dynamic> _$$TransactionImplToJson(_$TransactionImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'name_product': instance.nameProduct,
      'name_supplier': instance.nameSupplier,
      'img': instance.img,
      'no_invoice': instance.noInvoice,
      'oleh': instance.oleh,
      'date': instance.date,
      'payment': instance.payment,
      'totalorder': instance.totalOrder,
      'totalpay': instance.totalPay,
      'nominal': instance.nominal,
      'by': instance.by,
      'status': instance.status,
      'type': instance.type,
      'name_table': instance.nameTable,
    };
