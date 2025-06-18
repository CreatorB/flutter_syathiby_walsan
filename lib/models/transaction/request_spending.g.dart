// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_spending.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestSpendingImpl _$$RequestSpendingImplFromJson(
        Map<String, dynamic> json) =>
    _$RequestSpendingImpl(
      key: json['key'] as String?,
      amount: (json['amount'] as num?)?.toDouble(),
      date: json['date'] as String?,
      img: json['img'] as String?,
      spending: (json['spending'] as List<dynamic>?)
          ?.map((e) => BarangSpending.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$RequestSpendingImplToJson(
    _$RequestSpendingImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('key', instance.key);
  writeNotNull('amount', instance.amount);
  writeNotNull('date', instance.date);
  writeNotNull('img', instance.img);
  writeNotNull('spending', instance.spending?.map((e) => e.toJson()).toList());
  return val;
}

_$BarangSpendingImpl _$$BarangSpendingImplFromJson(Map<String, dynamic> json) =>
    _$BarangSpendingImpl(
      id: json['id'] as String?,
      nameSpending: json['name_spending'] as String?,
      nominal: json['nominal'] as num?,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$BarangSpendingImplToJson(
        _$BarangSpendingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name_spending': instance.nameSpending,
      'nominal': instance.nominal,
      'note': instance.note,
    };
