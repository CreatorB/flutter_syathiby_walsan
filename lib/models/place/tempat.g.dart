// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tempat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TempatImpl _$$TempatImplFromJson(Map<String, dynamic> json) => _$TempatImpl(
      key: json['key'] as String?,
      id_tempat: json['id_tempat'] as String?,
      nama_tempat: json['nama_tempat'] as String?,
      jumlah_barang: (json['jumlah_barang'] as num?)?.toInt(),
      lokasi: json['lokasi'] as String?,
      date: json['date'] as String?,
      status: json['status'] as String?,
      bagus: json['bagus'],
      cukupbaik: json['cukupbaik'],
      rusak: json['rusak'],
    );

Map<String, dynamic> _$$TempatImplToJson(_$TempatImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'id_tempat': instance.id_tempat,
      'nama_tempat': instance.nama_tempat,
      'jumlah_barang': instance.jumlah_barang,
      'lokasi': instance.lokasi,
      'date': instance.date,
      'status': instance.status,
      'bagus': instance.bagus,
      'cukupbaik': instance.cukupbaik,
      'rusak': instance.rusak,
    };
