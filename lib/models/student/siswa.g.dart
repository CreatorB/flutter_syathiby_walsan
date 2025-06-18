// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'siswa.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SiswaImpl _$$SiswaImplFromJson(Map<String, dynamic> json) => _$SiswaImpl(
      key: json['key'] as String?,
      email: json['email'] as String?,
      nis: json['nis'] as String? ?? '',
      idSiswa: json['id_siswa'] as String?,
      namaLengkap: json['nama_lengkap'] as String?,
      phoneNumber: json['phone_number'] as String?,
      alamat: json['alamat'] as String?,
      idKelas: json['id_kelas'] as String?,
      idAsrama: json['id_asrama'] as String?,
      kelas: json['kelas'] as String?,
      idTingkat: json['id_tingkat'] as String?,
      tingkat: json['tingkat'] as String?,
      img: json['img'] as String?,
      semester: json['semester'] as String?,
      tahunAjaran: json['tahun_ajaran'] as String?,
      idStore: json['id_store'] as String?,
      nameSekolah: json['name_sekolah'] as String?,
      rekeningspp: json['rekeningspp'] as String?,
      rekeningdaftarulang: json['rekeningdaftarulang'] as String?,
      rekeningtabungan: json['rekeningtabungan'] as String?,
      status: json['status'] as String?,
      statusAbsen: json['status_absen'] as String?,
      waliKelas: json['wali_kelas'] as String?,
      rangking: json['rangking'] as String?,
      jumlahSiswa: (json['jumlah_siswa'] as num?)?.toInt(),
      date: json['date'] as String?,
      staff: json['staff'] as String?,
      type: json['type'] as String?,
      tabungan: json['tabungan'] as String?,
      limitTransaksi: json['limit_transaksi'] as String?,
    );

Map<String, dynamic> _$$SiswaImplToJson(_$SiswaImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'email': instance.email,
      'nis': instance.nis,
      'id_siswa': instance.idSiswa,
      'nama_lengkap': instance.namaLengkap,
      'phone_number': instance.phoneNumber,
      'alamat': instance.alamat,
      'id_kelas': instance.idKelas,
      'id_asrama': instance.idAsrama,
      'kelas': instance.kelas,
      'id_tingkat': instance.idTingkat,
      'tingkat': instance.tingkat,
      'img': instance.img,
      'semester': instance.semester,
      'tahun_ajaran': instance.tahunAjaran,
      'id_store': instance.idStore,
      'name_sekolah': instance.nameSekolah,
      'rekeningspp': instance.rekeningspp,
      'rekeningdaftarulang': instance.rekeningdaftarulang,
      'rekeningtabungan': instance.rekeningtabungan,
      'status': instance.status,
      'status_absen': instance.statusAbsen,
      'wali_kelas': instance.waliKelas,
      'rangking': instance.rangking,
      'jumlah_siswa': instance.jumlahSiswa,
      'date': instance.date,
      'staff': instance.staff,
      'type': instance.type,
      'tabungan': instance.tabungan,
      'limit_transaksi': instance.limitTransaksi,
    };
