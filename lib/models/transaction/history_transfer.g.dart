// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_transfer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HistoryTransferImpl _$$HistoryTransferImplFromJson(
        Map<String, dynamic> json) =>
    _$HistoryTransferImpl(
      totalorderall: json['totalorderall'] as String?,
      totalnominal: json['totalnominal'] as String?,
      date: json['date'] as String?,
      detail: (json['detail'] as List<dynamic>?)
          ?.map((e) => Transfer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HistoryTransferImplToJson(
        _$HistoryTransferImpl instance) =>
    <String, dynamic>{
      'totalorderall': instance.totalorderall,
      'totalnominal': instance.totalnominal,
      'date': instance.date,
      'detail': instance.detail,
    };
