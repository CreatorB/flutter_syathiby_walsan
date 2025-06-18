// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prayer_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PrayerTime _$PrayerTimeFromJson(Map<String, dynamic> json) {
  return _PrayerTime.fromJson(json);
}

/// @nodoc
mixin _$PrayerTime {
  String get province => throw _privateConstructorUsedError;
  String get city => throw _privateConstructorUsedError;
  String get latitude => throw _privateConstructorUsedError;
  String get longitude => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get lng => throw _privateConstructorUsedError;
  List<Time> get times => throw _privateConstructorUsedError;

  /// Serializes this PrayerTime to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PrayerTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrayerTimeCopyWith<PrayerTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrayerTimeCopyWith<$Res> {
  factory $PrayerTimeCopyWith(
          PrayerTime value, $Res Function(PrayerTime) then) =
      _$PrayerTimeCopyWithImpl<$Res, PrayerTime>;
  @useResult
  $Res call(
      {String province,
      String city,
      String latitude,
      String longitude,
      double lat,
      double lng,
      List<Time> times});
}

/// @nodoc
class _$PrayerTimeCopyWithImpl<$Res, $Val extends PrayerTime>
    implements $PrayerTimeCopyWith<$Res> {
  _$PrayerTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrayerTime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? province = null,
    Object? city = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? lat = null,
    Object? lng = null,
    Object? times = null,
  }) {
    return _then(_value.copyWith(
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      times: null == times
          ? _value.times
          : times // ignore: cast_nullable_to_non_nullable
              as List<Time>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrayerTimeImplCopyWith<$Res>
    implements $PrayerTimeCopyWith<$Res> {
  factory _$$PrayerTimeImplCopyWith(
          _$PrayerTimeImpl value, $Res Function(_$PrayerTimeImpl) then) =
      __$$PrayerTimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String province,
      String city,
      String latitude,
      String longitude,
      double lat,
      double lng,
      List<Time> times});
}

/// @nodoc
class __$$PrayerTimeImplCopyWithImpl<$Res>
    extends _$PrayerTimeCopyWithImpl<$Res, _$PrayerTimeImpl>
    implements _$$PrayerTimeImplCopyWith<$Res> {
  __$$PrayerTimeImplCopyWithImpl(
      _$PrayerTimeImpl _value, $Res Function(_$PrayerTimeImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrayerTime
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? province = null,
    Object? city = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? lat = null,
    Object? lng = null,
    Object? times = null,
  }) {
    return _then(_$PrayerTimeImpl(
      province: null == province
          ? _value.province
          : province // ignore: cast_nullable_to_non_nullable
              as String,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lng: null == lng
          ? _value.lng
          : lng // ignore: cast_nullable_to_non_nullable
              as double,
      times: null == times
          ? _value._times
          : times // ignore: cast_nullable_to_non_nullable
              as List<Time>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrayerTimeImpl implements _PrayerTime {
  const _$PrayerTimeImpl(
      {required this.province,
      required this.city,
      required this.latitude,
      required this.longitude,
      required this.lat,
      required this.lng,
      required final List<Time> times})
      : _times = times;

  factory _$PrayerTimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrayerTimeImplFromJson(json);

  @override
  final String province;
  @override
  final String city;
  @override
  final String latitude;
  @override
  final String longitude;
  @override
  final double lat;
  @override
  final double lng;
  final List<Time> _times;
  @override
  List<Time> get times {
    if (_times is EqualUnmodifiableListView) return _times;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_times);
  }

  @override
  String toString() {
    return 'PrayerTime(province: $province, city: $city, latitude: $latitude, longitude: $longitude, lat: $lat, lng: $lng, times: $times)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrayerTimeImpl &&
            (identical(other.province, province) ||
                other.province == province) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lng, lng) || other.lng == lng) &&
            const DeepCollectionEquality().equals(other._times, _times));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, province, city, latitude,
      longitude, lat, lng, const DeepCollectionEquality().hash(_times));

  /// Create a copy of PrayerTime
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrayerTimeImplCopyWith<_$PrayerTimeImpl> get copyWith =>
      __$$PrayerTimeImplCopyWithImpl<_$PrayerTimeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrayerTimeImplToJson(
      this,
    );
  }
}

abstract class _PrayerTime implements PrayerTime {
  const factory _PrayerTime(
      {required final String province,
      required final String city,
      required final String latitude,
      required final String longitude,
      required final double lat,
      required final double lng,
      required final List<Time> times}) = _$PrayerTimeImpl;

