// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_commission.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailCommissionImpl _$$DetailCommissionImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailCommissionImpl(
      detail: json['detail'] as String?,
      date: json['date'] as String?,
      amount: json['amount'] as String?,
      status: json['status'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$DetailCommissionImplToJson(
        _$DetailCommissionImpl instance) =>
    <String, dynamic>{
      'detail': instance.detail,
      'date': instance.date,
      'amount': instance.amount,
      'status': instance.status,
      'type': instance.type,
    };
