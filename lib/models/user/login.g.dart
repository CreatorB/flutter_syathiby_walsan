// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginImpl _$$LoginImplFromJson(Map<String, dynamic> json) => _$LoginImpl(
      key: json['key'] as String?,
      token: json['token'] as String?,
      currency: json['currency'] as String?,
      user: json['user'] as String?,
      level: json['level'] as String?,
      master: json['master'] as String?,
      packages: json['packages'],
      typestore: json['typestore'] as String?,
      decimal: json['decimal'] as String?,
      id_store: json['id_store'] as String?,
      device: json['device'] as String?,
    );

Map<String, dynamic> _$$LoginImplToJson(_$LoginImpl instance) =>
    <String, dynamic>{
      'key': instance.key,
      'token': instance.token,
      'currency': instance.currency,
      'user': instance.user,
      'level': instance.level,
      'master': instance.master,
      'packages': instance.packages,
      'typestore': instance.typestore,
      'decimal': instance.decimal,
      'id_store': instance.id_store,
      'device': instance.device,
    };
