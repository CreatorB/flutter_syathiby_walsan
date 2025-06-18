// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quran.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Quran _$QuranFromJson(Map<String, dynamic> json) {
  return _Quran.fromJson(json);
}

/// @nodoc
mixin _$Quran {
  Surah get surah => throw _privateConstructorUsedError;
  Ayah get ayah => throw _privateConstructorUsedError;

  /// Serializes this Quran to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Quran
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QuranCopyWith<Quran> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranCopyWith<$Res> {
  factory $QuranCopyWith(Quran value, $Res Function(Quran) then) =
      _$QuranCopyWithImpl<$Res, Quran>;
  @useResult
  $Res call({Surah surah, Ayah ayah});

  $SurahCopyWith<$Res> get surah;
  $AyahCopyWith<$Res> get ayah;
}

/// @nodoc
class _$QuranCopyWithImpl<$Res, $Val extends Quran>
    implements $QuranCopyWith<$Res> {
  _$QuranCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Quran
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surah = null,
    Object? ayah = null,
  }) {
    return _then(_value.copyWith(
      surah: null == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as Surah,
      ayah: null == ayah
          ? _value.ayah
          : ayah // ignore: cast_nullable_to_non_nullable
              as Ayah,
    ) as $Val);
  }

  /// Create a copy of Quran
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SurahCopyWith<$Res> get surah {
    return $SurahCopyWith<$Res>(_value.surah, (value) {
      return _then(_value.copyWith(surah: value) as $Val);
    });
  }

  /// Create a copy of Quran
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AyahCopyWith<$Res> get ayah {
    return $AyahCopyWith<$Res>(_value.ayah, (value) {
      return _then(_value.copyWith(ayah: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuranImplCopyWith<$Res> implements $QuranCopyWith<$Res> {
  factory _$$QuranImplCopyWith(
          _$QuranImpl value, $Res Function(_$QuranImpl) then) =
      __$$QuranImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Surah surah, Ayah ayah});

  @override
  $SurahCopyWith<$Res> get surah;
  @override
  $AyahCopyWith<$Res> get ayah;
}

/// @nodoc
class __$$QuranImplCopyWithImpl<$Res>
    extends _$QuranCopyWithImpl<$Res, _$QuranImpl>
    implements _$$QuranImplCopyWith<$Res> {
  __$$QuranImplCopyWithImpl(
      _$QuranImpl _value, $Res Function(_$QuranImpl) _then)
      : super(_value, _then);

  /// Create a copy of Quran
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surah = null,
    Object? ayah = null,
  }) {
    return _then(_$QuranImpl(
      surah: null == surah
          ? _value.surah
          : surah // ignore: cast_nullable_to_non_nullable
              as Surah,
      ayah: null == ayah
          ? _value.ayah
          : ayah // ignore: cast_nullable_to_non_nullable
              as Ayah,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuranImpl implements _Quran {
  const _$QuranImpl({required this.surah, required this.ayah});

  factory _$QuranImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuranImplFromJson(json);

  @override
  final Surah surah;
  @override
  final Ayah ayah;

  @override
  String toString() {
    return 'Quran(surah: $surah, ayah: $ayah)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuranImpl &&
            (identical(other.surah, surah) || other.surah == surah) &&
            (identical(other.ayah, ayah) || other.ayah == ayah));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, surah, ayah);

  /// Create a copy of Quran
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QuranImplCopyWith<_$QuranImpl> get copyWith =>
      __$$QuranImplCopyWithImpl<_$QuranImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuranImplToJson(
      this,
    );
  }
}

abstract class _Quran implements Quran {
  const factory _Quran({required final Surah surah, required final Ayah ayah}) =
      _$QuranImpl;

  factory _Quran.fromJson(Map<String, dynamic> json) = _$QuranImpl.fromJson;

  @override
  Surah get surah;
  @override
  Ayah get ayah;

  /// Create a copy of Quran
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QuranImplCopyWith<_$QuranImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
