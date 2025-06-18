// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_raw_material.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestRawMaterial _$RequestRawMaterialFromJson(Map<String, dynamic> json) {
  return _RequestRawMaterial.fromJson(json);
}

/// @nodoc
mixin _$RequestRawMaterial {
  String? get key => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_type')
  int? get paymentType => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_order')
  int? get totalOrder => throw _privateConstructorUsedError;
  List<BarangRaw>? get product => throw _privateConstructorUsedError;

  /// Serializes this RequestRawMaterial to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestRawMaterial
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestRawMaterialCopyWith<RequestRawMaterial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestRawMaterialCopyWith<$Res> {
  factory $RequestRawMaterialCopyWith(
          RequestRawMaterial value, $Res Function(RequestRawMaterial) then) =
      _$RequestRawMaterialCopyWithImpl<$Res, RequestRawMaterial>;
  @useResult
  $Res call(
      {String? key,
      @JsonKey(name: 'payment_type') int? paymentType,
      @JsonKey(name: 'total_order') int? totalOrder,
      List<BarangRaw>? product});
}

/// @nodoc
class _$RequestRawMaterialCopyWithImpl<$Res, $Val extends RequestRawMaterial>
    implements $RequestRawMaterialCopyWith<$Res> {
  _$RequestRawMaterialCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestRawMaterial
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? paymentType = freezed,
    Object? totalOrder = freezed,
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as int?,
      totalOrder: freezed == totalOrder
          ? _value.totalOrder
          : totalOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as List<BarangRaw>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestRawMaterialImplCopyWith<$Res>
    implements $RequestRawMaterialCopyWith<$Res> {
  factory _$$RequestRawMaterialImplCopyWith(_$RequestRawMaterialImpl value,
          $Res Function(_$RequestRawMaterialImpl) then) =
      __$$RequestRawMaterialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? key,
      @JsonKey(name: 'payment_type') int? paymentType,
      @JsonKey(name: 'total_order') int? totalOrder,
      List<BarangRaw>? product});
}

