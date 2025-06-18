// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_transfer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestTransfer _$RequestTransferFromJson(Map<String, dynamic> json) {
  return _RequestTransfer.fromJson(json);
}

/// @nodoc
mixin _$RequestTransfer {
  String? get key => throw _privateConstructorUsedError;
  int? get paymentType => throw _privateConstructorUsedError;
  int? get totalOrder => throw _privateConstructorUsedError;
  String? get idStore => throw _privateConstructorUsedError;
  List<Barang>? get product => throw _privateConstructorUsedError;

  /// Serializes this RequestTransfer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestTransfer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestTransferCopyWith<RequestTransfer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestTransferCopyWith<$Res> {
  factory $RequestTransferCopyWith(
          RequestTransfer value, $Res Function(RequestTransfer) then) =
      _$RequestTransferCopyWithImpl<$Res, RequestTransfer>;
  @useResult
  $Res call(
      {String? key,
      int? paymentType,
      int? totalOrder,
      String? idStore,
      List<Barang>? product});
}

/// @nodoc
class _$RequestTransferCopyWithImpl<$Res, $Val extends RequestTransfer>
    implements $RequestTransferCopyWith<$Res> {
  _$RequestTransferCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestTransfer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? paymentType = freezed,
    Object? totalOrder = freezed,
    Object? idStore = freezed,
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
      idStore: freezed == idStore
          ? _value.idStore
          : idStore // ignore: cast_nullable_to_non_nullable
              as String?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as List<Barang>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestTransferImplCopyWith<$Res>
    implements $RequestTransferCopyWith<$Res> {
  factory _$$RequestTransferImplCopyWith(_$RequestTransferImpl value,
          $Res Function(_$RequestTransferImpl) then) =
      __$$RequestTransferImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? key,
      int? paymentType,
      int? totalOrder,
      String? idStore,
      List<Barang>? product});
}

