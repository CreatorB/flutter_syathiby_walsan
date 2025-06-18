// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'staff.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StaffImpl _$$StaffImplFromJson(Map<String, dynamic> json) => _$StaffImpl(
      key: json['key'] as String?,
      email: json['email'] as String?,
      fullName: json['full_name'] as String?,
      phoneNumber: json['phone_number'] as String?,
      address: json['address'] as String?,
      city: json['city'] as String?,
      img: json['img'] as String?,
      level: json['level'] as String?,
      type: json['type'] as String?,
      position: json['position'] as String?,
      idStore: json['id_store'] as String?,
      nameStore: json['name_store'] as String?,
      salary: json['salary'] as String?,
      gajilembur: json['gajilembur'] as String?,
      commission: json['commission'] as String?,
      allowance: json['allowance'] as String?,
      piece: json['piece'] as String?,
      totalWork: (json['total_work'] as num?)?.toInt(),
      workProcces: (json['work_procces'] as num?)?.toInt(),
      workFinish: (json['work_finish'] as num?)?.toInt(),
      workPaid: (json['work_paid'] as num?)?.toInt(),
      dateUpdate: json['date_update'] as String?,
      latlong: json['latlong'] as String?,
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
      lastChat: json['last_chat'] as String?,
      detail: json['detail'] as String?,
      status: json['status'] as String?,
      chat: json['chat'] as String?,
      kinerja: json['kinerja'] as String?,
    );

Map<String, dynamic> _$$StaffImplToJson(_$StaffImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'email': instance.email,
      'full_name': instance.fullName,
      'phone_number': instance.phoneNumber,
      'address': instance.address,
      'city': instance.city,
      'img': instance.img,
      'level': instance.level,
      'type': instance.type,
      'position': instance.position,
      'id_store': instance.idStore,
      'name_store': instance.nameStore,
      'salary': instance.salary,
      'gajilembur': instance.gajilembur,
      'commission': instance.commission,
      'allowance': instance.allowance,
      'piece': instance.piece,
      'total_work': instance.totalWork,
      'work_procces': instance.workProcces,
      'work_finish': instance.workFinish,
      'work_paid': instance.workPaid,
      'date_update': instance.dateUpdate,
      'latlong': instance.latlong,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'last_chat': instance.lastChat,
      'detail': instance.detail,
      'status': instance.status,
      'chat': instance.chat,
      'kinerja': instance.kinerja,
    };