/// @nodoc
class __$$RequestRawMaterialImplCopyWithImpl<$Res>
    extends _$RequestRawMaterialCopyWithImpl<$Res, _$RequestRawMaterialImpl>
    implements _$$RequestRawMaterialImplCopyWith<$Res> {
  __$$RequestRawMaterialImplCopyWithImpl(_$RequestRawMaterialImpl _value,
      $Res Function(_$RequestRawMaterialImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestRawMaterial
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? paymentType = freezed,
    Object? totalOrder = freezed,
    Object? product = freezed,
  }) {
    return _then(_$RequestRawMaterialImpl(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as int?,
      totalOrder: freezed == totalOrder
          ? _value.totalOrder
          : totalOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      product: freezed == product
          ? _value._product
          : product // ignore: cast_nullable_to_non_nullable
              as List<BarangRaw>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _$RequestRawMaterialImpl implements _RequestRawMaterial {
  const _$RequestRawMaterialImpl(
      {this.key,
      @JsonKey(name: 'payment_type') this.paymentType,
      @JsonKey(name: 'total_order') this.totalOrder,
      final List<BarangRaw>? product})
      : _product = product;

  factory _$RequestRawMaterialImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestRawMaterialImplFromJson(json);

  @override
  final String? key;
  @override
  @JsonKey(name: 'payment_type')
  final int? paymentType;
  @override
  @JsonKey(name: 'total_order')
  final int? totalOrder;
  final List<BarangRaw>? _product;
  @override
  List<BarangRaw>? get product {
    final value = _product;
    if (value == null) return null;
    if (_product is EqualUnmodifiableListView) return _product;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RequestRawMaterial(key: $key, paymentType: $paymentType, totalOrder: $totalOrder, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestRawMaterialImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.totalOrder, totalOrder) ||
                other.totalOrder == totalOrder) &&
            const DeepCollectionEquality().equals(other._product, _product));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, paymentType, totalOrder,
      const DeepCollectionEquality().hash(_product));

  /// Create a copy of RequestRawMaterial
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestRawMaterialImplCopyWith<_$RequestRawMaterialImpl> get copyWith =>
      __$$RequestRawMaterialImplCopyWithImpl<_$RequestRawMaterialImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestRawMaterialImplToJson(
      this,
    );
  }
}

abstract class _RequestRawMaterial implements RequestRawMaterial {
  const factory _RequestRawMaterial(
      {final String? key,
      @JsonKey(name: 'payment_type') final int? paymentType,
      @JsonKey(name: 'total_order') final int? totalOrder,
      final List<BarangRaw>? product}) = _$RequestRawMaterialImpl;

  factory _RequestRawMaterial.fromJson(Map<String, dynamic> json) =
      _$RequestRawMaterialImpl.fromJson;

  @override
  String? get key;
  @override
  @JsonKey(name: 'payment_type')
  int? get paymentType;
  @override
  @JsonKey(name: 'total_order')
  int? get totalOrder;
  @override
  List<BarangRaw>? get product;

  /// Create a copy of RequestRawMaterial
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestRawMaterialImplCopyWith<_$RequestRawMaterialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BarangRaw _$BarangRawFromJson(Map<String, dynamic> json) {
  return _BarangRaw.fromJson(json);
}

/// @nodoc
mixin _$BarangRaw {
  @JsonKey(name: 'id_product')
  String? get idProduct => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount_product')
  double? get amountProduct => throw _privateConstructorUsedError;

  /// Serializes this BarangRaw to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BarangRaw
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BarangRawCopyWith<BarangRaw> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BarangRawCopyWith<$Res> {
  factory $BarangRawCopyWith(BarangRaw value, $Res Function(BarangRaw) then) =
      _$BarangRawCopyWithImpl<$Res, BarangRaw>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_product') String? idProduct,
      @JsonKey(name: 'amount_product') double? amountProduct});
}

/// @nodoc
class _$BarangRawCopyWithImpl<$Res, $Val extends BarangRaw>
    implements $BarangRawCopyWith<$Res> {
  _$BarangRawCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BarangRaw
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idProduct = freezed,
    Object? amountProduct = freezed,
  }) {
    return _then(_value.copyWith(
      idProduct: freezed == idProduct
          ? _value.idProduct
          : idProduct // ignore: cast_nullable_to_non_nullable
              as String?,
      amountProduct: freezed == amountProduct
          ? _value.amountProduct
          : amountProduct // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BarangRawImplCopyWith<$Res>
    implements $BarangRawCopyWith<$Res> {
  factory _$$BarangRawImplCopyWith(
          _$BarangRawImpl value, $Res Function(_$BarangRawImpl) then) =
      __$$BarangRawImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_product') String? idProduct,
      @JsonKey(name: 'amount_product') double? amountProduct});
}

/// @nodoc
class __$$BarangRawImplCopyWithImpl<$Res>
    extends _$BarangRawCopyWithImpl<$Res, _$BarangRawImpl>
    implements _$$BarangRawImplCopyWith<$Res> {
  __$$BarangRawImplCopyWithImpl(
      _$BarangRawImpl _value, $Res Function(_$BarangRawImpl) _then)
      : super(_value, _then);

  /// Create a copy of BarangRaw
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idProduct = freezed,
    Object? amountProduct = freezed,
  }) {
    return _then(_$BarangRawImpl(
      idProduct: freezed == idProduct
          ? _value.idProduct
          : idProduct // ignore: cast_nullable_to_non_nullable
              as String?,
      amountProduct: freezed == amountProduct
          ? _value.amountProduct
          : amountProduct // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _$BarangRawImpl implements _BarangRaw {
  const _$BarangRawImpl(
      {@JsonKey(name: 'id_product') this.idProduct,
      @JsonKey(name: 'amount_product') this.amountProduct});

  factory _$BarangRawImpl.fromJson(Map<String, dynamic> json) =>
      _$$BarangRawImplFromJson(json);

  @override
  @JsonKey(name: 'id_product')
  final String? idProduct;
  @override
  @JsonKey(name: 'amount_product')
  final double? amountProduct;

  @override
  String toString() {
    return 'BarangRaw(idProduct: $idProduct, amountProduct: $amountProduct)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BarangRawImpl &&
            (identical(other.idProduct, idProduct) ||
                other.idProduct == idProduct) &&
            (identical(other.amountProduct, amountProduct) ||
                other.amountProduct == amountProduct));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, idProduct, amountProduct);

  /// Create a copy of BarangRaw
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BarangRawImplCopyWith<_$BarangRawImpl> get copyWith =>
      __$$BarangRawImplCopyWithImpl<_$BarangRawImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BarangRawImplToJson(
      this,
    );
  }
}

abstract class _BarangRaw implements BarangRaw {
  const factory _BarangRaw(
          {@JsonKey(name: 'id_product') final String? idProduct,
          @JsonKey(name: 'amount_product') final double? amountProduct}) =
      _$BarangRawImpl;

  factory _BarangRaw.fromJson(Map<String, dynamic> json) =
      _$BarangRawImpl.fromJson;

  @override
  @JsonKey(name: 'id_product')
  String? get idProduct;
  @override
  @JsonKey(name: 'amount_product')
  double? get amountProduct;

  /// Create a copy of BarangRaw
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BarangRawImplCopyWith<_$BarangRawImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
