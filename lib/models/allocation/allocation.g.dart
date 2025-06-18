// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'allocation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AllocationImpl _$$AllocationImplFromJson(Map<String, dynamic> json) =>
    _$AllocationImpl(
      allocationId: json['id_alokasi'] as String?,
      allocationName: json['name_alokasi'] as String?,
      bankAccount: json['norek'] as String?,
      pdf: json['urlpdf'] as String?,
    );

Map<String, dynamic> _$$AllocationImplToJson(_$AllocationImpl instance) =>
    <String, dynamic>{
      'id_alokasi': instance.allocationId,
      'name_alokasi': instance.allocationName,
      'norek': instance.bankAccount,
      'urlpdf': instance.pdf,
    };
