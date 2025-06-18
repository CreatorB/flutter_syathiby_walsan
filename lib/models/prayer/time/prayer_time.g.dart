// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prayer_time.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrayerTimeImpl _$$PrayerTimeImplFromJson(Map<String, dynamic> json) =>
    _$PrayerTimeImpl(
      province: json['province'] as String,
      city: json['city'] as String,
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      times: (json['times'] as List<dynamic>)
          .map((e) => Time.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PrayerTimeImplToJson(_$PrayerTimeImpl instance) =>
    <String, dynamic>{
      'province': instance.province,
      'city': instance.city,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'lat': instance.lat,
      'lng': instance.lng,
      'times': instance.times,
    };

_$TimeImpl _$$TimeImplFromJson(Map<String, dynamic> json) => _$TimeImpl(
      imsak: json['imsak'] as String,
      fajr: json['fajr'] as String,
      sunset: json['sunset'] as String,
      dhuha: json['dhuha'] as String,
      dhuhr: json['dhuhr'] as String,
      asr: json['asr'] as String,
      maghrib: json['maghrib'] as String,
      isha: json['isha'] as String,
      gregorian: json['gregorian'] as String,
      hijri: json['hijri'] as String,
      timestamp: (json['timestamp'] as num).toInt(),
    );

Map<String, dynamic> _$$TimeImplToJson(_$TimeImpl instance) =>
    <String, dynamic>{
      'imsak': instance.imsak,
      'fajr': instance.fajr,
      'sunset': instance.sunset,
      'dhuha': instance.dhuha,
      'dhuhr': instance.dhuhr,
      'asr': instance.asr,
      'maghrib': instance.maghrib,
      'isha': instance.isha,
      'gregorian': instance.gregorian,
      'hijri': instance.hijri,
      'timestamp': instance.timestamp,
    };
