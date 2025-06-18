// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_transfer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailTransferImpl _$$DetailTransferImplFromJson(Map<String, dynamic> json) =>
    _$DetailTransferImpl(
      struk: json['struk'] == null
          ? null
          : Struk.fromJson(json['struk'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DetailTransferImplToJson(
        _$DetailTransferImpl instance) =>
    <String, dynamic>{
      'struk': instance.struk,
      'data': instance.data,
    };

_$StrukImpl _$$StrukImplFromJson(Map<String, dynamic> json) => _$StrukImpl(
      nameStore: json['nameStore'] as String?,
      email: json['email'] as String?,
      nohp: json['nohp'] as String?,
      address: json['address'] as String?,
      noInvoice: json['noInvoice'] as String?,
      operator: json['operator'] as String?,
      date: json['date'] as String?,
      payment: json['payment'] as String?,
      totalorder: json['totalorder'] as String?,
      totalpay: json['totalpay'] as String?,
      totallast: json['totallast'] as String?,
      changepay: json['changepay'] as String?,
      status: json['status'] as String?,
      note: json['note'] as String?,
      img: json['img'] as String?,
      storeDestination: json['storeDestination'] as String?,
      paper: (json['paper'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$StrukImplToJson(_$StrukImpl instance) =>
    <String, dynamic>{
      'nameStore': instance.nameStore,
      'email': instance.email,
      'nohp': instance.nohp,
      'address': instance.address,
      'noInvoice': instance.noInvoice,
      'operator': instance.operator,
      'date': instance.date,
      'payment': instance.payment,
      'totalorder': instance.totalorder,
      'totalpay': instance.totalpay,
      'totallast': instance.totallast,
      'changepay': instance.changepay,
      'status': instance.status,
      'note': instance.note,
      'img': instance.img,
      'storeDestination': instance.storeDestination,
      'paper': instance.paper,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      codeproduct: json['codeproduct'] as String?,
      nameProduct: json['nameProduct'] as String?,
      noInvoice: json['noInvoice'] as String?,
      idProduct: json['idProduct'] as String?,
      date: json['date'] as String?,
      amount: json['amount'] as String?,
      price: json['price'] as String?,
      totalprice: json['totalprice'] as String?,
      status: json['status'] as String?,
      haveStock: json['haveStock'] as String?,
      stock: json['stock'] as String?,
      img: json['img'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'codeproduct': instance.codeproduct,
      'nameProduct': instance.nameProduct,
      'noInvoice': instance.noInvoice,
      'idProduct': instance.idProduct,
      'date': instance.date,
      'amount': instance.amount,
      'price': instance.price,
      'totalprice': instance.totalprice,
      'status': instance.status,
      'haveStock': instance.haveStock,
      'stock': instance.stock,
      'img': instance.img,
    };
