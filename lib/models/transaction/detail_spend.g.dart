// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_spend.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailSpendImpl _$$DetailSpendImplFromJson(Map<String, dynamic> json) =>
    _$DetailSpendImpl(
      info: json['info'] == null
          ? null
          : Struk.fromJson(json['info'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DetailSpendImplToJson(_$DetailSpendImpl instance) =>
    <String, dynamic>{
      'info': instance.info,
      'data': instance.data,
    };

_$StrukImpl _$$StrukImplFromJson(Map<String, dynamic> json) => _$StrukImpl(
      oleh: json['oleh'] as String?,
      noInvoice: json['no_invoice'] as String?,
      date: json['date'] as String?,
      totalNominal: json['totalnominal'] as String?,
      img: json['img'] as String?,
    );

Map<String, dynamic> _$$StrukImplToJson(_$StrukImpl instance) =>
    <String, dynamic>{
      'oleh': instance.oleh,
      'no_invoice': instance.noInvoice,
      'date': instance.date,
      'totalnominal': instance.totalNominal,
      'img': instance.img,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      nameSpending: json['name_spending'] as String?,
      nominal: json['nominal'] as String?,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'name_spending': instance.nameSpending,
      'nominal': instance.nominal,
      'note': instance.note,
    };
