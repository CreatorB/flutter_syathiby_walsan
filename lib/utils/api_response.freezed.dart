// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VeganItemTagV2<T> {
  T get data => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;
  String get errCode => throw _privateConstructorUsedError;

  /// Create a copy of VeganItemTagV2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VeganItemTagV2CopyWith<T, VeganItemTagV2<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VeganItemTagV2CopyWith<T, $Res> {
  factory $VeganItemTagV2CopyWith(
          VeganItemTagV2<T> value, $Res Function(VeganItemTagV2<T>) then) =
      _$VeganItemTagV2CopyWithImpl<T, $Res, VeganItemTagV2<T>>;
  @useResult
  $Res call({T data, String status, String msg, String errCode});
}

/// @nodoc
class _$VeganItemTagV2CopyWithImpl<T, $Res, $Val extends VeganItemTagV2<T>>
    implements $VeganItemTagV2CopyWith<T, $Res> {
  _$VeganItemTagV2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VeganItemTagV2
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
              as T,
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
abstract class _$$VeganItemTagImplCopyWith<T, $Res>
    implements $VeganItemTagV2CopyWith<T, $Res> {
  factory _$$VeganItemTagImplCopyWith(_$VeganItemTagImpl<T> value,
          $Res Function(_$VeganItemTagImpl<T>) then) =
      __$$VeganItemTagImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T data, String status, String msg, String errCode});
}

/// @nodoc
class __$$VeganItemTagImplCopyWithImpl<T, $Res>
    extends _$VeganItemTagV2CopyWithImpl<T, $Res, _$VeganItemTagImpl<T>>
    implements _$$VeganItemTagImplCopyWith<T, $Res> {
  __$$VeganItemTagImplCopyWithImpl(
      _$VeganItemTagImpl<T> _value, $Res Function(_$VeganItemTagImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of VeganItemTagV2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? status = null,
    Object? msg = null,
    Object? errCode = null,
  }) {
    return _then(_$VeganItemTagImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
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

class _$VeganItemTagImpl<T> extends _VeganItemTag<T> {
  const _$VeganItemTagImpl(
      {required this.data,
      required this.status,
      required this.msg,
      required this.errCode})
      : super._();

  @override
  final T data;
  @override
  final String status;
  @override
  final String msg;
  @override
  final String errCode;

  @override
  String toString() {
    return 'VeganItemTagV2<$T>(data: $data, status: $status, msg: $msg, errCode: $errCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VeganItemTagImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.errCode, errCode) || other.errCode == errCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(data), status, msg, errCode);

  /// Create a copy of VeganItemTagV2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VeganItemTagImplCopyWith<T, _$VeganItemTagImpl<T>> get copyWith =>
      __$$VeganItemTagImplCopyWithImpl<T, _$VeganItemTagImpl<T>>(
          this, _$identity);
}

abstract class _VeganItemTag<T> extends VeganItemTagV2<T> {
  const factory _VeganItemTag(
      {required final T data,
      required final String status,
      required final String msg,
      required final String errCode}) = _$VeganItemTagImpl<T>;
  const _VeganItemTag._() : super._();

  @override
  T get data;
  @override
  String get status;
  @override
  String get msg;
  @override
  String get errCode;

  /// Create a copy of VeganItemTagV2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VeganItemTagImplCopyWith<T, _$VeganItemTagImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

ResponseWrapper<T> _$ResponseWrapperFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _ResponseWrapper<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$ResponseWrapper<T> {
  String get status => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;
  String get errCode => throw _privateConstructorUsedError;
  T? get data => throw _privateConstructorUsedError;

  /// Serializes this ResponseWrapper to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ResponseWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseWrapperCopyWith<T, ResponseWrapper<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseWrapperCopyWith<T, $Res> {
  factory $ResponseWrapperCopyWith(
          ResponseWrapper<T> value, $Res Function(ResponseWrapper<T>) then) =
      _$ResponseWrapperCopyWithImpl<T, $Res, ResponseWrapper<T>>;
  @useResult
  $Res call({String status, String msg, String errCode, T? data});
}

/// @nodoc
class _$ResponseWrapperCopyWithImpl<T, $Res, $Val extends ResponseWrapper<T>>
    implements $ResponseWrapperCopyWith<T, $Res> {
  _$ResponseWrapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseWrapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? msg = null,
    Object? errCode = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResponseWrapperImplCopyWith<T, $Res>
    implements $ResponseWrapperCopyWith<T, $Res> {
  factory _$$ResponseWrapperImplCopyWith(_$ResponseWrapperImpl<T> value,
          $Res Function(_$ResponseWrapperImpl<T>) then) =
      __$$ResponseWrapperImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String status, String msg, String errCode, T? data});
}

/// @nodoc
class __$$ResponseWrapperImplCopyWithImpl<T, $Res>
    extends _$ResponseWrapperCopyWithImpl<T, $Res, _$ResponseWrapperImpl<T>>
    implements _$$ResponseWrapperImplCopyWith<T, $Res> {
  __$$ResponseWrapperImplCopyWithImpl(_$ResponseWrapperImpl<T> _value,
      $Res Function(_$ResponseWrapperImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ResponseWrapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? msg = null,
    Object? errCode = null,
    Object? data = freezed,
  }) {
    return _then(_$ResponseWrapperImpl<T>(
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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ResponseWrapperImpl<T> implements _ResponseWrapper<T> {
  const _$ResponseWrapperImpl(
      {required this.status,
      required this.msg,
      required this.errCode,
      this.data});

  factory _$ResponseWrapperImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ResponseWrapperImplFromJson(json, fromJsonT);

  @override
  final String status;
  @override
  final String msg;
  @override
  final String errCode;
  @override
  final T? data;

  @override
  String toString() {
    return 'ResponseWrapper<$T>(status: $status, msg: $msg, errCode: $errCode, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseWrapperImpl<T> &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            (identical(other.errCode, errCode) || other.errCode == errCode) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, msg, errCode,
      const DeepCollectionEquality().hash(data));

  /// Create a copy of ResponseWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseWrapperImplCopyWith<T, _$ResponseWrapperImpl<T>> get copyWith =>
      __$$ResponseWrapperImplCopyWithImpl<T, _$ResponseWrapperImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ResponseWrapperImplToJson<T>(this, toJsonT);
  }
}

abstract class _ResponseWrapper<T> implements ResponseWrapper<T> {
  const factory _ResponseWrapper(
      {required final String status,
      required final String msg,
      required final String errCode,
      final T? data}) = _$ResponseWrapperImpl<T>;

  factory _ResponseWrapper.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ResponseWrapperImpl<T>.fromJson;

  @override
  String get status;
  @override
  String get msg;
  @override
  String get errCode;
  @override
  T? get data;

  /// Create a copy of ResponseWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseWrapperImplCopyWith<T, _$ResponseWrapperImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
