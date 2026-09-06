import 'dart:io';

import 'package:dio/dio.dart';
import 'package:rabbaanii_portal/models/message.dart';
import 'package:rabbaanii_portal/models/permit/permit.dart';
import 'package:retrofit/retrofit.dart';

part 'permit_service.g.dart';

@RestApi()
abstract class PermitRestInterface {
  factory PermitRestInterface(
    Dio dio, {
    String baseUrl,
  }) = _PermitRestInterface;

  @GET('permit/list.php')
  Future<List<Permit>> get(
    @Query('key') String key,
    @Query('page') int page,
  );

  @GET('permit/listpermit.php')
  Future<List<Permit>> getPermitdate(
    @Query('key') String key,
    @Query('awal') String awal,
    @Query('akhir') String akhir,
    @Query('page') int? page,
    @Query('grup') String grup,
  );

  @GET('permit/detail.php')
  Future<List<Permit>> getPermit(
    @Query('key') String key,
    @Query('id') String id,
  );

  @GET('permit/walidetailsantri.php')
  Future<List<Permit>> getPermitSantri(
    @Query('key') String key,
    @Query('id') String id,
  );

  @GET('permit/confirm.php')
  Future<Message> aprovePermit(
    @Query('key') String key,
    @Query('id_permit') String id,
    @Query('value') String data,
    @Query('alasan') String alasan,
  );

  @GET('permit/confirmsantri.php')
  Future<Message> aprovePermitSantri(
    @Query('key') String key,
    @Query('id_permit') String id,
    @Query('value') String data,
    @Query('alasan') String alasan,
  );

  @GET('permit/walidecancelsantri.php')
  Future<Message> cancelPermitSantri(
    @Query('key') String key,
    @Query('id') String id,
  );

  @GET('permit/walilistsantri.php')
  Future<List<Permit>> getSantri(
    @Query('key') String key,
    @Query('page') int? page,
  );

  @GET('permit/type.php')
  Future<List<Permit>> type(
    @Query('key') String key,
    @Query('type') String type,
  );

  @POST('permit/insert.php')
  @MultiPart()
  Future<Message> add(
    @Part(name: 'key') String key,
    @Part(name: 'name_permit') String permitName,
    @Part(name: 'date') String date,
    @Part(name: 'day') String day,
    @Part(name: 'detail') String detail, {
    @Part(name: 'img') File? img,
  });

  @POST('permit/waliinsertsantri.php')
  @MultiPart()
  Future<Message> addSantri(
    @Part(name: 'key') String key,
    @Part(name: 'id_izin') String idIzin,
    @Part(name: 'name_permit') String name,
    @Part(name: 'date') String date,
    @Part(name: 'day') String day,
    @Part(name: 'nis') String nis,
    @Part(name: 'id_kelas') String idKelas,
    @Part(name: 'detail') String detail,
    @Part(name: 'id_siswa') String studentId,
      {
    @Part(name: 'img', fileName: 'permit.jpg') List<int>? img,
  });

  @MultiPart()
  @POST('siswa/tambahakunsantri.php')
  Future<Message> addAkunSantri(
    @Part(name: 'key') String key,
    @Part(name: 'nis') String nis,
    @Part(name: 'id_kelas') String idKelas,
    @Part(name: 'id_siswa') String idSiswa,
  );
}
