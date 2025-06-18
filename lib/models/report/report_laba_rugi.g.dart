// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_laba_rugi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportLabaRugiImpl _$$ReportLabaRugiImplFromJson(Map<String, dynamic> json) =>
    _$ReportLabaRugiImpl(
      info: json['info'] == null
          ? null
          : Info.fromJson(json['info'] as Map<String, dynamic>),
      financialStatements: json['financialStatements'] == null
          ? null
          : Keuangan.fromJson(
              json['financialStatements'] as Map<String, dynamic>),
      salesReport: (json['salesReport'] as List<dynamic>?)
          ?.map((e) => Penjualan.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ReportLabaRugiImplToJson(
        _$ReportLabaRugiImpl instance) =>
    <String, dynamic>{
      'info': instance.info,
      'financialStatements': instance.financialStatements,
      'salesReport': instance.salesReport,
    };

_$InfoImpl _$$InfoImplFromJson(Map<String, dynamic> json) => _$InfoImpl(
      netSales: json['net_sales'] as String?,
      average: json['average'] as String?,
      amountTransaction: json['amount_transaction'] as String?,
    );

Map<String, dynamic> _$$InfoImplToJson(_$InfoImpl instance) =>
    <String, dynamic>{
      'net_sales': instance.netSales,
      'average': instance.average,
      'amount_transaction': instance.amountTransaction,
    };

_$PenjualanImpl _$$PenjualanImplFromJson(Map<String, dynamic> json) =>
    _$PenjualanImpl(
      idProduct: json['id_product'] as String?,
      nameProduct: json['name_product'] as String?,
      amount: json['amount'] as String?,
      totalPrice: json['totalprice'] as String?,
      sellingPrice: json['selling_price'] as String?,
    );

Map<String, dynamic> _$$PenjualanImplToJson(_$PenjualanImpl instance) =>
    <String, dynamic>{
      'id_product': instance.idProduct,
      'name_product': instance.nameProduct,
      'amount': instance.amount,
      'totalprice': instance.totalPrice,
      'selling_price': instance.sellingPrice,
    };

_$KeuanganImpl _$$KeuanganImplFromJson(Map<String, dynamic> json) =>
    _$KeuanganImpl(
      grossSales: json['gross_sales'] as String?,
      discount: json['discount'] as String?,
      cancellation: json['cancellation'] as String?,
      netSales: json['net_sales'] as String?,
      tax: json['tax'] as String?,
      admin: json['admin'] as String?,
      totalIncome: json['total_income'] as String?,
      hargaPokokPenjualan: json['harga_pokok_penjualan'] as String?,
      grossProfit: json['gross_profit'] as String?,
      expenses: json['expenses'] as String?,
    );

Map<String, dynamic> _$$KeuanganImplToJson(_$KeuanganImpl instance) =>
    <String, dynamic>{
      'gross_sales': instance.grossSales,
      'discount': instance.discount,
      'cancellation': instance.cancellation,
      'net_sales': instance.netSales,
      'tax': instance.tax,
      'admin': instance.admin,
      'total_income': instance.totalIncome,
      'harga_pokok_penjualan': instance.hargaPokokPenjualan,
      'gross_profit': instance.grossProfit,
      'expenses': instance.expenses,
    };
