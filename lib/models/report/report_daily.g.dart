// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_daily.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportDailyImpl _$$ReportDailyImplFromJson(Map<String, dynamic> json) =>
    _$ReportDailyImpl(
      info: json['info'] == null
          ? null
          : Info.fromJson(json['info'] as Map<String, dynamic>),
      dailyReport: (json['dailyReport'] as List<dynamic>?)
          ?.map((e) => Daily.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ReportDailyImplToJson(_$ReportDailyImpl instance) =>
    <String, dynamic>{
      'info': instance.info,
      'dailyReport': instance.dailyReport,
    };

_$InfoImpl _$$InfoImplFromJson(Map<String, dynamic> json) => _$InfoImpl(
      nameStore: json['name_store'] as String?,
      date: json['date'] as String?,
      total: json['total'] as String?,
    );

Map<String, dynamic> _$$InfoImplToJson(_$InfoImpl instance) =>
    <String, dynamic>{
      'name_store': instance.nameStore,
      'date': instance.date,
      'total': instance.total,
    };

_$DailyImpl _$$DailyImplFromJson(Map<String, dynamic> json) => _$DailyImpl(
      operator: json['operator'] as String?,
      salesCash: json['sales_cash'] as String?,
      salesDebt: json['sales_debt'] as String?,
      salesCreditCard: json['sales_credit_card'] as String?,
      salesDebitCard: json['sales_debit_card'] as String?,
      gopay: json['gopay'] as String?,
      ovo: json['ovo'] as String?,
      dana: json['dana'] as String?,
      subTotal: json['sub_total'] as String?,
      nameStore: json['name_store'] as String?,
      date: json['date'] as String?,
    );

Map<String, dynamic> _$$DailyImplToJson(_$DailyImpl instance) =>
    <String, dynamic>{
      'operator': instance.operator,
      'sales_cash': instance.salesCash,
      'sales_debt': instance.salesDebt,
      'sales_credit_card': instance.salesCreditCard,
      'sales_debit_card': instance.salesDebitCard,
      'gopay': instance.gopay,
      'ovo': instance.ovo,
      'dana': instance.dana,
      'sub_total': instance.subTotal,
      'name_store': instance.nameStore,
      'date': instance.date,
    };
