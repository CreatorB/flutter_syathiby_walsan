// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailPayment _$DetailPaymentFromJson(Map<String, dynamic> json) {
  return _DetailPayment.fromJson(json);
}

/// @nodoc
mixin _$DetailPayment {
  double? get totalprice => throw _privateConstructorUsedError;
  double? get totalpay => throw _privateConstructorUsedError;
  double? get discount => throw _privateConstructorUsedError;
  double? get tax => throw _privateConstructorUsedError;
  double? get serviceCharge => throw _privateConstructorUsedError;
  String? get idDiscount => throw _privateConstructorUsedError;
  String? get nameDiscount => throw _privateConstructorUsedError;

  /// Serializes this DetailPayment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailPayment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailPaymentCopyWith<DetailPayment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailPaymentCopyWith<$Res> {
  factory $DetailPaymentCopyWith(
          DetailPayment value, $Res Function(DetailPayment) then) =
      _$DetailPaymentCopyWithImpl<$Res, DetailPayment>;
  @useResult
  $Res call(
      {double? totalprice,
      double? totalpay,
      double? discount,
      double? tax,
      double? serviceCharge,
      String? idDiscount,
      String? nameDiscount});
}

/// @nodoc
class _$DetailPaymentCopyWithImpl<$Res, $Val extends DetailPayment>
    implements $DetailPaymentCopyWith<$Res> {
  _$DetailPaymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailPayment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalprice = freezed,
    Object? totalpay = freezed,
    Object? discount = freezed,
    Object? tax = freezed,
    Object? serviceCharge = freezed,
    Object? idDiscount = freezed,
    Object? nameDiscount = freezed,
  }) {
    return _then(_value.copyWith(
      totalprice: freezed == totalprice
          ? _value.totalprice
          : totalprice // ignore: cast_nullable_to_non_nullable
              as double?,
      totalpay: freezed == totalpay
          ? _value.totalpay
          : totalpay // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double?,
      serviceCharge: freezed == serviceCharge
          ? _value.serviceCharge
          : serviceCharge // ignore: cast_nullable_to_non_nullable
              as double?,
      idDiscount: freezed == idDiscount
          ? _value.idDiscount
          : idDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      nameDiscount: freezed == nameDiscount
          ? _value.nameDiscount
          : nameDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailPaymentImplCopyWith<$Res>
    implements $DetailPaymentCopyWith<$Res> {
  factory _$$DetailPaymentImplCopyWith(
          _$DetailPaymentImpl value, $Res Function(_$DetailPaymentImpl) then) =
      __$$DetailPaymentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? totalprice,
      double? totalpay,
      double? discount,
      double? tax,
      double? serviceCharge,
      String? idDiscount,
      String? nameDiscount});
}

/// @nodoc
class __$$DetailPaymentImplCopyWithImpl<$Res>
    extends _$DetailPaymentCopyWithImpl<$Res, _$DetailPaymentImpl>
    implements _$$DetailPaymentImplCopyWith<$Res> {
  __$$DetailPaymentImplCopyWithImpl(
      _$DetailPaymentImpl _value, $Res Function(_$DetailPaymentImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailPayment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalprice = freezed,
    Object? totalpay = freezed,
    Object? discount = freezed,
    Object? tax = freezed,
    Object? serviceCharge = freezed,
    Object? idDiscount = freezed,
    Object? nameDiscount = freezed,
  }) {
    return _then(_$DetailPaymentImpl(
      totalprice: freezed == totalprice
          ? _value.totalprice
          : totalprice // ignore: cast_nullable_to_non_nullable
              as double?,
      totalpay: freezed == totalpay
          ? _value.totalpay
          : totalpay // ignore: cast_nullable_to_non_nullable
              as double?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as double?,
      serviceCharge: freezed == serviceCharge
          ? _value.serviceCharge
          : serviceCharge // ignore: cast_nullable_to_non_nullable
              as double?,
      idDiscount: freezed == idDiscount
          ? _value.idDiscount
          : idDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      nameDiscount: freezed == nameDiscount
          ? _value.nameDiscount
          : nameDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailPaymentImpl implements _DetailPayment {
  const _$DetailPaymentImpl(
      {this.totalprice,
      this.totalpay,
      this.discount,
      this.tax,
      this.serviceCharge,
      this.idDiscount,
      this.nameDiscount});

  factory _$DetailPaymentImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailPaymentImplFromJson(json);

  @override
  final double? totalprice;
  @override
  final double? totalpay;
  @override
  final double? discount;
  @override
  final double? tax;
  @override
  final double? serviceCharge;
  @override
  final String? idDiscount;
  @override
  final String? nameDiscount;

  @override
  String toString() {
    return 'DetailPayment(totalprice: $totalprice, totalpay: $totalpay, discount: $discount, tax: $tax, serviceCharge: $serviceCharge, idDiscount: $idDiscount, nameDiscount: $nameDiscount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailPaymentImpl &&
            (identical(other.totalprice, totalprice) ||
                other.totalprice == totalprice) &&
            (identical(other.totalpay, totalpay) ||
                other.totalpay == totalpay) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.serviceCharge, serviceCharge) ||
                other.serviceCharge == serviceCharge) &&
            (identical(other.idDiscount, idDiscount) ||
                other.idDiscount == idDiscount) &&
            (identical(other.nameDiscount, nameDiscount) ||
                other.nameDiscount == nameDiscount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalprice, totalpay, discount,
      tax, serviceCharge, idDiscount, nameDiscount);

  /// Create a copy of DetailPayment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailPaymentImplCopyWith<_$DetailPaymentImpl> get copyWith =>
      __$$DetailPaymentImplCopyWithImpl<_$DetailPaymentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailPaymentImplToJson(
      this,
    );
  }
}

abstract class _DetailPayment implements DetailPayment {
  const factory _DetailPayment(
      {final double? totalprice,
      final double? totalpay,
      final double? discount,
      final double? tax,
      final double? serviceCharge,
      final String? idDiscount,
      final String? nameDiscount}) = _$DetailPaymentImpl;

  factory _DetailPayment.fromJson(Map<String, dynamic> json) =
      _$DetailPaymentImpl.fromJson;

  @override
  double? get totalprice;
  @override
  double? get totalpay;
  @override
  double? get discount;
  @override
  double? get tax;
  @override
  double? get serviceCharge;
  @override
  String? get idDiscount;
  @override
  String? get nameDiscount;

  /// Create a copy of DetailPayment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailPaymentImplCopyWith<_$DetailPaymentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
