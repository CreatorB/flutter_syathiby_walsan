// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_variant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PriceVariant _$PriceVariantFromJson(Map<String, dynamic> json) {
  return _PriceVariant.fromJson(json);
}

/// @nodoc
mixin _$PriceVariant {
  @JsonKey(name: 'id_pricevariant')
  String? get idPriceVariant => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_product')
  String? get idProduct => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get detail => throw _privateConstructorUsedError;
  String? get minimal => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;

  /// Serializes this PriceVariant to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PriceVariant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PriceVariantCopyWith<PriceVariant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceVariantCopyWith<$Res> {
  factory $PriceVariantCopyWith(
          PriceVariant value, $Res Function(PriceVariant) then) =
      _$PriceVariantCopyWithImpl<$Res, PriceVariant>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_pricevariant') String? idPriceVariant,
      @JsonKey(name: 'id_product') String? idProduct,
      String? name,
      String? detail,
      String? minimal,
      String? price});
}

/// @nodoc
class _$PriceVariantCopyWithImpl<$Res, $Val extends PriceVariant>
    implements $PriceVariantCopyWith<$Res> {
  _$PriceVariantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PriceVariant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idPriceVariant = freezed,
    Object? idProduct = freezed,
    Object? name = freezed,
    Object? detail = freezed,
    Object? minimal = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      idPriceVariant: freezed == idPriceVariant
          ? _value.idPriceVariant
          : idPriceVariant // ignore: cast_nullable_to_non_nullable
              as String?,
      idProduct: freezed == idProduct
          ? _value.idProduct
          : idProduct // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      minimal: freezed == minimal
          ? _value.minimal
          : minimal // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PriceVariantImplCopyWith<$Res>
    implements $PriceVariantCopyWith<$Res> {
  factory _$$PriceVariantImplCopyWith(
          _$PriceVariantImpl value, $Res Function(_$PriceVariantImpl) then) =
      __$$PriceVariantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_pricevariant') String? idPriceVariant,
      @JsonKey(name: 'id_product') String? idProduct,
      String? name,
      String? detail,
      String? minimal,
      String? price});
}

/// @nodoc
class __$$PriceVariantImplCopyWithImpl<$Res>
    extends _$PriceVariantCopyWithImpl<$Res, _$PriceVariantImpl>
    implements _$$PriceVariantImplCopyWith<$Res> {
  __$$PriceVariantImplCopyWithImpl(
      _$PriceVariantImpl _value, $Res Function(_$PriceVariantImpl) _then)
      : super(_value, _then);

  /// Create a copy of PriceVariant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idPriceVariant = freezed,
    Object? idProduct = freezed,
    Object? name = freezed,
    Object? detail = freezed,
    Object? minimal = freezed,
    Object? price = freezed,
  }) {
    return _then(_$PriceVariantImpl(
      idPriceVariant: freezed == idPriceVariant
          ? _value.idPriceVariant
          : idPriceVariant // ignore: cast_nullable_to_non_nullable
              as String?,
      idProduct: freezed == idProduct
          ? _value.idProduct
          : idProduct // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      minimal: freezed == minimal
          ? _value.minimal
          : minimal // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PriceVariantImpl implements _PriceVariant {
  const _$PriceVariantImpl(
      {@JsonKey(name: 'id_pricevariant') this.idPriceVariant,
      @JsonKey(name: 'id_product') this.idProduct,
      this.name,
      this.detail,
      this.minimal,
      this.price});

  factory _$PriceVariantImpl.fromJson(Map<String, dynamic> json) =>
      _$$PriceVariantImplFromJson(json);

  @override
  @JsonKey(name: 'id_pricevariant')
  final String? idPriceVariant;
  @override
  @JsonKey(name: 'id_product')
  final String? idProduct;
  @override
  final String? name;
  @override
  final String? detail;
  @override
  final String? minimal;
  @override
  final String? price;

  @override
  String toString() {
    return 'PriceVariant(idPriceVariant: $idPriceVariant, idProduct: $idProduct, name: $name, detail: $detail, minimal: $minimal, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceVariantImpl &&
            (identical(other.idPriceVariant, idPriceVariant) ||
                other.idPriceVariant == idPriceVariant) &&
            (identical(other.idProduct, idProduct) ||
                other.idProduct == idProduct) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.minimal, minimal) || other.minimal == minimal) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, idPriceVariant, idProduct, name, detail, minimal, price);

  /// Create a copy of PriceVariant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceVariantImplCopyWith<_$PriceVariantImpl> get copyWith =>
      __$$PriceVariantImplCopyWithImpl<_$PriceVariantImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PriceVariantImplToJson(
      this,
    );
  }
}

abstract class _PriceVariant implements PriceVariant {
  const factory _PriceVariant(
      {@JsonKey(name: 'id_pricevariant') final String? idPriceVariant,
      @JsonKey(name: 'id_product') final String? idProduct,
      final String? name,
      final String? detail,
      final String? minimal,
      final String? price}) = _$PriceVariantImpl;

  factory _PriceVariant.fromJson(Map<String, dynamic> json) =
      _$PriceVariantImpl.fromJson;

  @override
  @JsonKey(name: 'id_pricevariant')
  String? get idPriceVariant;
  @override
  @JsonKey(name: 'id_product')
  String? get idProduct;
  @override
  String? get name;
  @override
  String? get detail;
  @override
  String? get minimal;
  @override
  String? get price;

  /// Create a copy of PriceVariant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PriceVariantImplCopyWith<_$PriceVariantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