  factory _PrayerTime.fromJson(Map<String, dynamic> json) =
      _$PrayerTimeImpl.fromJson;

  @override
  String get province;
  @override
  String get city;
  @override
  String get latitude;
  @override
  String get longitude;
  @override
  double get lat;
  @override
  double get lng;
  @override
  List<Time> get times;

  /// Create a copy of PrayerTime
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrayerTimeImplCopyWith<_$PrayerTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Time _$TimeFromJson(Map<String, dynamic> json) {
  return _Time.fromJson(json);
}

/// @nodoc
mixin _$Time {
  String get imsak => throw _privateConstructorUsedError;
  String get fajr => throw _privateConstructorUsedError;
  String get sunset => throw _privateConstructorUsedError;
  String get dhuha => throw _privateConstructorUsedError;
  String get dhuhr => throw _privateConstructorUsedError;
  String get asr => throw _privateConstructorUsedError;
  String get maghrib => throw _privateConstructorUsedError;
  String get isha => throw _privateConstructorUsedError;
  String get gregorian => throw _privateConstructorUsedError;
  String get hijri => throw _privateConstructorUsedError;
  int get timestamp => throw _privateConstructorUsedError;

  /// Serializes this Time to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Time
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimeCopyWith<Time> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeCopyWith<$Res> {
  factory $TimeCopyWith(Time value, $Res Function(Time) then) =
      _$TimeCopyWithImpl<$Res, Time>;
  @useResult
  $Res call(
      {String imsak,
      String fajr,
      String sunset,
      String dhuha,
      String dhuhr,
      String asr,
      String maghrib,
      String isha,
      String gregorian,
      String hijri,
      int timestamp});
}

/// @nodoc
class _$TimeCopyWithImpl<$Res, $Val extends Time>
    implements $TimeCopyWith<$Res> {
  _$TimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Time
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imsak = null,
    Object? fajr = null,
    Object? sunset = null,
    Object? dhuha = null,
    Object? dhuhr = null,
    Object? asr = null,
    Object? maghrib = null,
    Object? isha = null,
    Object? gregorian = null,
    Object? hijri = null,
    Object? timestamp = null,
  }) {
    return _then(_value.copyWith(
      imsak: null == imsak
          ? _value.imsak
          : imsak // ignore: cast_nullable_to_non_nullable
              as String,
      fajr: null == fajr
          ? _value.fajr
          : fajr // ignore: cast_nullable_to_non_nullable
              as String,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as String,
      dhuha: null == dhuha
          ? _value.dhuha
          : dhuha // ignore: cast_nullable_to_non_nullable
              as String,
      dhuhr: null == dhuhr
          ? _value.dhuhr
          : dhuhr // ignore: cast_nullable_to_non_nullable
              as String,
      asr: null == asr
          ? _value.asr
          : asr // ignore: cast_nullable_to_non_nullable
              as String,
      maghrib: null == maghrib
          ? _value.maghrib
          : maghrib // ignore: cast_nullable_to_non_nullable
              as String,
      isha: null == isha
          ? _value.isha
          : isha // ignore: cast_nullable_to_non_nullable
              as String,
      gregorian: null == gregorian
          ? _value.gregorian
          : gregorian // ignore: cast_nullable_to_non_nullable
              as String,
      hijri: null == hijri
          ? _value.hijri
          : hijri // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeImplCopyWith<$Res> implements $TimeCopyWith<$Res> {
  factory _$$TimeImplCopyWith(
          _$TimeImpl value, $Res Function(_$TimeImpl) then) =
      __$$TimeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String imsak,
      String fajr,
      String sunset,
      String dhuha,
      String dhuhr,
      String asr,
      String maghrib,
      String isha,
      String gregorian,
      String hijri,
      int timestamp});
}

/// @nodoc
class __$$TimeImplCopyWithImpl<$Res>
    extends _$TimeCopyWithImpl<$Res, _$TimeImpl>
    implements _$$TimeImplCopyWith<$Res> {
  __$$TimeImplCopyWithImpl(_$TimeImpl _value, $Res Function(_$TimeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Time
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imsak = null,
    Object? fajr = null,
    Object? sunset = null,
    Object? dhuha = null,
    Object? dhuhr = null,
    Object? asr = null,
    Object? maghrib = null,
    Object? isha = null,
    Object? gregorian = null,
    Object? hijri = null,
    Object? timestamp = null,
  }) {
    return _then(_$TimeImpl(
      imsak: null == imsak
          ? _value.imsak
          : imsak // ignore: cast_nullable_to_non_nullable
              as String,
      fajr: null == fajr
          ? _value.fajr
          : fajr // ignore: cast_nullable_to_non_nullable
              as String,
      sunset: null == sunset
          ? _value.sunset
          : sunset // ignore: cast_nullable_to_non_nullable
              as String,
      dhuha: null == dhuha
          ? _value.dhuha
          : dhuha // ignore: cast_nullable_to_non_nullable
              as String,
      dhuhr: null == dhuhr
          ? _value.dhuhr
          : dhuhr // ignore: cast_nullable_to_non_nullable
              as String,
      asr: null == asr
          ? _value.asr
          : asr // ignore: cast_nullable_to_non_nullable
              as String,
      maghrib: null == maghrib
          ? _value.maghrib
          : maghrib // ignore: cast_nullable_to_non_nullable
              as String,
      isha: null == isha
          ? _value.isha
          : isha // ignore: cast_nullable_to_non_nullable
              as String,
      gregorian: null == gregorian
          ? _value.gregorian
          : gregorian // ignore: cast_nullable_to_non_nullable
              as String,
      hijri: null == hijri
          ? _value.hijri
          : hijri // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeImpl implements _Time {
  const _$TimeImpl(
      {required this.imsak,
      required this.fajr,
      required this.sunset,
      required this.dhuha,
      required this.dhuhr,
      required this.asr,
      required this.maghrib,
      required this.isha,
      required this.gregorian,
      required this.hijri,
      required this.timestamp});

  factory _$TimeImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeImplFromJson(json);

  @override
  final String imsak;
  @override
  final String fajr;
  @override
  final String sunset;
  @override
  final String dhuha;
  @override
  final String dhuhr;
  @override
  final String asr;
  @override
  final String maghrib;
  @override
  final String isha;
  @override
  final String gregorian;
  @override
  final String hijri;
  @override
  final int timestamp;

  @override
  String toString() {
    return 'Time(imsak: $imsak, fajr: $fajr, sunset: $sunset, dhuha: $dhuha, dhuhr: $dhuhr, asr: $asr, maghrib: $maghrib, isha: $isha, gregorian: $gregorian, hijri: $hijri, timestamp: $timestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeImpl &&
            (identical(other.imsak, imsak) || other.imsak == imsak) &&
            (identical(other.fajr, fajr) || other.fajr == fajr) &&
            (identical(other.sunset, sunset) || other.sunset == sunset) &&
            (identical(other.dhuha, dhuha) || other.dhuha == dhuha) &&
            (identical(other.dhuhr, dhuhr) || other.dhuhr == dhuhr) &&
            (identical(other.asr, asr) || other.asr == asr) &&
            (identical(other.maghrib, maghrib) || other.maghrib == maghrib) &&
            (identical(other.isha, isha) || other.isha == isha) &&
            (identical(other.gregorian, gregorian) ||
                other.gregorian == gregorian) &&
            (identical(other.hijri, hijri) || other.hijri == hijri) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, imsak, fajr, sunset, dhuha,
      dhuhr, asr, maghrib, isha, gregorian, hijri, timestamp);

  /// Create a copy of Time
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeImplCopyWith<_$TimeImpl> get copyWith =>
      __$$TimeImplCopyWithImpl<_$TimeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeImplToJson(
      this,
    );
  }
}

abstract class _Time implements Time {
  const factory _Time(
      {required final String imsak,
      required final String fajr,
      required final String sunset,
      required final String dhuha,
      required final String dhuhr,
      required final String asr,
      required final String maghrib,
      required final String isha,
      required final String gregorian,
      required final String hijri,
      required final int timestamp}) = _$TimeImpl;

  factory _Time.fromJson(Map<String, dynamic> json) = _$TimeImpl.fromJson;

  @override
  String get imsak;
  @override
  String get fajr;
  @override
  String get sunset;
  @override
  String get dhuha;
  @override
  String get dhuhr;
  @override
  String get asr;
  @override
  String get maghrib;
  @override
  String get isha;
  @override
  String get gregorian;
  @override
  String get hijri;
  @override
  int get timestamp;

  /// Create a copy of Time
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeImplCopyWith<_$TimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
