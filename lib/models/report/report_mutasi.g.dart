// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_mutasi.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportMutasiImpl _$$ReportMutasiImplFromJson(Map<String, dynamic> json) =>
    _$ReportMutasiImpl(
      info: json['info'] == null
          ? null
          : Info.fromJson(json['info'] as Map<String, dynamic>),
      transaksi: (json['transaksi'] as List<dynamic>?)
          ?.map((e) => Transaksi.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ReportMutasiImplToJson(_$ReportMutasiImpl instance) =>
    <String, dynamic>{
      'info': instance.info,
      'transaksi': instance.transaksi,
    };

_$InfoImpl _$$InfoImplFromJson(Map<String, dynamic> json) => _$InfoImpl(
      penjualanBersih: json['penjualan_bersih'] as String?,
      jumlahTransaksi: json['jumlah_transaksi'] as String?,
    );

Map<String, dynamic> _$$InfoImplToJson(_$InfoImpl instance) =>
    <String, dynamic>{
      'penjualan_bersih': instance.penjualanBersih,
      'jumlah_transaksi': instance.jumlahTransaksi,
    };

_$TransaksiImpl _$$TransaksiImplFromJson(Map<String, dynamic> json) =>
    _$TransaksiImpl(
      noInvoice: json['no_invoice'] as String?,
      tanggal: json['tanggal'] as String?,
      omset: json['omset'] as String?,
      margin: json['margin'] as String?,
      barang: (json['barang'] as List<dynamic>?)
          ?.map((e) => Barang.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TransaksiImplToJson(_$TransaksiImpl instance) =>
    <String, dynamic>{
      'no_invoice': instance.noInvoice,
      'tanggal': instance.tanggal,
      'omset': instance.omset,
      'margin': instance.margin,
      'barang': instance.barang,
    };

_$BarangImpl _$$BarangImplFromJson(Map<String, dynamic> json) => _$BarangImpl(
      idBarang: json['id_barang'] as String?,
      namaBarang: json['nama_barang'] as String?,
      margin: json['margin'] as String?,
      laba: json['laba'] as String?,
      qty: json['qty'] as String?,
      hargaJual: json['harga_jual'] as String?,
      hargaBeli: json['harga_beli'] as String?,
    );

Map<String, dynamic> _$$BarangImplToJson(_$BarangImpl instance) =>
    <String, dynamic>{
      'id_barang': instance.idBarang,
      'nama_barang': instance.namaBarang,
      'margin': instance.margin,
      'laba': instance.laba,
      'qty': instance.qty,
      'harga_jual': instance.hargaJual,
      'harga_beli': instance.hargaBeli,
    };