/// @nodoc
class __$$RequestTransferImplCopyWithImpl<$Res>
    extends _$RequestTransferCopyWithImpl<$Res, _$RequestTransferImpl>
    implements _$$RequestTransferImplCopyWith<$Res> {
  __$$RequestTransferImplCopyWithImpl(
      _$RequestTransferImpl _value, $Res Function(_$RequestTransferImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestTransfer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? paymentType = freezed,
    Object? totalOrder = freezed,
    Object? idStore = freezed,
    Object? product = freezed,
  }) {
    return _then(_$RequestTransferImpl(
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
      idStore: freezed == idStore
          ? _value.idStore
          : idStore // ignore: cast_nullable_to_non_nullable
              as String?,
      product: freezed == product
          ? _value._product
          : product // ignore: cast_nullable_to_non_nullable
              as List<Barang>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestTransferImpl implements _RequestTransfer {
  const _$RequestTransferImpl(
      {this.key,
      this.paymentType,
      this.totalOrder,
      this.idStore,
      final List<Barang>? product})
      : _product = product;

  factory _$RequestTransferImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestTransferImplFromJson(json);

  @override
  final String? key;
  @override
  final int? paymentType;
  @override
  final int? totalOrder;
  @override
  final String? idStore;
  final List<Barang>? _product;
  @override
  List<Barang>? get product {
    final value = _product;
    if (value == null) return null;
    if (_product is EqualUnmodifiableListView) return _product;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RequestTransfer(key: $key, paymentType: $paymentType, totalOrder: $totalOrder, idStore: $idStore, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestTransferImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.totalOrder, totalOrder) ||
                other.totalOrder == totalOrder) &&
            (identical(other.idStore, idStore) || other.idStore == idStore) &&
            const DeepCollectionEquality().equals(other._product, _product));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, paymentType, totalOrder,
      idStore, const DeepCollectionEquality().hash(_product));

  /// Create a copy of RequestTransfer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestTransferImplCopyWith<_$RequestTransferImpl> get copyWith =>
      __$$RequestTransferImplCopyWithImpl<_$RequestTransferImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestTransferImplToJson(
      this,
    );
  }
}

abstract class _RequestTransfer implements RequestTransfer {
  const factory _RequestTransfer(
      {final String? key,
      final int? paymentType,
      final int? totalOrder,
      final String? idStore,
      final List<Barang>? product}) = _$RequestTransferImpl;

  factory _RequestTransfer.fromJson(Map<String, dynamic> json) =
      _$RequestTransferImpl.fromJson;

  @override
  String? get key;
  @override
  int? get paymentType;
  @override
  int? get totalOrder;
  @override
  String? get idStore;
  @override
  List<Barang>? get product;

  /// Create a copy of RequestTransfer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestTransferImplCopyWith<_$RequestTransferImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Barang _$BarangFromJson(Map<String, dynamic> json) {
  return _Barang.fromJson(json);
}

/// @nodoc
mixin _$Barang {
  String? get idProduct => throw _privateConstructorUsedError;
  int? get amountProduct => throw _privateConstructorUsedError;

  /// Serializes this Barang to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Barang
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BarangCopyWith<Barang> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BarangCopyWith<$Res> {
  factory $BarangCopyWith(Barang value, $Res Function(Barang) then) =
      _$BarangCopyWithImpl<$Res, Barang>;
  @useResult
  $Res call({String? idProduct, int? amountProduct});
}

/// @nodoc
class _$BarangCopyWithImpl<$Res, $Val extends Barang>
    implements $BarangCopyWith<$Res> {
  _$BarangCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Barang
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
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BarangImplCopyWith<$Res> implements $BarangCopyWith<$Res> {
  factory _$$BarangImplCopyWith(
          _$BarangImpl value, $Res Function(_$BarangImpl) then) =
      __$$BarangImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? idProduct, int? amountProduct});
}

/// @nodoc
class __$$BarangImplCopyWithImpl<$Res>
    extends _$BarangCopyWithImpl<$Res, _$BarangImpl>
    implements _$$BarangImplCopyWith<$Res> {
  __$$BarangImplCopyWithImpl(
      _$BarangImpl _value, $Res Function(_$BarangImpl) _then)
      : super(_value, _then);

  /// Create a copy of Barang
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idProduct = freezed,
    Object? amountProduct = freezed,
  }) {
    return _then(_$BarangImpl(
      idProduct: freezed == idProduct
          ? _value.idProduct
          : idProduct // ignore: cast_nullable_to_non_nullable
              as String?,
      amountProduct: freezed == amountProduct
          ? _value.amountProduct
          : amountProduct // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BarangImpl implements _Barang {
  const _$BarangImpl({this.idProduct, this.amountProduct});

  factory _$BarangImpl.fromJson(Map<String, dynamic> json) =>
      _$$BarangImplFromJson(json);

  @override
  final String? idProduct;
  @override
  final int? amountProduct;

  @override
  String toString() {
    return 'Barang(idProduct: $idProduct, amountProduct: $amountProduct)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BarangImpl &&
            (identical(other.idProduct, idProduct) ||
                other.idProduct == idProduct) &&
            (identical(other.amountProduct, amountProduct) ||
                other.amountProduct == amountProduct));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, idProduct, amountProduct);

  /// Create a copy of Barang
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BarangImplCopyWith<_$BarangImpl> get copyWith =>
      __$$BarangImplCopyWithImpl<_$BarangImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BarangImplToJson(
      this,
    );
  }
}

abstract class _Barang implements Barang {
  const factory _Barang({final String? idProduct, final int? amountProduct}) =
      _$BarangImpl;

  factory _Barang.fromJson(Map<String, dynamic> json) = _$BarangImpl.fromJson;

  @override
  String? get idProduct;
  @override
  int? get amountProduct;

  /// Create a copy of Barang
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BarangImplCopyWith<_$BarangImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
