// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_stock.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportStockImpl _$$ReportStockImplFromJson(Map<String, dynamic> json) =>
    _$ReportStockImpl(
      idBarang: json['id_barang'] as String?,
      namaBarang: json['nama_barang'] as String?,
      tanggalAwal: json['tanggal_awal'] as String?,
      tanggalAkhir: json['tanggal_akhir'] as String?,
      terjual: json['terjual'] as String?,
      stokTerakhir: json['stok_terakhir'] as String?,
      minimalStok: json['minimal_stok'] as String?,
      datastok: (json['datastok'] as List<dynamic>?)
          ?.map((e) => Detail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ReportStockImplToJson(_$ReportStockImpl instance) =>
    <String, dynamic>{
      'id_barang': instance.idBarang,
      'nama_barang': instance.namaBarang,
      'tanggal_awal': instance.tanggalAwal,
      'tanggal_akhir': instance.tanggalAkhir,
      'terjual': instance.terjual,
      'stok_terakhir': instance.stokTerakhir,
      'minimal_stok': instance.minimalStok,
      'datastok': instance.datastok,
    };

_$DetailImpl _$$DetailImplFromJson(Map<String, dynamic> json) => _$DetailImpl(
      sisaStok: json['sisa_stok'] as String?,
      minimalStok: json['minimal_stok'] as String?,
      tanggal: json['tanggal'] as String?,
    );

Map<String, dynamic> _$$DetailImplToJson(_$DetailImpl instance) =>
    <String, dynamic>{
      'sisa_stok': instance.sisaStok,
      'minimal_stok': instance.minimalStok,
      'tanggal': instance.tanggal,
    };
