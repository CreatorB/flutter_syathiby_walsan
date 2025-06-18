// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pray.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Pray _$PrayFromJson(Map<String, dynamic> json) {
  return _Pray.fromJson(json);
}

/// @nodoc
mixin _$Pray {
  String get arab => throw _privateConstructorUsedError;
  String get indo => throw _privateConstructorUsedError;
  String get judul => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;

  /// Serializes this Pray to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Pray
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrayCopyWith<Pray> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrayCopyWith<$Res> {
  factory $PrayCopyWith(Pray value, $Res Function(Pray) then) =
      _$PrayCopyWithImpl<$Res, Pray>;
  @useResult
  $Res call({String arab, String indo, String judul, String source});
}

/// @nodoc
class _$PrayCopyWithImpl<$Res, $Val extends Pray>
    implements $PrayCopyWith<$Res> {
  _$PrayCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Pray
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arab = null,
    Object? indo = null,
    Object? judul = null,
    Object? source = null,
  }) {
    return _then(_value.copyWith(
      arab: null == arab
          ? _value.arab
          : arab // ignore: cast_nullable_to_non_nullable
              as String,
      indo: null == indo
          ? _value.indo
          : indo // ignore: cast_nullable_to_non_nullable
              as String,
      judul: null == judul
          ? _value.judul
          : judul // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrayImplCopyWith<$Res> implements $PrayCopyWith<$Res> {
  factory _$$PrayImplCopyWith(
          _$PrayImpl value, $Res Function(_$PrayImpl) then) =
      __$$PrayImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String arab, String indo, String judul, String source});
}

/// @nodoc
class __$$PrayImplCopyWithImpl<$Res>
    extends _$PrayCopyWithImpl<$Res, _$PrayImpl>
    implements _$$PrayImplCopyWith<$Res> {
  __$$PrayImplCopyWithImpl(_$PrayImpl _value, $Res Function(_$PrayImpl) _then)
      : super(_value, _then);

  /// Create a copy of Pray
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arab = null,
    Object? indo = null,
    Object? judul = null,
    Object? source = null,
  }) {
    return _then(_$PrayImpl(
      arab: null == arab
          ? _value.arab
          : arab // ignore: cast_nullable_to_non_nullable
              as String,
      indo: null == indo
          ? _value.indo
          : indo // ignore: cast_nullable_to_non_nullable
              as String,
      judul: null == judul
          ? _value.judul
          : judul // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrayImpl implements _Pray {
  const _$PrayImpl(
      {required this.arab,
      required this.indo,
      required this.judul,
      required this.source});

  factory _$PrayImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrayImplFromJson(json);

  @override
  final String arab;
  @override
  final String indo;
  @override
  final String judul;
  @override
  final String source;

  @override
  String toString() {
    return 'Pray(arab: $arab, indo: $indo, judul: $judul, source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrayImpl &&
            (identical(other.arab, arab) || other.arab == arab) &&
            (identical(other.indo, indo) || other.indo == indo) &&
            (identical(other.judul, judul) || other.judul == judul) &&
            (identical(other.source, source) || other.source == source));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, arab, indo, judul, source);

  /// Create a copy of Pray
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrayImplCopyWith<_$PrayImpl> get copyWith =>
      __$$PrayImplCopyWithImpl<_$PrayImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrayImplToJson(
      this,
    );
  }
}

abstract class _Pray implements Pray {
  const factory _Pray(
      {required final String arab,
      required final String indo,
      required final String judul,
      required final String source}) = _$PrayImpl;

  factory _Pray.fromJson(Map<String, dynamic> json) = _$PrayImpl.fromJson;

  @override
  String get arab;
  @override
  String get indo;
  @override
  String get judul;
  @override
  String get source;

  /// Create a copy of Pray
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrayImplCopyWith<_$PrayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
