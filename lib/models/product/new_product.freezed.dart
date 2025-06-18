// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductNew _$ProductNewFromJson(Map<String, dynamic> json) {
  return _ProductNew.fromJson(json);
}

/// @nodoc
mixin _$ProductNew {
  String get status => throw _privateConstructorUsedError;
  String get errCode => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;
  List<Product>? get data => throw _privateConstructorUsedError;

  /// Serializes this ProductNew to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductNew
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductNewCopyWith<ProductNew> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductNewCopyWith<$Res> {
  factory $ProductNewCopyWith(
          ProductNew value, $Res Function(ProductNew) then) =
      _$ProductNewCopyWithImpl<$Res, ProductNew>;
  @useResult
  $Res call({String status, String errCode, String msg, List<Product>? data});
}

/// @nodoc
class _$ProductNewCopyWithImpl<$Res, $Val extends ProductNew>
    implements $ProductNewCopyWith<$Res> {
  _$ProductNewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductNew
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errCode = null,
    Object? msg = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      errCode: null == errCode
          ? _value.errCode
          : errCode // ignore: cast_nullable_to_non_nullable
              as String,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductNewImplCopyWith<$Res>
    implements $ProductNewCopyWith<$Res> {
  factory _$$ProductNewImplCopyWith(
          _$ProductNewImpl value, $Res Function(_$ProductNewImpl) then) =
      __$$ProductNewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String status, String errCode, String msg, List<Product>? data});
}

/// @nodoc
class __$$ProductNewImplCopyWithImpl<$Res>
    extends _$ProductNewCopyWithImpl<$Res, _$ProductNewImpl>
    implements _$$ProductNewImplCopyWith<$Res> {
  __$$ProductNewImplCopyWithImpl(
      _$ProductNewImpl _value, $Res Function(_$ProductNewImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductNew
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errCode = null,
    Object? msg = null,
    Object? data = freezed,
  }) {
    return _then(_$ProductNewImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      errCode: null == errCode
          ? _value.errCode
          : errCode // ignore: cast_nullable_to_non_nullable
              as String,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductNewImpl implements _ProductNew {
  const _$ProductNewImpl(
      {required this.status,
      required this.errCode,
      required this.msg,
      required final List<Product>? data})
      : _data = data;

  factory _$ProductNewImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductNewImplFromJson(json);

  @override
  final String status;
  @override
  final String errCode;
  @override
  final String msg;
  final List<Product>? _data;
  @override
  List<Product>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductNew(status: $status, errCode: $errCode, msg: $msg, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductNewImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errCode, errCode) || other.errCode == errCode) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, errCode, msg,
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of ProductNew
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductNewImplCopyWith<_$ProductNewImpl> get copyWith =>
      __$$ProductNewImplCopyWithImpl<_$ProductNewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductNewImplToJson(
      this,
    );
  }
}

abstract class _ProductNew implements ProductNew {
  const factory _ProductNew(
      {required final String status,
      required final String errCode,
      required final String msg,
      required final List<Product>? data}) = _$ProductNewImpl;

  factory _ProductNew.fromJson(Map<String, dynamic> json) =
      _$ProductNewImpl.fromJson;

  @override
  String get status;
  @override
  String get errCode;
  @override
  String get msg;
  @override
  List<Product>? get data;

  /// Create a copy of ProductNew
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductNewImplCopyWith<_$ProductNewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
