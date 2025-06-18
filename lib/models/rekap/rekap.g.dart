// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rekap.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RekapImpl _$$RekapImplFromJson(Map<String, dynamic> json) => _$RekapImpl(
      key: json['key'] as String?,
      namaLengkap: json['nama_lengkap'] as String?,
      date: json['date'] as String?,
      jumlahMapel: json['jumlahmapel'],
      hadirPelajaran: json['hadirpelajaran'],
      izinPelajaran: json['izinpelajaran'],
      sakitPelajaran: json['sakitpelajaran'],
      alfaPelajaran: json['alfapelajaran'],
      tahfidzdhuha: json['tahfidzdhuha'] as String?,
      tahfidzSubuh: json['tahfidzsubuh'] as String?,
      tahfidzSiang: json['tahfidzsiang'] as String?,
      tahfidzMalam: json['tahfidzmalam'] as String?,
      makanPagi: json['makanpagi'] as String?,
      makanSiang: json['makansiang'] as String?,
      makanMalam: json['makanmalam'] as String?,
      tidur: json['tidur'] as String?,
    );

Map<String, dynamic> _$$RekapImplToJson(_$RekapImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'nama_lengkap': instance.namaLengkap,
      'date': instance.date,
      'jumlahmapel': instance.jumlahMapel,
      'hadirpelajaran': instance.hadirPelajaran,
      'izinpelajaran': instance.izinPelajaran,
      'sakitpelajaran': instance.sakitPelajaran,
      'alfapelajaran': instance.alfaPelajaran,
      'tahfidzdhuha': instance.tahfidzdhuha,
      'tahfidzsubuh': instance.tahfidzSubuh,
      'tahfidzsiang': instance.tahfidzSiang,
      'tahfidzmalam': instance.tahfidzMalam,
      'makanpagi': instance.makanPagi,
      'makansiang': instance.makanSiang,
      'makanmalam': instance.makanMalam,
      'tidur': instance.tidur,
    };
