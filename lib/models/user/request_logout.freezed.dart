// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_logout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestLogout _$RequestLogoutFromJson(Map<String, dynamic> json) {
  return _RequestLogout.fromJson(json);
}

/// @nodoc
mixin _$RequestLogout {
  String? get key => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  bool? get mock => throw _privateConstructorUsedError;
  String? get device => throw _privateConstructorUsedError;
  String? get lokasi => throw _privateConstructorUsedError;

  /// Serializes this RequestLogout to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestLogout
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestLogoutCopyWith<RequestLogout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestLogoutCopyWith<$Res> {
  factory $RequestLogoutCopyWith(
          RequestLogout value, $Res Function(RequestLogout) then) =
      _$RequestLogoutCopyWithImpl<$Res, RequestLogout>;
  @useResult
  $Res call(
      {String? key,
      String? token,
      double? latitude,
      double? longitude,
      bool? mock,
      String? device,
      String? lokasi});
}

/// @nodoc
class _$RequestLogoutCopyWithImpl<$Res, $Val extends RequestLogout>
    implements $RequestLogoutCopyWith<$Res> {
  _$RequestLogoutCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestLogout
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? token = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? mock = freezed,
    Object? device = freezed,
    Object? lokasi = freezed,
  }) {
    return _then(_value.copyWith(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      mock: freezed == mock
          ? _value.mock
          : mock // ignore: cast_nullable_to_non_nullable
              as bool?,
      device: freezed == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String?,
      lokasi: freezed == lokasi
          ? _value.lokasi
          : lokasi // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestLogoutImplCopyWith<$Res>
    implements $RequestLogoutCopyWith<$Res> {
  factory _$$RequestLogoutImplCopyWith(
          _$RequestLogoutImpl value, $Res Function(_$RequestLogoutImpl) then) =
      __$$RequestLogoutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? key,
      String? token,
      double? latitude,
      double? longitude,
      bool? mock,
      String? device,
      String? lokasi});
}

/// @nodoc
class __$$RequestLogoutImplCopyWithImpl<$Res>
    extends _$RequestLogoutCopyWithImpl<$Res, _$RequestLogoutImpl>
    implements _$$RequestLogoutImplCopyWith<$Res> {
  __$$RequestLogoutImplCopyWithImpl(
      _$RequestLogoutImpl _value, $Res Function(_$RequestLogoutImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestLogout
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? token = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? mock = freezed,
    Object? device = freezed,
    Object? lokasi = freezed,
  }) {
    return _then(_$RequestLogoutImpl(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      mock: freezed == mock
          ? _value.mock
          : mock // ignore: cast_nullable_to_non_nullable
              as bool?,
      device: freezed == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as String?,
      lokasi: freezed == lokasi
          ? _value.lokasi
          : lokasi // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestLogoutImpl implements _RequestLogout {
  const _$RequestLogoutImpl(
      {this.key,
      this.token,
      this.latitude,
      this.longitude,
      this.mock,
      this.device,
      this.lokasi});

  factory _$RequestLogoutImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestLogoutImplFromJson(json);

  @override
  final String? key;
  @override
  final String? token;
  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final bool? mock;
  @override
  final String? device;
  @override
  final String? lokasi;

  @override
  String toString() {
    return 'RequestLogout(key: $key, token: $token, latitude: $latitude, longitude: $longitude, mock: $mock, device: $device, lokasi: $lokasi)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestLogoutImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.mock, mock) || other.mock == mock) &&
            (identical(other.device, device) || other.device == device) &&
            (identical(other.lokasi, lokasi) || other.lokasi == lokasi));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, key, token, latitude, longitude, mock, device, lokasi);

  /// Create a copy of RequestLogout
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestLogoutImplCopyWith<_$RequestLogoutImpl> get copyWith =>
      __$$RequestLogoutImplCopyWithImpl<_$RequestLogoutImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestLogoutImplToJson(
      this,
    );
  }
}

abstract class _RequestLogout implements RequestLogout {
  const factory _RequestLogout(
      {final String? key,
      final String? token,
      final double? latitude,
      final double? longitude,
      final bool? mock,
      final String? device,
      final String? lokasi}) = _$RequestLogoutImpl;

  factory _RequestLogout.fromJson(Map<String, dynamic> json) =
      _$RequestLogoutImpl.fromJson;

  @override
  String? get key;
  @override
  String? get token;
  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  bool? get mock;
  @override
  String? get device;
  @override
  String? get lokasi;

  /// Create a copy of RequestLogout
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestLogoutImplCopyWith<_$RequestLogoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
