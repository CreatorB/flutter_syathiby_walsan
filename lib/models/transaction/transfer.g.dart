// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransferImpl _$$TransferImplFromJson(Map<String, dynamic> json) =>
    _$TransferImpl(
      name_product: json['name_product'] as String?,
      name_store: json['name_store'] as String?,
      img: json['img'] as String?,
      no_invoice: json['no_invoice'] as String?,
      date: json['date'] as String?,
      payment: json['payment'] as String?,
      totalorder: json['totalorder'] as String?,
      nominal: json['nominal'] as String?,
      by: json['by'] as String?,
      status: json['status'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$TransferImplToJson(_$TransferImpl instance) =>
    <String, dynamic>{
      'name_product': instance.name_product,
      'name_store': instance.name_store,
      'img': instance.img,
      'no_invoice': instance.no_invoice,
      'date': instance.date,
      'payment': instance.payment,
      'totalorder': instance.totalorder,
      'nominal': instance.nominal,
      'by': instance.by,
      'status': instance.status,
      'type': instance.type,
    };
