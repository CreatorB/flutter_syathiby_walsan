// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  @JsonKey(name: 'id_product')
  String? get idProduct => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_product')
  String? get nameProduct => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;
  String? get img => throw _privateConstructorUsedError;
  @JsonKey(name: 'codeproduct')
  String? get codeProduct => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_category')
  String? get idCategory => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_category')
  String? get nameCategory => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  @JsonKey(name: 'selling_price')
  dynamic get sellingPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'purchase_price')
  dynamic get purchasePrice => throw _privateConstructorUsedError;
  int? get stock => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'minimalstock')
  String? get minimalStock => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get discount => throw _privateConstructorUsedError;
  bool? get posisi => throw _privateConstructorUsedError;
  String? get online => throw _privateConstructorUsedError;
  @JsonKey(name: 'have_stock')
  dynamic get haveStock => throw _privateConstructorUsedError;
  @JsonKey(name: 'wholesale_price')
  dynamic get wholesalePrice => throw _privateConstructorUsedError;
  String? get tax => throw _privateConstructorUsedError;
  String? get inc => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_master')
  String? get idMaster => throw _privateConstructorUsedError;
  @JsonKey(name: 'alertstock')
  String? get alertStock => throw _privateConstructorUsedError;
  String? get packages => throw _privateConstructorUsedError;
  String? get item => throw _privateConstructorUsedError;
  @JsonKey(name: 'pricevariant')
  List<PriceVariant>? get priceVariant => throw _privateConstructorUsedError;
  List<AddOn>? get addon => throw _privateConstructorUsedError;

  /// Serializes this Product to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_product') String? idProduct,
      @JsonKey(name: 'name_product') String? nameProduct,
      String? unit,
      String? img,
      @JsonKey(name: 'codeproduct') String? codeProduct,
      @JsonKey(name: 'id_category') String? idCategory,
      @JsonKey(name: 'name_category') String? nameCategory,
      bool? active,
      @JsonKey(name: 'selling_price') dynamic sellingPrice,
      @JsonKey(name: 'purchase_price') dynamic purchasePrice,
      int? stock,
      double? amount,
      @JsonKey(name: 'minimalstock') String? minimalStock,
      String? description,
      String? discount,
      bool? posisi,
      String? online,
      @JsonKey(name: 'have_stock') dynamic haveStock,
      @JsonKey(name: 'wholesale_price') dynamic wholesalePrice,
      String? tax,
      String? inc,
      @JsonKey(name: 'id_master') String? idMaster,
      @JsonKey(name: 'alertstock') String? alertStock,
      String? packages,
      String? item,
      @JsonKey(name: 'pricevariant') List<PriceVariant>? priceVariant,
      List<AddOn>? addon});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idProduct = freezed,
    Object? nameProduct = freezed,
    Object? unit = freezed,
    Object? img = freezed,
    Object? codeProduct = freezed,
    Object? idCategory = freezed,
    Object? nameCategory = freezed,
    Object? active = freezed,
    Object? sellingPrice = freezed,
    Object? purchasePrice = freezed,
    Object? stock = freezed,
    Object? amount = freezed,
    Object? minimalStock = freezed,
    Object? description = freezed,
    Object? discount = freezed,
    Object? posisi = freezed,
    Object? online = freezed,
    Object? haveStock = freezed,
    Object? wholesalePrice = freezed,
    Object? tax = freezed,
    Object? inc = freezed,
    Object? idMaster = freezed,
    Object? alertStock = freezed,
    Object? packages = freezed,
    Object? item = freezed,
    Object? priceVariant = freezed,
    Object? addon = freezed,
  }) {
    return _then(_value.copyWith(
      idProduct: freezed == idProduct
          ? _value.idProduct
          : idProduct // ignore: cast_nullable_to_non_nullable
              as String?,
      nameProduct: freezed == nameProduct
          ? _value.nameProduct
          : nameProduct // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      codeProduct: freezed == codeProduct
          ? _value.codeProduct
          : codeProduct // ignore: cast_nullable_to_non_nullable
              as String?,
      idCategory: freezed == idCategory
          ? _value.idCategory
          : idCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      nameCategory: freezed == nameCategory
          ? _value.nameCategory
          : nameCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      purchasePrice: freezed == purchasePrice
          ? _value.purchasePrice
          : purchasePrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      minimalStock: freezed == minimalStock
          ? _value.minimalStock
          : minimalStock // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
      posisi: freezed == posisi
          ? _value.posisi
          : posisi // ignore: cast_nullable_to_non_nullable
              as bool?,
      online: freezed == online
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as String?,
      haveStock: freezed == haveStock
          ? _value.haveStock
          : haveStock // ignore: cast_nullable_to_non_nullable
              as dynamic,
      wholesalePrice: freezed == wholesalePrice
          ? _value.wholesalePrice
          : wholesalePrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as String?,
      inc: freezed == inc
          ? _value.inc
          : inc // ignore: cast_nullable_to_non_nullable
              as String?,
      idMaster: freezed == idMaster
          ? _value.idMaster
          : idMaster // ignore: cast_nullable_to_non_nullable
              as String?,
      alertStock: freezed == alertStock
          ? _value.alertStock
          : alertStock // ignore: cast_nullable_to_non_nullable
              as String?,
      packages: freezed == packages
          ? _value.packages
          : packages // ignore: cast_nullable_to_non_nullable
              as String?,
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as String?,
      priceVariant: freezed == priceVariant
          ? _value.priceVariant
          : priceVariant // ignore: cast_nullable_to_non_nullable
              as List<PriceVariant>?,
      addon: freezed == addon
          ? _value.addon
          : addon // ignore: cast_nullable_to_non_nullable
              as List<AddOn>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_product') String? idProduct,
      @JsonKey(name: 'name_product') String? nameProduct,
      String? unit,
      String? img,
      @JsonKey(name: 'codeproduct') String? codeProduct,
      @JsonKey(name: 'id_category') String? idCategory,
      @JsonKey(name: 'name_category') String? nameCategory,
      bool? active,
      @JsonKey(name: 'selling_price') dynamic sellingPrice,
      @JsonKey(name: 'purchase_price') dynamic purchasePrice,
      int? stock,
      double? amount,
      @JsonKey(name: 'minimalstock') String? minimalStock,
      String? description,
      String? discount,
      bool? posisi,
      String? online,
      @JsonKey(name: 'have_stock') dynamic haveStock,
      @JsonKey(name: 'wholesale_price') dynamic wholesalePrice,
      String? tax,
      String? inc,
      @JsonKey(name: 'id_master') String? idMaster,
      @JsonKey(name: 'alertstock') String? alertStock,
      String? packages,
      String? item,
      @JsonKey(name: 'pricevariant') List<PriceVariant>? priceVariant,
      List<AddOn>? addon});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idProduct = freezed,
    Object? nameProduct = freezed,
    Object? unit = freezed,
    Object? img = freezed,
    Object? codeProduct = freezed,
    Object? idCategory = freezed,
    Object? nameCategory = freezed,
    Object? active = freezed,
    Object? sellingPrice = freezed,
    Object? purchasePrice = freezed,
    Object? stock = freezed,
    Object? amount = freezed,
    Object? minimalStock = freezed,
    Object? description = freezed,
    Object? discount = freezed,
    Object? posisi = freezed,
    Object? online = freezed,
    Object? haveStock = freezed,
    Object? wholesalePrice = freezed,
    Object? tax = freezed,
    Object? inc = freezed,
    Object? idMaster = freezed,
    Object? alertStock = freezed,
    Object? packages = freezed,
    Object? item = freezed,
    Object? priceVariant = freezed,
    Object? addon = freezed,
  }) {
    return _then(_$ProductImpl(
      idProduct: freezed == idProduct
          ? _value.idProduct
          : idProduct // ignore: cast_nullable_to_non_nullable
              as String?,
      nameProduct: freezed == nameProduct
          ? _value.nameProduct
          : nameProduct // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      codeProduct: freezed == codeProduct
          ? _value.codeProduct
          : codeProduct // ignore: cast_nullable_to_non_nullable
              as String?,
      idCategory: freezed == idCategory
          ? _value.idCategory
          : idCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      nameCategory: freezed == nameCategory
          ? _value.nameCategory
          : nameCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      purchasePrice: freezed == purchasePrice
          ? _value.purchasePrice
          : purchasePrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      minimalStock: freezed == minimalStock
          ? _value.minimalStock
          : minimalStock // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
      posisi: freezed == posisi
          ? _value.posisi
          : posisi // ignore: cast_nullable_to_non_nullable
              as bool?,
      online: freezed == online
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as String?,
      haveStock: freezed == haveStock
          ? _value.haveStock
          : haveStock // ignore: cast_nullable_to_non_nullable
              as dynamic,
      wholesalePrice: freezed == wholesalePrice
          ? _value.wholesalePrice
          : wholesalePrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as String?,
      inc: freezed == inc
          ? _value.inc
          : inc // ignore: cast_nullable_to_non_nullable
              as String?,
      idMaster: freezed == idMaster
          ? _value.idMaster
          : idMaster // ignore: cast_nullable_to_non_nullable
              as String?,
      alertStock: freezed == alertStock
          ? _value.alertStock
          : alertStock // ignore: cast_nullable_to_non_nullable
              as String?,
      packages: freezed == packages
          ? _value.packages
          : packages // ignore: cast_nullable_to_non_nullable
              as String?,
      item: freezed == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as String?,
      priceVariant: freezed == priceVariant
          ? _value._priceVariant
          : priceVariant // ignore: cast_nullable_to_non_nullable
              as List<PriceVariant>?,
      addon: freezed == addon
          ? _value._addon
          : addon // ignore: cast_nullable_to_non_nullable
              as List<AddOn>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {@JsonKey(name: 'id_product') this.idProduct,
      @JsonKey(name: 'name_product') this.nameProduct,
      this.unit,
      this.img,
      @JsonKey(name: 'codeproduct') this.codeProduct,
      @JsonKey(name: 'id_category') this.idCategory,
      @JsonKey(name: 'name_category') this.nameCategory,
      this.active,
      @JsonKey(name: 'selling_price') this.sellingPrice,
      @JsonKey(name: 'purchase_price') this.purchasePrice,
      this.stock,
      this.amount,
      @JsonKey(name: 'minimalstock') this.minimalStock,
      this.description,
      this.discount,
      this.posisi,
      this.online,
      @JsonKey(name: 'have_stock') this.haveStock,
      @JsonKey(name: 'wholesale_price') this.wholesalePrice,
      this.tax,
      this.inc,
      @JsonKey(name: 'id_master') this.idMaster,
      @JsonKey(name: 'alertstock') this.alertStock,
      this.packages,
      this.item,
      @JsonKey(name: 'pricevariant') final List<PriceVariant>? priceVariant,
      final List<AddOn>? addon})
      : _priceVariant = priceVariant,
        _addon = addon;

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  @JsonKey(name: 'id_product')
  final String? idProduct;
  @override
  @JsonKey(name: 'name_product')
  final String? nameProduct;
  @override
  final String? unit;
  @override
  final String? img;
  @override
  @JsonKey(name: 'codeproduct')
  final String? codeProduct;
  @override
  @JsonKey(name: 'id_category')
  final String? idCategory;
  @override
  @JsonKey(name: 'name_category')
  final String? nameCategory;
  @override
  final bool? active;
  @override
  @JsonKey(name: 'selling_price')
  final dynamic sellingPrice;
  @override
  @JsonKey(name: 'purchase_price')
  final dynamic purchasePrice;
  @override
  final int? stock;
  @override
  final double? amount;
  @override
  @JsonKey(name: 'minimalstock')
  final String? minimalStock;
  @override
  final String? description;
  @override
  final String? discount;
  @override
  final bool? posisi;
  @override
  final String? online;
  @override
  @JsonKey(name: 'have_stock')
  final dynamic haveStock;
  @override
  @JsonKey(name: 'wholesale_price')
  final dynamic wholesalePrice;
  @override
  final String? tax;
  @override
  final String? inc;
  @override
  @JsonKey(name: 'id_master')
  final String? idMaster;
  @override
  @JsonKey(name: 'alertstock')
  final String? alertStock;
  @override
  final String? packages;
  @override
  final String? item;
  final List<PriceVariant>? _priceVariant;
  @override
  @JsonKey(name: 'pricevariant')
  List<PriceVariant>? get priceVariant {
    final value = _priceVariant;
    if (value == null) return null;
    if (_priceVariant is EqualUnmodifiableListView) return _priceVariant;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<AddOn>? _addon;
  @override
  List<AddOn>? get addon {
    final value = _addon;
    if (value == null) return null;
    if (_addon is EqualUnmodifiableListView) return _addon;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Product(idProduct: $idProduct, nameProduct: $nameProduct, unit: $unit, img: $img, codeProduct: $codeProduct, idCategory: $idCategory, nameCategory: $nameCategory, active: $active, sellingPrice: $sellingPrice, purchasePrice: $purchasePrice, stock: $stock, amount: $amount, minimalStock: $minimalStock, description: $description, discount: $discount, posisi: $posisi, online: $online, haveStock: $haveStock, wholesalePrice: $wholesalePrice, tax: $tax, inc: $inc, idMaster: $idMaster, alertStock: $alertStock, packages: $packages, item: $item, priceVariant: $priceVariant, addon: $addon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.idProduct, idProduct) ||
                other.idProduct == idProduct) &&
            (identical(other.nameProduct, nameProduct) ||
                other.nameProduct == nameProduct) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.codeProduct, codeProduct) ||
                other.codeProduct == codeProduct) &&
            (identical(other.idCategory, idCategory) ||
                other.idCategory == idCategory) &&
            (identical(other.nameCategory, nameCategory) ||
                other.nameCategory == nameCategory) &&
            (identical(other.active, active) || other.active == active) &&
            const DeepCollectionEquality()
                .equals(other.sellingPrice, sellingPrice) &&
            const DeepCollectionEquality()
                .equals(other.purchasePrice, purchasePrice) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.minimalStock, minimalStock) ||
                other.minimalStock == minimalStock) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.posisi, posisi) || other.posisi == posisi) &&
            (identical(other.online, online) || other.online == online) &&
            const DeepCollectionEquality().equals(other.haveStock, haveStock) &&
            const DeepCollectionEquality()
                .equals(other.wholesalePrice, wholesalePrice) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.inc, inc) || other.inc == inc) &&
            (identical(other.idMaster, idMaster) ||
                other.idMaster == idMaster) &&
            (identical(other.alertStock, alertStock) ||
                other.alertStock == alertStock) &&
            (identical(other.packages, packages) ||
                other.packages == packages) &&
            (identical(other.item, item) || other.item == item) &&
            const DeepCollectionEquality()
                .equals(other._priceVariant, _priceVariant) &&
            const DeepCollectionEquality().equals(other._addon, _addon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        idProduct,
        nameProduct,
        unit,
        img,
        codeProduct,
        idCategory,
        nameCategory,
        active,
        const DeepCollectionEquality().hash(sellingPrice),
        const DeepCollectionEquality().hash(purchasePrice),
        stock,
        amount,
        minimalStock,
        description,
        discount,
        posisi,
        online,
        const DeepCollectionEquality().hash(haveStock),
        const DeepCollectionEquality().hash(wholesalePrice),
        tax,
        inc,
        idMaster,
        alertStock,
        packages,
        item,
        const DeepCollectionEquality().hash(_priceVariant),
        const DeepCollectionEquality().hash(_addon)
      ]);

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {@JsonKey(name: 'id_product') final String? idProduct,
      @JsonKey(name: 'name_product') final String? nameProduct,
      final String? unit,
      final String? img,
      @JsonKey(name: 'codeproduct') final String? codeProduct,
      @JsonKey(name: 'id_category') final String? idCategory,
      @JsonKey(name: 'name_category') final String? nameCategory,
      final bool? active,
      @JsonKey(name: 'selling_price') final dynamic sellingPrice,
      @JsonKey(name: 'purchase_price') final dynamic purchasePrice,
      final int? stock,
      final double? amount,
      @JsonKey(name: 'minimalstock') final String? minimalStock,
      final String? description,
      final String? discount,
      final bool? posisi,
      final String? online,
      @JsonKey(name: 'have_stock') final dynamic haveStock,
      @JsonKey(name: 'wholesale_price') final dynamic wholesalePrice,
      final String? tax,
      final String? inc,
      @JsonKey(name: 'id_master') final String? idMaster,
      @JsonKey(name: 'alertstock') final String? alertStock,
      final String? packages,
      final String? item,
      @JsonKey(name: 'pricevariant') final List<PriceVariant>? priceVariant,
      final List<AddOn>? addon}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  @JsonKey(name: 'id_product')
  String? get idProduct;
  @override
  @JsonKey(name: 'name_product')
  String? get nameProduct;
  @override
  String? get unit;
  @override
  String? get img;
  @override
  @JsonKey(name: 'codeproduct')
  String? get codeProduct;
  @override
  @JsonKey(name: 'id_category')
  String? get idCategory;
  @override
  @JsonKey(name: 'name_category')
  String? get nameCategory;
  @override
  bool? get active;
  @override
  @JsonKey(name: 'selling_price')
  dynamic get sellingPrice;
  @override
  @JsonKey(name: 'purchase_price')
  dynamic get purchasePrice;
  @override
  int? get stock;
  @override
  double? get amount;
  @override
  @JsonKey(name: 'minimalstock')
  String? get minimalStock;
  @override
  String? get description;
  @override
  String? get discount;
  @override
  bool? get posisi;
  @override
  String? get online;
  @override
  @JsonKey(name: 'have_stock')
  dynamic get haveStock;
  @override
  @JsonKey(name: 'wholesale_price')
  dynamic get wholesalePrice;
  @override
  String? get tax;
  @override
  String? get inc;
  @override
  @JsonKey(name: 'id_master')
  String? get idMaster;
  @override
  @JsonKey(name: 'alertstock')
  String? get alertStock;
  @override
  String? get packages;
  @override
  String? get item;
  @override
  @JsonKey(name: 'pricevariant')
  List<PriceVariant>? get priceVariant;
  @override
  List<AddOn>? get addon;

  /// Create a copy of Product
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
