// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KesehatanImpl _$$KesehatanImplFromJson(Map<String, dynamic> json) =>
    _$KesehatanImpl(
      key: json['key'] as String?,
      id_kesehatan: json['id_kesehatan'] as String?,
      keluhan: json['keluhan'] as String?,
      date: json['date'] as String?,
      hour: json['hour'] as String?,
      nama_siswa: json['nama_siswa'] as String?,
      kelas: json['kelas'] as String?,
      status: json['status'] as String?,
      img: json['img'] as String?,
      staff: json['staff'] as String?,
      penanganan: json['penanganan'] as String?,
      dijemput: json['dijemput'] as String?,
      diagnosa: json['diagnosa'] as String?,
      istirahat: json['istirahat'] as String?,
      info_ortu: json['info_ortu'] as String?,
      totalSick: (json['jumlahsakit'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$KesehatanImplToJson(_$KesehatanImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'id_kesehatan': instance.id_kesehatan,
      'keluhan': instance.keluhan,
      'date': instance.date,
      'hour': instance.hour,
      'nama_siswa': instance.nama_siswa,
      'kelas': instance.kelas,
      'status': instance.status,
      'img': instance.img,
      'staff': instance.staff,
      'penanganan': instance.penanganan,
      'dijemput': instance.dijemput,
      'diagnosa': instance.diagnosa,
      'istirahat': instance.istirahat,
      'info_ortu': instance.info_ortu,
      'jumlahsakit': instance.totalSick,
    };
