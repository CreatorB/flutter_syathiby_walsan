// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_add_order.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestAddOrder _$RequestAddOrderFromJson(Map<String, dynamic> json) {
  return _RequestAddOrder.fromJson(json);
}

/// @nodoc
mixin _$RequestAddOrder {
  String? get key => throw _privateConstructorUsedError;
  int? get totalOrder => throw _privateConstructorUsedError;
  int? get paymentType => throw _privateConstructorUsedError;
  String? get noInvoice => throw _privateConstructorUsedError;
  List<Barang>? get product => throw _privateConstructorUsedError;

  /// Serializes this RequestAddOrder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestAddOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestAddOrderCopyWith<RequestAddOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestAddOrderCopyWith<$Res> {
  factory $RequestAddOrderCopyWith(
          RequestAddOrder value, $Res Function(RequestAddOrder) then) =
      _$RequestAddOrderCopyWithImpl<$Res, RequestAddOrder>;
  @useResult
  $Res call(
      {String? key,
      int? totalOrder,
      int? paymentType,
      String? noInvoice,
      List<Barang>? product});
}

/// @nodoc
class _$RequestAddOrderCopyWithImpl<$Res, $Val extends RequestAddOrder>
    implements $RequestAddOrderCopyWith<$Res> {
  _$RequestAddOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestAddOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? totalOrder = freezed,
    Object? paymentType = freezed,
    Object? noInvoice = freezed,
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      totalOrder: freezed == totalOrder
          ? _value.totalOrder
          : totalOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as int?,
      noInvoice: freezed == noInvoice
          ? _value.noInvoice
          : noInvoice // ignore: cast_nullable_to_non_nullable
              as String?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as List<Barang>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestAddOrderImplCopyWith<$Res>
    implements $RequestAddOrderCopyWith<$Res> {
  factory _$$RequestAddOrderImplCopyWith(_$RequestAddOrderImpl value,
          $Res Function(_$RequestAddOrderImpl) then) =
      __$$RequestAddOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? key,
      int? totalOrder,
      int? paymentType,
      String? noInvoice,
      List<Barang>? product});
}

/// @nodoc
class __$$RequestAddOrderImplCopyWithImpl<$Res>
    extends _$RequestAddOrderCopyWithImpl<$Res, _$RequestAddOrderImpl>
    implements _$$RequestAddOrderImplCopyWith<$Res> {
  __$$RequestAddOrderImplCopyWithImpl(
      _$RequestAddOrderImpl _value, $Res Function(_$RequestAddOrderImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestAddOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? totalOrder = freezed,
    Object? paymentType = freezed,
    Object? noInvoice = freezed,
    Object? product = freezed,
  }) {
    return _then(_$RequestAddOrderImpl(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      totalOrder: freezed == totalOrder
          ? _value.totalOrder
          : totalOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as int?,
      noInvoice: freezed == noInvoice
          ? _value.noInvoice
          : noInvoice // ignore: cast_nullable_to_non_nullable
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
class _$RequestAddOrderImpl implements _RequestAddOrder {
  const _$RequestAddOrderImpl(
      {this.key,
      this.totalOrder,
      this.paymentType,
      this.noInvoice,
      final List<Barang>? product})
      : _product = product;

  factory _$RequestAddOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestAddOrderImplFromJson(json);

  @override
  final String? key;
  @override
  final int? totalOrder;
  @override
  final int? paymentType;
  @override
  final String? noInvoice;
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
    return 'RequestAddOrder(key: $key, totalOrder: $totalOrder, paymentType: $paymentType, noInvoice: $noInvoice, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestAddOrderImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.totalOrder, totalOrder) ||
                other.totalOrder == totalOrder) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.noInvoice, noInvoice) ||
                other.noInvoice == noInvoice) &&
            const DeepCollectionEquality().equals(other._product, _product));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, totalOrder, paymentType,
      noInvoice, const DeepCollectionEquality().hash(_product));

  /// Create a copy of RequestAddOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestAddOrderImplCopyWith<_$RequestAddOrderImpl> get copyWith =>
      __$$RequestAddOrderImplCopyWithImpl<_$RequestAddOrderImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestAddOrderImplToJson(
      this,
    );
  }
}

abstract class _RequestAddOrder implements RequestAddOrder {
  const factory _RequestAddOrder(
      {final String? key,
      final int? totalOrder,
      final int? paymentType,
      final String? noInvoice,
      final List<Barang>? product}) = _$RequestAddOrderImpl;

  factory _RequestAddOrder.fromJson(Map<String, dynamic> json) =
      _$RequestAddOrderImpl.fromJson;

  @override
  String? get key;
  @override
  int? get totalOrder;
  @override
  int? get paymentType;
  @override
  String? get noInvoice;
  @override
  List<Barang>? get product;

  /// Create a copy of RequestAddOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestAddOrderImplCopyWith<_$RequestAddOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Barang _$BarangFromJson(Map<String, dynamic> json) {
  return _Barang.fromJson(json);
}

/// @nodoc
mixin _$Barang {
  String? get idProduct => throw _privateConstructorUsedError;
  int? get amountProduct => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;

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
  $Res call({String? idProduct, int? amountProduct, String? notes});
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
    Object? notes = freezed,
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
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $Res call({String? idProduct, int? amountProduct, String? notes});
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
    Object? notes = freezed,
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
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BarangImpl implements _Barang {
  const _$BarangImpl({this.idProduct, this.amountProduct, this.notes});

  factory _$BarangImpl.fromJson(Map<String, dynamic> json) =>
      _$$BarangImplFromJson(json);

  @override
  final String? idProduct;
  @override
  final int? amountProduct;
  @override
  final String? notes;

  @override
  String toString() {
    return 'Barang(idProduct: $idProduct, amountProduct: $amountProduct, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BarangImpl &&
            (identical(other.idProduct, idProduct) ||
                other.idProduct == idProduct) &&
            (identical(other.amountProduct, amountProduct) ||
                other.amountProduct == amountProduct) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, idProduct, amountProduct, notes);

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
  const factory _Barang(
      {final String? idProduct,
      final int? amountProduct,
      final String? notes}) = _$BarangImpl;

  factory _Barang.fromJson(Map<String, dynamic> json) = _$BarangImpl.fromJson;

  @override
  String? get idProduct;
  @override
  int? get amountProduct;
  @override
  String? get notes;

  /// Create a copy of Barang
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BarangImplCopyWith<_$BarangImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
