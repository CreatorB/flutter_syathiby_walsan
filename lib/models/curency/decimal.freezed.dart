// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'decimal.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Decimal _$DecimalFromJson(Map<String, dynamic> json) {
  return _Decimal.fromJson(json);
}

/// @nodoc
mixin _$Decimal {
  String? get id_decimal => throw _privateConstructorUsedError;
  String? get code_decimal => throw _privateConstructorUsedError;

  /// Serializes this Decimal to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Decimal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DecimalCopyWith<Decimal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DecimalCopyWith<$Res> {
  factory $DecimalCopyWith(Decimal value, $Res Function(Decimal) then) =
      _$DecimalCopyWithImpl<$Res, Decimal>;
  @useResult
  $Res call({String? id_decimal, String? code_decimal});
}

/// @nodoc
class _$DecimalCopyWithImpl<$Res, $Val extends Decimal>
    implements $DecimalCopyWith<$Res> {
  _$DecimalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Decimal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id_decimal = freezed,
    Object? code_decimal = freezed,
  }) {
    return _then(_value.copyWith(
      id_decimal: freezed == id_decimal
          ? _value.id_decimal
          : id_decimal // ignore: cast_nullable_to_non_nullable
              as String?,
      code_decimal: freezed == code_decimal
          ? _value.code_decimal
          : code_decimal // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DecimalImplCopyWith<$Res> implements $DecimalCopyWith<$Res> {
  factory _$$DecimalImplCopyWith(
          _$DecimalImpl value, $Res Function(_$DecimalImpl) then) =
      __$$DecimalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id_decimal, String? code_decimal});
}

/// @nodoc
class __$$DecimalImplCopyWithImpl<$Res>
    extends _$DecimalCopyWithImpl<$Res, _$DecimalImpl>
    implements _$$DecimalImplCopyWith<$Res> {
  __$$DecimalImplCopyWithImpl(
      _$DecimalImpl _value, $Res Function(_$DecimalImpl) _then)
      : super(_value, _then);

  /// Create a copy of Decimal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id_decimal = freezed,
    Object? code_decimal = freezed,
  }) {
    return _then(_$DecimalImpl(
      id_decimal: freezed == id_decimal
          ? _value.id_decimal
          : id_decimal // ignore: cast_nullable_to_non_nullable
              as String?,
      code_decimal: freezed == code_decimal
          ? _value.code_decimal
          : code_decimal // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DecimalImpl implements _Decimal {
  const _$DecimalImpl({this.id_decimal, this.code_decimal});

  factory _$DecimalImpl.fromJson(Map<String, dynamic> json) =>
      _$$DecimalImplFromJson(json);

  @override
  final String? id_decimal;
  @override
  final String? code_decimal;

  @override
  String toString() {
    return 'Decimal(id_decimal: $id_decimal, code_decimal: $code_decimal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecimalImpl &&
            (identical(other.id_decimal, id_decimal) ||
                other.id_decimal == id_decimal) &&
            (identical(other.code_decimal, code_decimal) ||
                other.code_decimal == code_decimal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id_decimal, code_decimal);

  /// Create a copy of Decimal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DecimalImplCopyWith<_$DecimalImpl> get copyWith =>
      __$$DecimalImplCopyWithImpl<_$DecimalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DecimalImplToJson(
      this,
    );
  }
}

abstract class _Decimal implements Decimal {
  const factory _Decimal(
      {final String? id_decimal, final String? code_decimal}) = _$DecimalImpl;

  factory _Decimal.fromJson(Map<String, dynamic> json) = _$DecimalImpl.fromJson;

  @override
  String? get id_decimal;
  @override
  String? get code_decimal;

  /// Create a copy of Decimal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DecimalImplCopyWith<_$DecimalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
