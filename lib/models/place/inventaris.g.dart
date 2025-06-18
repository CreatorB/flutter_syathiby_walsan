// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventaris.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InventarisImpl _$$InventarisImplFromJson(Map<String, dynamic> json) =>
    _$InventarisImpl(
      key: json['key'] as String?,
      id_tempat: json['id_tempat'] as String?,
      id_inventaris: json['id_inventaris'] as String?,
      nama_tempat: json['nama_tempat'] as String?,
      nama_inventaris: json['nama_inventaris'] as String?,
      code: json['code'] as String?,
      jumlah_barang: json['jumlah_barang'] as String?,
      cek_terakhir: json['cek_terakhir'] as String?,
      date: json['date'] as String?,
      kondisi: json['kondisi'] as String?,
      bagus: json['bagus'] as String?,
      cukupbaik: json['cukupbaik'] as String?,
      rusak: json['rusak'] as String?,
      img: json['img'] as String?,
      unit: json['unit'] as String?,
    );

Map<String, dynamic> _$$InventarisImplToJson(_$InventarisImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'id_tempat': instance.id_tempat,
      'id_inventaris': instance.id_inventaris,
      'nama_tempat': instance.nama_tempat,
      'nama_inventaris': instance.nama_inventaris,
      'code': instance.code,
      'jumlah_barang': instance.jumlah_barang,
      'cek_terakhir': instance.cek_terakhir,
      'date': instance.date,
      'kondisi': instance.kondisi,
      'bagus': instance.bagus,
      'cukupbaik': instance.cukupbaik,
      'rusak': instance.rusak,
      'img': instance.img,
      'unit': instance.unit,
    };
