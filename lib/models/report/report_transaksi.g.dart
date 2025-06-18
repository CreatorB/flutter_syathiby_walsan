// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_transaksi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportTransaksiImpl _$$ReportTransaksiImplFromJson(
        Map<String, dynamic> json) =>
    _$ReportTransaksiImpl(
      idProduct: json['id_product'] as String?,
      nameProduct: json['name_product'] as String?,
      firstDate: json['first_date'] as String?,
      finishDate: json['finish_date'] as String?,
      totalOrder: json['totalorder'] as String?,
      sales: json['sales'] as String?,
      lastStock: json['last_stock'] as String?,
      purchasePrice: json['purchase_price'] as String?,
      sellingPrice: json['selling_price'] as String?,
      labaRugi: json['laba_rugi'] as String?,
      haveStock: json['have_stock'] as String?,
      unit: json['unit'] as String?,
    );

Map<String, dynamic> _$$ReportTransaksiImplToJson(
        _$ReportTransaksiImpl instance) =>
    <String, dynamic>{
      'id_product': instance.idProduct,
      'name_product': instance.nameProduct,
      'first_date': instance.firstDate,
      'finish_date': instance.finishDate,
      'totalorder': instance.totalOrder,
      'sales': instance.sales,
      'last_stock': instance.lastStock,
      'purchase_price': instance.purchasePrice,
      'selling_price': instance.sellingPrice,
      'laba_rugi': instance.labaRugi,
      'have_stock': instance.haveStock,
      'unit': instance.unit,
    };
