// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailChatImpl _$$DetailChatImplFromJson(Map<String, dynamic> json) =>
    _$DetailChatImpl(
      info: json['info'] == null
          ? null
          : Info.fromJson(json['info'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Data.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DetailChatImplToJson(_$DetailChatImpl instance) =>
    <String, dynamic>{
      'info': instance.info,
      'data': instance.data,
    };

_$InfoImpl _$$InfoImplFromJson(Map<String, dynamic> json) => _$InfoImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      detail: json['detail'] as String? ?? "",
      date: json['date'] as String? ?? "0",
      status: json['status'] as String? ?? "0",
      chat: json['chat'] as String?,
      no_invoice: json['no_invoice'] as String?,
    );

Map<String, dynamic> _$$InfoImplToJson(_$InfoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'detail': instance.detail,
      'date': instance.date,
      'status': instance.status,
      'chat': instance.chat,
      'no_invoice': instance.no_invoice,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      phone_number: json['phone_number'] as String?,
      detail: json['detail'] as String?,
      date: json['date'] as String?,
      status: json['status'] as String?,
      chat: json['chat'] as String?,
      img: json['img'] as String?,
      no_invoice: json['no_invoice'] as String?,
      read: json['read'] as String?,
      chat_images: json['chat_images'] as String?,
      photo: json['photo'] as String?,
      active: json['active'] as String?,
      emoji: json['emoji'] as String?,
      location: json['location'] as String?,
      peserta: json['peserta'] as String?,
      position: json['position'] as String?,
      reply: json['reply'] as String?,
      chat_reply: json['chat_reply'] as String?,
      user_reply: json['user_reply'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone_number': instance.phone_number,
      'detail': instance.detail,
      'date': instance.date,
      'status': instance.status,
      'chat': instance.chat,
      'img': instance.img,
      'no_invoice': instance.no_invoice,
      'read': instance.read,
      'chat_images': instance.chat_images,
      'photo': instance.photo,
      'active': instance.active,
      'emoji': instance.emoji,
      'location': instance.location,
      'peserta': instance.peserta,
      'position': instance.position,
      'reply': instance.reply,
      'chat_reply': instance.chat_reply,
      'user_reply': instance.user_reply,
    };
