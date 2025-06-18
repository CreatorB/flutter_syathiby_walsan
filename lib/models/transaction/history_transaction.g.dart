// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HistoryTransactionImpl _$$HistoryTransactionImplFromJson(
        Map<String, dynamic> json) =>
    _$HistoryTransactionImpl(
      totalorderall: json['totalorderall'],
      totalNominal: json['totalnominal'],
      date: json['date'] as String?,
      detail: (json['detail'] as List<dynamic>?)
          ?.map((e) => Transaction.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HistoryTransactionImplToJson(
        _$HistoryTransactionImpl instance) =>
    <String, dynamic>{
      'totalorderall': instance.totalorderall,
      'totalnominal': instance.totalNominal,
      'date': instance.date,
      'detail': instance.detail,
    };
