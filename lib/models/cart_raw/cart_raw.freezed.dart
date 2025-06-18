// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_raw.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CartRaw _$CartRawFromJson(Map<String, dynamic> json) {
  return _CartRaw.fromJson(json);
}

/// @nodoc
mixin _$CartRaw {
  @JsonKey(name: 'position')
  int? get position => throw _privateConstructorUsedError;
  @JsonKey(name: 'count')
  double? get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'note')
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_price', defaultValue: '0')
  String? get newPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'product')
  RawMaterial? get product => throw _privateConstructorUsedError;

  /// Serializes this CartRaw to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CartRaw
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CartRawCopyWith<CartRaw> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartRawCopyWith<$Res> {
  factory $CartRawCopyWith(CartRaw value, $Res Function(CartRaw) then) =
      _$CartRawCopyWithImpl<$Res, CartRaw>;
  @useResult
  $Res call(
      {@JsonKey(name: 'position') int? position,
      @JsonKey(name: 'count') double? count,
      @JsonKey(name: 'note') String? note,
      @JsonKey(name: 'new_price', defaultValue: '0') String? newPrice,
      @JsonKey(name: 'product') RawMaterial? product});

  $RawMaterialCopyWith<$Res>? get product;
}

/// @nodoc
class _$CartRawCopyWithImpl<$Res, $Val extends CartRaw>
    implements $CartRawCopyWith<$Res> {
  _$CartRawCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CartRaw
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = freezed,
    Object? count = freezed,
    Object? note = freezed,
    Object? newPrice = freezed,
    Object? product = freezed,
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
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as RawMaterial?,
    ) as $Val);
  }

  /// Create a copy of CartRaw
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RawMaterialCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $RawMaterialCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartRawImplCopyWith<$Res> implements $CartRawCopyWith<$Res> {
  factory _$$CartRawImplCopyWith(
          _$CartRawImpl value, $Res Function(_$CartRawImpl) then) =
      __$$CartRawImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'position') int? position,
      @JsonKey(name: 'count') double? count,
      @JsonKey(name: 'note') String? note,
      @JsonKey(name: 'new_price', defaultValue: '0') String? newPrice,
      @JsonKey(name: 'product') RawMaterial? product});

  @override
  $RawMaterialCopyWith<$Res>? get product;
}

/// @nodoc
class __$$CartRawImplCopyWithImpl<$Res>
    extends _$CartRawCopyWithImpl<$Res, _$CartRawImpl>
    implements _$$CartRawImplCopyWith<$Res> {
  __$$CartRawImplCopyWithImpl(
      _$CartRawImpl _value, $Res Function(_$CartRawImpl) _then)
      : super(_value, _then);

  /// Create a copy of CartRaw
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = freezed,
    Object? count = freezed,
    Object? note = freezed,
    Object? newPrice = freezed,
    Object? product = freezed,
  }) {
    return _then(_$CartRawImpl(
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
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as RawMaterial?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartRawImpl implements _CartRaw {
  const _$CartRawImpl(
      {@JsonKey(name: 'position') this.position,
      @JsonKey(name: 'count') this.count,
      @JsonKey(name: 'note') this.note,
      @JsonKey(name: 'new_price', defaultValue: '0') this.newPrice,
      @JsonKey(name: 'product') this.product});

  factory _$CartRawImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartRawImplFromJson(json);

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
  @JsonKey(name: 'product')
  final RawMaterial? product;

  @override
  String toString() {
    return 'CartRaw(position: $position, count: $count, note: $note, newPrice: $newPrice, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartRawImpl &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.newPrice, newPrice) ||
                other.newPrice == newPrice) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, position, count, note, newPrice, product);

  /// Create a copy of CartRaw
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CartRawImplCopyWith<_$CartRawImpl> get copyWith =>
      __$$CartRawImplCopyWithImpl<_$CartRawImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartRawImplToJson(
      this,
    );
  }
}

abstract class _CartRaw implements CartRaw {
  const factory _CartRaw(
      {@JsonKey(name: 'position') final int? position,
      @JsonKey(name: 'count') final double? count,
      @JsonKey(name: 'note') final String? note,
      @JsonKey(name: 'new_price', defaultValue: '0') final String? newPrice,
      @JsonKey(name: 'product') final RawMaterial? product}) = _$CartRawImpl;

  factory _CartRaw.fromJson(Map<String, dynamic> json) = _$CartRawImpl.fromJson;

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
  @JsonKey(name: 'product')
  RawMaterial? get product;

  /// Create a copy of CartRaw
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CartRawImplCopyWith<_$CartRawImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
