// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_penjualan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportPenjualanImpl _$$ReportPenjualanImplFromJson(
        Map<String, dynamic> json) =>
    _$ReportPenjualanImpl(
      info: json['info'] == null
          ? null
          : Info.fromJson(json['info'] as Map<String, dynamic>),
      salesReport: (json['salesReport'] as List<dynamic>?)
          ?.map((e) => Penjualan.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ReportPenjualanImplToJson(
        _$ReportPenjualanImpl instance) =>
    <String, dynamic>{
      'info': instance.info,
      'salesReport': instance.salesReport,
    };

_$InfoImpl _$$InfoImplFromJson(Map<String, dynamic> json) => _$InfoImpl(
      totalSales: json['total_sales'] as String?,
      average: json['average'] as String?,
      numberTransaction: json['number_transaction'] as String?,
      date: json['date'] as String?,
      operator: json['operator'] as String?,
      nameStore: json['name_store'] as String?,
    );

Map<String, dynamic> _$$InfoImplToJson(_$InfoImpl instance) =>
    <String, dynamic>{
      'total_sales': instance.totalSales,
      'average': instance.average,
      'number_transaction': instance.numberTransaction,
      'date': instance.date,
      'operator': instance.operator,
      'name_store': instance.nameStore,
    };

_$PenjualanImpl _$$PenjualanImplFromJson(Map<String, dynamic> json) =>
    _$PenjualanImpl(
      idProduct: json['id_product'] as String?,
      nameProduct: json['name_product'] as String?,
      amount: json['amount'] as String?,
      totalprice: json['totalprice'] as String?,
      sellingPrice: json['selling_price'] as String?,
      unit: json['unit'] as String?,
    );

Map<String, dynamic> _$$PenjualanImplToJson(_$PenjualanImpl instance) =>
    <String, dynamic>{
      'id_product': instance.idProduct,
      'name_product': instance.nameProduct,
      'amount': instance.amount,
      'totalprice': instance.totalprice,
      'selling_price': instance.sellingPrice,
      'unit': instance.unit,
    };
