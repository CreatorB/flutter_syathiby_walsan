// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'days.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DaysImpl _$$DaysImplFromJson(Map<String, dynamic> json) => _$DaysImpl(
      id_days: json['id_days'],
      name_days: json['name_days'] as String?,
      start_working: json['start_working'] as String?,
      finish_working: json['finish_working'] as String?,
      dates: json['dates'] as String?,
      today: json['today'] as String?,
    );

Map<String, dynamic> _$$DaysImplToJson(_$DaysImpl instance) =>
    <String, dynamic>{
      'id_days': instance.id_days,
      'name_days': instance.name_days,
      'start_working': instance.start_working,
      'finish_working': instance.finish_working,
      'dates': instance.dates,
      'today': instance.today,
    };
