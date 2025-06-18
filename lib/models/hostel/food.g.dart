// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MakanImpl _$$MakanImplFromJson(Map<String, dynamic> json) => _$MakanImpl(
      makanKey: json['key'] as String?,
      idAsrama: json['id_asrama'] as String?,
      namaAsrama: json['nama_asrama'] as String?,
      jumlahSantri: (json['jumlah_santri'] as num?)?.toInt(),
      musrif: json['musrif'] as String?,
      tanggal: json['date'] as String?,
      status: json['status'] as String?,
      absenPagi: (json['absenpagi'] as num?)?.toInt(),
      tidakAbsenPagi: (json['tidakabsenpagi'] as num?)?.toInt(),
      absenSiang: (json['absensiang'] as num?)?.toInt(),
      tidakAbsenSiang: (json['tidakabsensiang'] as num?)?.toInt(),
      absenMalam: (json['absenmalam'] as num?)?.toInt(),
      tidakAbsenMalam: (json['tidakabsenmalam'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MakanImplToJson(_$MakanImpl instance) =>
    <String, dynamic>{
      'key': instance.makanKey,
      'id_asrama': instance.idAsrama,
      'nama_asrama': instance.namaAsrama,
      'jumlah_santri': instance.jumlahSantri,
      'musrif': instance.musrif,
      'date': instance.tanggal,
      'status': instance.status,
      'absenpagi': instance.absenPagi,
      'tidakabsenpagi': instance.tidakAbsenPagi,
      'absensiang': instance.absenSiang,
      'tidakabsensiang': instance.tidakAbsenSiang,
      'absenmalam': instance.absenMalam,
      'tidakabsenmalam': instance.tidakAbsenMalam,
    };
