// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'absen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Absen _$AbsenFromJson(Map<String, dynamic> json) {
  return _Absen.fromJson(json);
}

/// @nodoc
mixin _$Absen {
  String? get status => throw _privateConstructorUsedError;

  /// Serializes this Absen to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Absen
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AbsenCopyWith<Absen> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbsenCopyWith<$Res> {
  factory $AbsenCopyWith(Absen value, $Res Function(Absen) then) =
      _$AbsenCopyWithImpl<$Res, Absen>;
  @useResult
  $Res call({String? status});
}

/// @nodoc
class _$AbsenCopyWithImpl<$Res, $Val extends Absen>
    implements $AbsenCopyWith<$Res> {
  _$AbsenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Absen
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AbsenImplCopyWith<$Res> implements $AbsenCopyWith<$Res> {
  factory _$$AbsenImplCopyWith(
          _$AbsenImpl value, $Res Function(_$AbsenImpl) then) =
      __$$AbsenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? status});
}

/// @nodoc
class __$$AbsenImplCopyWithImpl<$Res>
    extends _$AbsenCopyWithImpl<$Res, _$AbsenImpl>
    implements _$$AbsenImplCopyWith<$Res> {
  __$$AbsenImplCopyWithImpl(
      _$AbsenImpl _value, $Res Function(_$AbsenImpl) _then)
      : super(_value, _then);

  /// Create a copy of Absen
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_$AbsenImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AbsenImpl implements _Absen {
  const _$AbsenImpl({this.status});

  factory _$AbsenImpl.fromJson(Map<String, dynamic> json) =>
      _$$AbsenImplFromJson(json);

  @override
  final String? status;

  @override
  String toString() {
    return 'Absen(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbsenImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of Absen
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AbsenImplCopyWith<_$AbsenImpl> get copyWith =>
      __$$AbsenImplCopyWithImpl<_$AbsenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AbsenImplToJson(
      this,
    );
  }
}

abstract class _Absen implements Absen {
  const factory _Absen({final String? status}) = _$AbsenImpl;

  factory _Absen.fromJson(Map<String, dynamic> json) = _$AbsenImpl.fromJson;

  @override
  String? get status;

  /// Create a copy of Absen
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AbsenImplCopyWith<_$AbsenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
