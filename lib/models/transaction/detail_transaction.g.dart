// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailTransactionImpl _$$DetailTransactionImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailTransactionImpl(
      struk: json['struk'] == null
          ? null
          : Struk.fromJson(json['struk'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => TransactionData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DetailTransactionImplToJson(
        _$DetailTransactionImpl instance) =>
    <String, dynamic>{
      'struk': instance.struk,
      'data': instance.data,
    };

_$StrukImpl _$$StrukImplFromJson(Map<String, dynamic> json) => _$StrukImpl(
      nameStore: json['name_store'] as String?,
      email: json['email'] as String?,
      noHp: json['nohp'] as String?,
      address: json['address'] as String?,
      noInvoice: json['no_invoice'] as String?,
      operator: json['operator'] as String?,
      idCustomer: json['id_customer'] as String?,
      nameCustomer: json['name_customer'] as String?,
      idTable: json['id_table'] as String?,
      nameTable: json['name_table'] as String?,
      idSupplier: json['id_supplier'] as String?,
      nameSupplier: json['name_supplier'] as String?,
      date: json['date'] as String?,
      payment: json['payment'] as String?,
      totalOrder: (json['totalorder'] as num?)?.toInt(),
      totalPay: (json['totalpay'] as num?)?.toInt(),
      totalLast: (json['totallast'] as num?)?.toInt(),
      changePay: json['changepay'] as String?,
      status: json['status'] as String?,
      note: json['note'] as String?,
      dueDate: json['due_date'] as String?,
      serviceCharge: json['service_charge'] as String?,
      discount: json['discount'] as String?,
      tax: json['tax'] as String?,
      footer: json['footer'] as String?,
      img: json['img'] as String?,
      paper: (json['paper'] as num?)?.toInt(),
      linkOrder: json['link_order'] as String?,
      namaKegiatan: json['nama_kegiatan'] as String?,
      subKegiatan: json['subkegiatan'] as String?,
      alokasi: json['alokasi'] as String?,
      jenisKegiatan: json['jeniskegiatan'] as String?,
      keterangan: json['keterangan'] as String?,
      namaBidang: json['namabidang'] as String?,
      level: json['level'] as String?,
      waktu: json['waktu'] as String?,
    );

Map<String, dynamic> _$$StrukImplToJson(_$StrukImpl instance) =>
    <String, dynamic>{
      'name_store': instance.nameStore,
      'email': instance.email,
      'nohp': instance.noHp,
      'address': instance.address,
      'no_invoice': instance.noInvoice,
      'operator': instance.operator,
      'id_customer': instance.idCustomer,
      'name_customer': instance.nameCustomer,
      'id_table': instance.idTable,
      'name_table': instance.nameTable,
      'id_supplier': instance.idSupplier,
      'name_supplier': instance.nameSupplier,
      'date': instance.date,
      'payment': instance.payment,
      'totalorder': instance.totalOrder,
      'totalpay': instance.totalPay,
      'totallast': instance.totalLast,
      'changepay': instance.changePay,
      'status': instance.status,
      'note': instance.note,
      'due_date': instance.dueDate,
      'service_charge': instance.serviceCharge,
      'discount': instance.discount,
      'tax': instance.tax,
      'footer': instance.footer,
      'img': instance.img,
      'paper': instance.paper,
      'link_order': instance.linkOrder,
      'nama_kegiatan': instance.namaKegiatan,
      'subkegiatan': instance.subKegiatan,
      'alokasi': instance.alokasi,
      'jeniskegiatan': instance.jenisKegiatan,
      'keterangan': instance.keterangan,
      'namabidang': instance.namaBidang,
      'level': instance.level,
      'waktu': instance.waktu,
    };

_$TransactionDataImpl _$$TransactionDataImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionDataImpl(
      codeProduct: json['codeproduct'] as String?,
      nameProduct: json['name_product'] as String?,
      noInvoice: json['no_invoice'] as String?,
      idProduct: json['id_product'] as String?,
      date: json['date'] as String?,
      amount: json['amount'],
      price: json['price'],
      totalPrice: json['totalprice'],
      status: json['status'] as String?,
      haveStock: json['have_stock'] as String?,
      stock: json['stock'] as String?,
      img: json['img'] as String?,
      note: json['note'] as String?,
      unit: json['unit'] as String?,
    );

Map<String, dynamic> _$$TransactionDataImplToJson(
        _$TransactionDataImpl instance) =>
    <String, dynamic>{
      'codeproduct': instance.codeProduct,
      'name_product': instance.nameProduct,
      'no_invoice': instance.noInvoice,
      'id_product': instance.idProduct,
      'date': instance.date,
      'amount': instance.amount,
      'price': instance.price,
      'totalprice': instance.totalPrice,
      'status': instance.status,
      'have_stock': instance.haveStock,
      'stock': instance.stock,
      'img': instance.img,
      'note': instance.note,
      'unit': instance.unit,
    };
