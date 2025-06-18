// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_label.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailLabelImpl _$$DetailLabelImplFromJson(Map<String, dynamic> json) =>
    _$DetailLabelImpl(
      struk: json['struk'] == null
          ? null
          : Struk.fromJson(json['struk'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DetailLabelImplToJson(_$DetailLabelImpl instance) =>
    <String, dynamic>{
      'struk': instance.struk,
      'data': instance.data,
    };

_$StrukImpl _$$StrukImplFromJson(Map<String, dynamic> json) => _$StrukImpl(
      noInvoice: json['noInvoice'] as String?,
    );

Map<String, dynamic> _$$StrukImplToJson(_$StrukImpl instance) =>
    <String, dynamic>{
      'noInvoice': instance.noInvoice,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      nameStore: json['nameStore'] as String?,
      codeproduct: json['codeproduct'] as String?,
      nameProduct: json['nameProduct'] as String?,
      noInvoice: json['noInvoice'] as String?,
      idProduct: json['idProduct'] as String?,
      date: json['date'] as String?,
      amount: json['amount'] as String?,
      img: json['img'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'nameStore': instance.nameStore,
      'codeproduct': instance.codeproduct,
      'nameProduct': instance.nameProduct,
      'noInvoice': instance.noInvoice,
      'idProduct': instance.idProduct,
      'date': instance.date,
      'amount': instance.amount,
      'img': instance.img,
      'description': instance.description,
    };
