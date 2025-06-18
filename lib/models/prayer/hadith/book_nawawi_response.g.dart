// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_nawawi_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookNawawiResponseImpl _$$BookNawawiResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BookNawawiResponseImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => BookNawawi.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BookNawawiResponseImplToJson(
        _$BookNawawiResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$BookNawawiImpl _$$BookNawawiImplFromJson(Map<String, dynamic> json) =>
    _$BookNawawiImpl(
      arab: json['arab'] as String,
      indo: json['indo'] as String,
      judul: json['judul'] as String,
      no: json['no'] as String,
    );

Map<String, dynamic> _$$BookNawawiImplToJson(_$BookNawawiImpl instance) =>
    <String, dynamic>{
      'arab': instance.arab,
      'indo': instance.indo,
      'judul': instance.judul,
      'no': instance.no,
    };
