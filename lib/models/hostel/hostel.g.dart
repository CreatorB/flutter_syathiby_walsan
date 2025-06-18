// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hostel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AsramaImpl _$$AsramaImplFromJson(Map<String, dynamic> json) => _$AsramaImpl(
      key: json['key'] as String?,
      idAsrama: json['id_asrama'] as String?,
      namaAsrama: json['nama_asrama'] as String?,
      jumlahSantri: (json['jumlah_santri'] as num?)?.toInt(),
      musrif: json['musrif'] as String?,
      date: json['date'] as String?,
      status: json['status'] as String?,
      dijemput: (json['dijemput'] as num?)?.toInt(),
      dikembalikan: (json['dikembalikan'] as num?)?.toInt(),
      belumpulang: (json['belumpulang'] as num?)?.toInt(),
      belumkembali: (json['belumkembali'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$AsramaImplToJson(_$AsramaImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'id_asrama': instance.idAsrama,
      'nama_asrama': instance.namaAsrama,
      'jumlah_santri': instance.jumlahSantri,
      'musrif': instance.musrif,
      'date': instance.date,
      'status': instance.status,
      'dijemput': instance.dijemput,
      'dikembalikan': instance.dikembalikan,
      'belumpulang': instance.belumpulang,
      'belumkembali': instance.belumkembali,
    };
