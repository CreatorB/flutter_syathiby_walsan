// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Cart _$CartFromJson(Map<String, dynamic> json) {
  return _Cart.fromJson(json);
}

/// @nodoc
mixin _$Cart {
  @JsonKey(name: 'position')
  int? get position => throw _privateConstructorUsedError;
  @JsonKey(name: 'count')
  double? get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'note')
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_price', defaultValue: '0')
  String? get newPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'nominal_addon', defaultValue: '0')
  String? get nominalAddon => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'product')
  Product? get product => throw _privateConstructorUsedError;
  @JsonKey(name: 'addon')
  AddOn? get addon => throw _privateConstructorUsedError;

  /// Serializes this Cart to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartCopyWith<Cart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartCopyWith<$Res> {
  factory $CartCopyWith(Cart value, $Res Function(Cart) then) =
      _$CartCopyWithImpl<$Res, Cart>;
  @useResult
  $Res call(
      {@JsonKey(name: 'position') int? position,
      @JsonKey(name: 'count') double? count,
      @JsonKey(name: 'note') String? note,
      @JsonKey(name: 'new_price', defaultValue: '0') String? newPrice,
      @JsonKey(name: 'nominal_addon', defaultValue: '0') String? nominalAddon,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'product') Product? product,
      @JsonKey(name: 'addon') AddOn? addon});

  $ProductCopyWith<$Res>? get product;
  $AddOnCopyWith<$Res>? get addon;
}

/// @nodoc
class _$CartCopyWithImpl<$Res, $Val extends Cart>
    implements $CartCopyWith<$Res> {
  _$CartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = freezed,
    Object? count = freezed,
    Object? note = freezed,
    Object? newPrice = freezed,
    Object? nominalAddon = freezed,
    Object? type = freezed,
    Object? product = freezed,
    Object? addon = freezed,
  }) {
    return _then(_value.copyWith(
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as double?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      newPrice: freezed == newPrice
          ? _value.newPrice
          : newPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      nominalAddon: freezed == nominalAddon
          ? _value.nominalAddon
          : nominalAddon // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      addon: freezed == addon
          ? _value.addon
          : addon // ignore: cast_nullable_to_non_nullable
              as AddOn?,
    ) as $Val);
  }

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddOnCopyWith<$Res>? get addon {
    if (_value.addon == null) {
      return null;
    }

    return $AddOnCopyWith<$Res>(_value.addon!, (value) {
      return _then(_value.copyWith(addon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartImplCopyWith<$Res> implements $CartCopyWith<$Res> {
  factory _$$CartImplCopyWith(
          _$CartImpl value, $Res Function(_$CartImpl) then) =
      __$$CartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'position') int? position,
      @JsonKey(name: 'count') double? count,
      @JsonKey(name: 'note') String? note,
      @JsonKey(name: 'new_price', defaultValue: '0') String? newPrice,
      @JsonKey(name: 'nominal_addon', defaultValue: '0') String? nominalAddon,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'product') Product? product,
      @JsonKey(name: 'addon') AddOn? addon});

  @override
  $ProductCopyWith<$Res>? get product;
  @override
  $AddOnCopyWith<$Res>? get addon;
}

/// @nodoc
class __$$CartImplCopyWithImpl<$Res>
    extends _$CartCopyWithImpl<$Res, _$CartImpl>
    implements _$$CartImplCopyWith<$Res> {
  __$$CartImplCopyWithImpl(_$CartImpl _value, $Res Function(_$CartImpl) _then)
      : super(_value, _then);

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = freezed,
    Object? count = freezed,
    Object? note = freezed,
    Object? newPrice = freezed,
    Object? nominalAddon = freezed,
    Object? type = freezed,
    Object? product = freezed,
    Object? addon = freezed,
  }) {
    return _then(_$CartImpl(
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as double?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      newPrice: freezed == newPrice
          ? _value.newPrice
          : newPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      nominalAddon: freezed == nominalAddon
          ? _value.nominalAddon
          : nominalAddon // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      addon: freezed == addon
          ? _value.addon
          : addon // ignore: cast_nullable_to_non_nullable
              as AddOn?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartImpl implements _Cart {
  const _$CartImpl(
      {@JsonKey(name: 'position') this.position,
      @JsonKey(name: 'count') this.count,
      @JsonKey(name: 'note') this.note,
      @JsonKey(name: 'new_price', defaultValue: '0') this.newPrice,
      @JsonKey(name: 'nominal_addon', defaultValue: '0') this.nominalAddon,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'product') this.product,
      @JsonKey(name: 'addon') this.addon});

  factory _$CartImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartImplFromJson(json);

  @override
  @JsonKey(name: 'position')
  final int? position;
  @override
  @JsonKey(name: 'count')
  final double? count;
  @override
  @JsonKey(name: 'note')
  final String? note;
  @override
  @JsonKey(name: 'new_price', defaultValue: '0')
  final String? newPrice;
  @override
  @JsonKey(name: 'nominal_addon', defaultValue: '0')
  final String? nominalAddon;
  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'product')
  final Product? product;
  @override
  @JsonKey(name: 'addon')
  final AddOn? addon;

  @override
  String toString() {
    return 'Cart(position: $position, count: $count, note: $note, newPrice: $newPrice, nominalAddon: $nominalAddon, type: $type, product: $product, addon: $addon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartImpl &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.newPrice, newPrice) ||
                other.newPrice == newPrice) &&
            (identical(other.nominalAddon, nominalAddon) ||
                other.nominalAddon == nominalAddon) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.addon, addon) || other.addon == addon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, position, count, note, newPrice,
      nominalAddon, type, product, addon);

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartImplCopyWith<_$CartImpl> get copyWith =>
      __$$CartImplCopyWithImpl<_$CartImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartImplToJson(
      this,
    );
  }
}

abstract class _Cart implements Cart {
  const factory _Cart(
      {@JsonKey(name: 'position') final int? position,
      @JsonKey(name: 'count') final double? count,
      @JsonKey(name: 'note') final String? note,
      @JsonKey(name: 'new_price', defaultValue: '0') final String? newPrice,
      @JsonKey(name: 'nominal_addon', defaultValue: '0')
      final String? nominalAddon,
      @JsonKey(name: 'type') final String? type,
      @JsonKey(name: 'product') final Product? product,
      @JsonKey(name: 'addon') final AddOn? addon}) = _$CartImpl;

  factory _Cart.fromJson(Map<String, dynamic> json) = _$CartImpl.fromJson;

  @override
  @JsonKey(name: 'position')
  int? get position;
  @override
  @JsonKey(name: 'count')
  double? get count;
  @override
  @JsonKey(name: 'note')
  String? get note;
  @override
  @JsonKey(name: 'new_price', defaultValue: '0')
  String? get newPrice;
  @override
  @JsonKey(name: 'nominal_addon', defaultValue: '0')
  String? get nominalAddon;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'product')
  Product? get product;
  @override
  @JsonKey(name: 'addon')
  AddOn? get addon;

  /// Create a copy of Cart
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartImplCopyWith<_$CartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
