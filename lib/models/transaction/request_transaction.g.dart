// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestTransactionImpl _$$RequestTransactionImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestTransactionImpl(
      key: json['key'] as String?,
      paymentType: (json['payment_type'] as num?)?.toInt(),
      paymentAmount: (json['payment_amount'] as num?)?.toInt(),
      totalOrder: (json['total_order'] as num?)?.toDouble(),
      idCustomer: json['id_customer'] as String?,
      kurir: json['kurir'] as String?,
      nameCustomer: json['name_customer'] as String?,
      nameStore: json['name_store'] as String?,
      emailStore: json['email_store'] as String?,
      nohpStore: json['nohp_store'] as String?,
      footer: json['footer'] as String?,
      addressStore: json['address_store'] as String?,
      idSupplier: json['id_supplier'] as String?,
      nameSupplier: json['name_supplier'] as String?,
      point: json['point'] as String?,
      idDiscount: json['id_discount'] as String?,
      card: json['card'] as String?,
      note: json['note'] as String?,
      waktu: json['waktu'] as String?,
      dueDate: json['due_date'] as String?,
      product: (json['product'] as List<dynamic>?)
          ?.map((e) => Barang.fromJson(e as Map<String, dynamic>))
          .toList(),
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      idTable: json['id_table'] as String?,
      id: json['id'] as String?,
      complaint: json['complaint'] as String?,
      advice: json['advice'] as String?,
      nameKegiatan: json['name_kegiatan'] as String?,
      nameSubkegiatan: json['name_subkegiatan'] as String?,
      jenisKegiatan: json['jeniskegiatan'] as String?,
    );

Map<String, dynamic> _$$RequestTransactionImplToJson(
    _$RequestTransactionImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('key', instance.key);
  writeNotNull('payment_type', instance.paymentType);
  writeNotNull('payment_amount', instance.paymentAmount);
  writeNotNull('total_order', instance.totalOrder);
  writeNotNull('id_customer', instance.idCustomer);
  writeNotNull('kurir', instance.kurir);
  writeNotNull('name_customer', instance.nameCustomer);
  writeNotNull('name_store', instance.nameStore);
  writeNotNull('email_store', instance.emailStore);
  writeNotNull('nohp_store', instance.nohpStore);
  writeNotNull('footer', instance.footer);
  writeNotNull('address_store', instance.addressStore);
  writeNotNull('id_supplier', instance.idSupplier);
  writeNotNull('name_supplier', instance.nameSupplier);
  writeNotNull('point', instance.point);
  writeNotNull('id_discount', instance.idDiscount);
  writeNotNull('card', instance.card);
  writeNotNull('note', instance.note);
  writeNotNull('waktu', instance.waktu);
  writeNotNull('due_date', instance.dueDate);
  writeNotNull('product', instance.product?.map((e) => e.toJson()).toList());
  writeNotNull('latitude', instance.latitude);
  writeNotNull('longitude', instance.longitude);
  writeNotNull('id_table', instance.idTable);
  writeNotNull('id', instance.id);
  writeNotNull('complaint', instance.complaint);
  writeNotNull('advice', instance.advice);
  writeNotNull('name_kegiatan', instance.nameKegiatan);
  writeNotNull('name_subkegiatan', instance.nameSubkegiatan);
  writeNotNull('jeniskegiatan', instance.jenisKegiatan);
  return val;
}

_$BarangImpl _$$BarangImplFromJson(Map<String, dynamic> json) => _$BarangImpl(
      idProduct: json['id_product'] as String?,
      amountProduct: (json['amount_product'] as num?)?.toDouble(),
      newPrice: json['new_price'] as String?,
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$$BarangImplToJson(_$BarangImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id_product', instance.idProduct);
  writeNotNull('amount_product', instance.amountProduct);
  writeNotNull('new_price', instance.newPrice);
  writeNotNull('notes', instance.notes);
  return val;
}
