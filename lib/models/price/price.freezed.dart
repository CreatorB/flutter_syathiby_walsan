// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Price _$PriceFromJson(Map<String, dynamic> json) {
  return _Price.fromJson(json);
}

/// @nodoc
mixin _$Price {
  @JsonKey(name: 'id_price')
  String? get idPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_price')
  String? get namePrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'nominal')
  String? get nominal => throw _privateConstructorUsedError;
  @JsonKey(name: 'initial')
  String? get initial => throw _privateConstructorUsedError;

  /// Serializes this Price to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Price
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PriceCopyWith<Price> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceCopyWith<$Res> {
  factory $PriceCopyWith(Price value, $Res Function(Price) then) =
      _$PriceCopyWithImpl<$Res, Price>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_price') String? idPrice,
      @JsonKey(name: 'name_price') String? namePrice,
      @JsonKey(name: 'nominal') String? nominal,
      @JsonKey(name: 'initial') String? initial});
}

/// @nodoc
class _$PriceCopyWithImpl<$Res, $Val extends Price>
    implements $PriceCopyWith<$Res> {
  _$PriceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Price
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idPrice = freezed,
    Object? namePrice = freezed,
    Object? nominal = freezed,
    Object? initial = freezed,
  }) {
    return _then(_value.copyWith(
      idPrice: freezed == idPrice
          ? _value.idPrice
          : idPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      namePrice: freezed == namePrice
          ? _value.namePrice
          : namePrice // ignore: cast_nullable_to_non_nullable
              as String?,
      nominal: freezed == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as String?,
      initial: freezed == initial
          ? _value.initial
          : initial // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PriceImplCopyWith<$Res> implements $PriceCopyWith<$Res> {
  factory _$$PriceImplCopyWith(
          _$PriceImpl value, $Res Function(_$PriceImpl) then) =
      __$$PriceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_price') String? idPrice,
      @JsonKey(name: 'name_price') String? namePrice,
      @JsonKey(name: 'nominal') String? nominal,
      @JsonKey(name: 'initial') String? initial});
}

/// @nodoc
class __$$PriceImplCopyWithImpl<$Res>
    extends _$PriceCopyWithImpl<$Res, _$PriceImpl>
    implements _$$PriceImplCopyWith<$Res> {
  __$$PriceImplCopyWithImpl(
      _$PriceImpl _value, $Res Function(_$PriceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Price
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idPrice = freezed,
    Object? namePrice = freezed,
    Object? nominal = freezed,
    Object? initial = freezed,
  }) {
    return _then(_$PriceImpl(
      idPrice: freezed == idPrice
          ? _value.idPrice
          : idPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      namePrice: freezed == namePrice
          ? _value.namePrice
          : namePrice // ignore: cast_nullable_to_non_nullable
              as String?,
      nominal: freezed == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as String?,
      initial: freezed == initial
          ? _value.initial
          : initial // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PriceImpl implements _Price {
  const _$PriceImpl(
      {@JsonKey(name: 'id_price') this.idPrice,
      @JsonKey(name: 'name_price') this.namePrice,
      @JsonKey(name: 'nominal') this.nominal,
      @JsonKey(name: 'initial') this.initial});

  factory _$PriceImpl.fromJson(Map<String, dynamic> json) =>
      _$$PriceImplFromJson(json);

  @override
  @JsonKey(name: 'id_price')
  final String? idPrice;
  @override
  @JsonKey(name: 'name_price')
  final String? namePrice;
  @override
  @JsonKey(name: 'nominal')
  final String? nominal;
  @override
  @JsonKey(name: 'initial')
  final String? initial;

  @override
  String toString() {
    return 'Price(idPrice: $idPrice, namePrice: $namePrice, nominal: $nominal, initial: $initial)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceImpl &&
            (identical(other.idPrice, idPrice) || other.idPrice == idPrice) &&
            (identical(other.namePrice, namePrice) ||
                other.namePrice == namePrice) &&
            (identical(other.nominal, nominal) || other.nominal == nominal) &&
            (identical(other.initial, initial) || other.initial == initial));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, idPrice, namePrice, nominal, initial);

  /// Create a copy of Price
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceImplCopyWith<_$PriceImpl> get copyWith =>
      __$$PriceImplCopyWithImpl<_$PriceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PriceImplToJson(
      this,
    );
  }
}

abstract class _Price implements Price {
  const factory _Price(
      {@JsonKey(name: 'id_price') final String? idPrice,
      @JsonKey(name: 'name_price') final String? namePrice,
      @JsonKey(name: 'nominal') final String? nominal,
      @JsonKey(name: 'initial') final String? initial}) = _$PriceImpl;

  factory _Price.fromJson(Map<String, dynamic> json) = _$PriceImpl.fromJson;

  @override
  @JsonKey(name: 'id_price')
  String? get idPrice;
  @override
  @JsonKey(name: 'name_price')
  String? get namePrice;
  @override
  @JsonKey(name: 'nominal')
  String? get nominal;
  @override
  @JsonKey(name: 'initial')
  String? get initial;

  /// Create a copy of Price
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PriceImplCopyWith<_$PriceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
