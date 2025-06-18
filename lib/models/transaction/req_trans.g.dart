// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'req_trans.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReqTransImpl _$$ReqTransImplFromJson(Map<String, dynamic> json) =>
    _$ReqTransImpl(
      key: json['key'] as String?,
      paymentType: (json['paymentType'] as num?)?.toInt(),
      paymentAmount: (json['paymentAmount'] as num?)?.toInt(),
      totalOrder: (json['totalOrder'] as num?)?.toInt(),
      idCustomer: json['idCustomer'] as String?,
      point: (json['point'] as num?)?.toInt(),
      idDiscount: json['idDiscount'] as String?,
      card: json['card'] as String?,
      note: json['note'] as String?,
      dueDate: json['dueDate'] as String?,
      product: (json['product'] as List<dynamic>?)
          ?.map((e) => Barang.fromJson(e as Map<String, dynamic>))
          .toList(),
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$ReqTransImplToJson(_$ReqTransImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'paymentType': instance.paymentType,
      'paymentAmount': instance.paymentAmount,
      'totalOrder': instance.totalOrder,
      'idCustomer': instance.idCustomer,
      'point': instance.point,
      'idDiscount': instance.idDiscount,
      'card': instance.card,
      'note': instance.note,
      'dueDate': instance.dueDate,
      'product': instance.product,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'id': instance.id,
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
