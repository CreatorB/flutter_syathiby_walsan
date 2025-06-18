// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseEntity _$ResponseEntityFromJson(Map<String, dynamic> json) {
  return _ResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$ResponseEntity {
  dynamic get data => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;
  String get errCode => throw _privateConstructorUsedError;

  /// Serializes this ResponseEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseEntityCopyWith<ResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseEntityCopyWith<$Res> {
  factory $ResponseEntityCopyWith(
          ResponseEntity value, $Res Function(ResponseEntity) then) =
      _$ResponseEntityCopyWithImpl<$Res, ResponseEntity>;
  @useResult
  $Res call({dynamic data, String status, String msg, String errCode});
}

/// @nodoc
class _$ResponseEntityCopyWithImpl<$Res, $Val extends ResponseEntity>
    implements $ResponseEntityCopyWith<$Res> {
  _$ResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? status = null,
    Object? msg = null,
    Object? errCode = null,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      errCode: null == errCode
          ? _value.errCode
          : errCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseEntityImplCopyWith<$Res>
    implements $ResponseEntityCopyWith<$Res> {
  factory _$$ResponseEntityImplCopyWith(_$ResponseEntityImpl value,
          $Res Function(_$ResponseEntityImpl) then) =
      __$$ResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic data, String status, String msg, String errCode});
}

/// @nodoc
class __$$ResponseEntityImplCopyWithImpl<$Res>
    extends _$ResponseEntityCopyWithImpl<$Res, _$ResponseEntityImpl>
    implements _$$ResponseEntityImplCopyWith<$Res> {
  __$$ResponseEntityImplCopyWithImpl(
      _$ResponseEntityImpl _value, $Res Function(_$ResponseEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? status = null,
    Object? msg = null,
    Object? errCode = null,
  }) {
    return _then(_$ResponseEntityImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      errCode: null == errCode
          ? _value.errCode
          : errCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResponseEntityImpl implements _ResponseEntity {
  const _$ResponseEntityImpl(
      {required this.data,
      required this.status,
      required this.msg,
      required this.errCode});

  factory _$ResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseEntityImplFromJson(json);

  @override
  final dynamic data;
  @override
  final String status;
  @override
  final String msg;
  @override
  final String errCode;

  @override
  String toString() {
    return 'ResponseEntity(data: $data, status: $status, msg: $msg, errCode: $errCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseEntityImpl &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.errCode, errCode) || other.errCode == errCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(data), status, msg, errCode);

  /// Create a copy of ResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseEntityImplCopyWith<_$ResponseEntityImpl> get copyWith =>
      __$$ResponseEntityImplCopyWithImpl<_$ResponseEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _ResponseEntity implements ResponseEntity {
  const factory _ResponseEntity(
      {required final dynamic data,
      required final String status,
      required final String msg,
      required final String errCode}) = _$ResponseEntityImpl;

  factory _ResponseEntity.fromJson(Map<String, dynamic> json) =
      _$ResponseEntityImpl.fromJson;

  @override
  dynamic get data;
  @override
  String get status;
  @override
  String get msg;
  @override
  String get errCode;

  /// Create a copy of ResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseEntityImplCopyWith<_$ResponseEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
