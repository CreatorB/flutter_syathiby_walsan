// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_payment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailPaymentImpl _$$DetailPaymentImplFromJson(Map<String, dynamic> json) =>
    _$DetailPaymentImpl(
      totalprice: (json['totalprice'] as num?)?.toDouble(),
      totalpay: (json['totalpay'] as num?)?.toDouble(),
      discount: (json['discount'] as num?)?.toDouble(),
      tax: (json['tax'] as num?)?.toDouble(),
      serviceCharge: (json['serviceCharge'] as num?)?.toDouble(),
      idDiscount: json['idDiscount'] as String?,
      nameDiscount: json['nameDiscount'] as String?,
    );

Map<String, dynamic> _$$DetailPaymentImplToJson(_$DetailPaymentImpl instance) =>
    <String, dynamic>{
      'totalprice': instance.totalprice,
      'totalpay': instance.totalpay,
      'discount': instance.discount,
      'tax': instance.tax,
      'serviceCharge': instance.serviceCharge,
      'idDiscount': instance.idDiscount,
      'nameDiscount': instance.nameDiscount,
    };
