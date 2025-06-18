// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visiting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Visiting _$VisitingFromJson(Map<String, dynamic> json) {
  return _Visiting.fromJson(json);
}

/// @nodoc
mixin _$Visiting {
  String? get invoice => throw _privateConstructorUsedError;

  /// Serializes this Visiting to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Visiting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VisitingCopyWith<Visiting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitingCopyWith<$Res> {
  factory $VisitingCopyWith(Visiting value, $Res Function(Visiting) then) =
      _$VisitingCopyWithImpl<$Res, Visiting>;
  @useResult
  $Res call({String? invoice});
}

/// @nodoc
class _$VisitingCopyWithImpl<$Res, $Val extends Visiting>
    implements $VisitingCopyWith<$Res> {
  _$VisitingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Visiting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoice = freezed,
  }) {
    return _then(_value.copyWith(
      invoice: freezed == invoice
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VisitingImplCopyWith<$Res>
    implements $VisitingCopyWith<$Res> {
  factory _$$VisitingImplCopyWith(
          _$VisitingImpl value, $Res Function(_$VisitingImpl) then) =
      __$$VisitingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? invoice});
}

/// @nodoc
class __$$VisitingImplCopyWithImpl<$Res>
    extends _$VisitingCopyWithImpl<$Res, _$VisitingImpl>
    implements _$$VisitingImplCopyWith<$Res> {
  __$$VisitingImplCopyWithImpl(
      _$VisitingImpl _value, $Res Function(_$VisitingImpl) _then)
      : super(_value, _then);

  /// Create a copy of Visiting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invoice = freezed,
  }) {
    return _then(_$VisitingImpl(
      invoice: freezed == invoice
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VisitingImpl implements _Visiting {
  const _$VisitingImpl({this.invoice});

  factory _$VisitingImpl.fromJson(Map<String, dynamic> json) =>
      _$$VisitingImplFromJson(json);

  @override
  final String? invoice;

  @override
  String toString() {
    return 'Visiting(invoice: $invoice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VisitingImpl &&
            (identical(other.invoice, invoice) || other.invoice == invoice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, invoice);

  /// Create a copy of Visiting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VisitingImplCopyWith<_$VisitingImpl> get copyWith =>
      __$$VisitingImplCopyWithImpl<_$VisitingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VisitingImplToJson(
      this,
    );
  }
}

abstract class _Visiting implements Visiting {
  const factory _Visiting({final String? invoice}) = _$VisitingImpl;

  factory _Visiting.fromJson(Map<String, dynamic> json) =
      _$VisitingImpl.fromJson;

  @override
  String? get invoice;

  /// Create a copy of Visiting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VisitingImplCopyWith<_$VisitingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
