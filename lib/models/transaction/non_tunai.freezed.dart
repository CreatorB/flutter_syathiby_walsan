// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'non_tunai.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NonTunai _$NonTunaiFromJson(Map<String, dynamic> json) {
  return _NonTunai.fromJson(json);
}

/// @nodoc
mixin _$NonTunai {
  String? get idLink => throw _privateConstructorUsedError;
  String? get nameLink => throw _privateConstructorUsedError;
  String? get img => throw _privateConstructorUsedError;
  String? get inc => throw _privateConstructorUsedError;

  /// Serializes this NonTunai to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NonTunai
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NonTunaiCopyWith<NonTunai> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NonTunaiCopyWith<$Res> {
  factory $NonTunaiCopyWith(NonTunai value, $Res Function(NonTunai) then) =
      _$NonTunaiCopyWithImpl<$Res, NonTunai>;
  @useResult
  $Res call({String? idLink, String? nameLink, String? img, String? inc});
}

/// @nodoc
class _$NonTunaiCopyWithImpl<$Res, $Val extends NonTunai>
    implements $NonTunaiCopyWith<$Res> {
  _$NonTunaiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NonTunai
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idLink = freezed,
    Object? nameLink = freezed,
    Object? img = freezed,
    Object? inc = freezed,
  }) {
    return _then(_value.copyWith(
      idLink: freezed == idLink
          ? _value.idLink
          : idLink // ignore: cast_nullable_to_non_nullable
              as String?,
      nameLink: freezed == nameLink
          ? _value.nameLink
          : nameLink // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      inc: freezed == inc
          ? _value.inc
          : inc // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NonTunaiImplCopyWith<$Res>
    implements $NonTunaiCopyWith<$Res> {
  factory _$$NonTunaiImplCopyWith(
          _$NonTunaiImpl value, $Res Function(_$NonTunaiImpl) then) =
      __$$NonTunaiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? idLink, String? nameLink, String? img, String? inc});
}

/// @nodoc
class __$$NonTunaiImplCopyWithImpl<$Res>
    extends _$NonTunaiCopyWithImpl<$Res, _$NonTunaiImpl>
    implements _$$NonTunaiImplCopyWith<$Res> {
  __$$NonTunaiImplCopyWithImpl(
      _$NonTunaiImpl _value, $Res Function(_$NonTunaiImpl) _then)
      : super(_value, _then);

  /// Create a copy of NonTunai
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idLink = freezed,
    Object? nameLink = freezed,
    Object? img = freezed,
    Object? inc = freezed,
  }) {
    return _then(_$NonTunaiImpl(
      idLink: freezed == idLink
          ? _value.idLink
          : idLink // ignore: cast_nullable_to_non_nullable
              as String?,
      nameLink: freezed == nameLink
          ? _value.nameLink
          : nameLink // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      inc: freezed == inc
          ? _value.inc
          : inc // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NonTunaiImpl implements _NonTunai {
  const _$NonTunaiImpl({this.idLink, this.nameLink, this.img, this.inc});

  factory _$NonTunaiImpl.fromJson(Map<String, dynamic> json) =>
      _$$NonTunaiImplFromJson(json);

  @override
  final String? idLink;
  @override
  final String? nameLink;
  @override
  final String? img;
  @override
  final String? inc;

  @override
  String toString() {
    return 'NonTunai(idLink: $idLink, nameLink: $nameLink, img: $img, inc: $inc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NonTunaiImpl &&
            (identical(other.idLink, idLink) || other.idLink == idLink) &&
            (identical(other.nameLink, nameLink) ||
                other.nameLink == nameLink) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.inc, inc) || other.inc == inc));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, idLink, nameLink, img, inc);

  /// Create a copy of NonTunai
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NonTunaiImplCopyWith<_$NonTunaiImpl> get copyWith =>
      __$$NonTunaiImplCopyWithImpl<_$NonTunaiImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NonTunaiImplToJson(
      this,
    );
  }
}

abstract class _NonTunai implements NonTunai {
  const factory _NonTunai(
      {final String? idLink,
      final String? nameLink,
      final String? img,
      final String? inc}) = _$NonTunaiImpl;

  factory _NonTunai.fromJson(Map<String, dynamic> json) =
      _$NonTunaiImpl.fromJson;

  @override
  String? get idLink;
  @override
  String? get nameLink;
  @override
  String? get img;
  @override
  String? get inc;

  /// Create a copy of NonTunai
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NonTunaiImplCopyWith<_$NonTunaiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
