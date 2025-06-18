// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dhikr.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Dhikr _$DhikrFromJson(Map<String, dynamic> json) {
  return _Dhikr.fromJson(json);
}

/// @nodoc
mixin _$Dhikr {
  String? get title => throw _privateConstructorUsedError;
  String get arabic => throw _privateConstructorUsedError;
  String? get transliteration => throw _privateConstructorUsedError;
  String get translation => throw _privateConstructorUsedError;
  String get count => throw _privateConstructorUsedError;
  String? get faedah => throw _privateConstructorUsedError;
  String? get reference => throw _privateConstructorUsedError;

  /// Serializes this Dhikr to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Dhikr
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DhikrCopyWith<Dhikr> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DhikrCopyWith<$Res> {
  factory $DhikrCopyWith(Dhikr value, $Res Function(Dhikr) then) =
      _$DhikrCopyWithImpl<$Res, Dhikr>;
  @useResult
  $Res call(
      {String? title,
      String arabic,
      String? transliteration,
      String translation,
      String count,
      String? faedah,
      String? reference});
}

/// @nodoc
class _$DhikrCopyWithImpl<$Res, $Val extends Dhikr>
    implements $DhikrCopyWith<$Res> {
  _$DhikrCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Dhikr
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? arabic = null,
    Object? transliteration = freezed,
    Object? translation = null,
    Object? count = null,
    Object? faedah = freezed,
    Object? reference = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      arabic: null == arabic
          ? _value.arabic
          : arabic // ignore: cast_nullable_to_non_nullable
              as String,
      transliteration: freezed == transliteration
          ? _value.transliteration
          : transliteration // ignore: cast_nullable_to_non_nullable
              as String?,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String,
      faedah: freezed == faedah
          ? _value.faedah
          : faedah // ignore: cast_nullable_to_non_nullable
              as String?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DhikrImplCopyWith<$Res> implements $DhikrCopyWith<$Res> {
  factory _$$DhikrImplCopyWith(
          _$DhikrImpl value, $Res Function(_$DhikrImpl) then) =
      __$$DhikrImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? title,
      String arabic,
      String? transliteration,
      String translation,
      String count,
      String? faedah,
      String? reference});
}

/// @nodoc
class __$$DhikrImplCopyWithImpl<$Res>
    extends _$DhikrCopyWithImpl<$Res, _$DhikrImpl>
    implements _$$DhikrImplCopyWith<$Res> {
  __$$DhikrImplCopyWithImpl(
      _$DhikrImpl _value, $Res Function(_$DhikrImpl) _then)
      : super(_value, _then);

  /// Create a copy of Dhikr
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? arabic = null,
    Object? transliteration = freezed,
    Object? translation = null,
    Object? count = null,
    Object? faedah = freezed,
    Object? reference = freezed,
  }) {
    return _then(_$DhikrImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      arabic: null == arabic
          ? _value.arabic
          : arabic // ignore: cast_nullable_to_non_nullable
              as String,
      transliteration: freezed == transliteration
          ? _value.transliteration
          : transliteration // ignore: cast_nullable_to_non_nullable
              as String?,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as String,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as String,
      faedah: freezed == faedah
          ? _value.faedah
          : faedah // ignore: cast_nullable_to_non_nullable
              as String?,
      reference: freezed == reference
          ? _value.reference
          : reference // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DhikrImpl implements _Dhikr {
  const _$DhikrImpl(
      {this.title,
      required this.arabic,
      this.transliteration,
      required this.translation,
      required this.count,
      this.faedah,
      this.reference});

  factory _$DhikrImpl.fromJson(Map<String, dynamic> json) =>
      _$$DhikrImplFromJson(json);

  @override
  final String? title;
  @override
  final String arabic;
  @override
  final String? transliteration;
  @override
  final String translation;
  @override
  final String count;
  @override
  final String? faedah;
  @override
  final String? reference;

  @override
  String toString() {
    return 'Dhikr(title: $title, arabic: $arabic, transliteration: $transliteration, translation: $translation, count: $count, faedah: $faedah, reference: $reference)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DhikrImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.arabic, arabic) || other.arabic == arabic) &&
            (identical(other.transliteration, transliteration) ||
                other.transliteration == transliteration) &&
            (identical(other.translation, translation) ||
                other.translation == translation) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.faedah, faedah) || other.faedah == faedah) &&
            (identical(other.reference, reference) ||
                other.reference == reference));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, arabic, transliteration,
      translation, count, faedah, reference);

  /// Create a copy of Dhikr
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DhikrImplCopyWith<_$DhikrImpl> get copyWith =>
      __$$DhikrImplCopyWithImpl<_$DhikrImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DhikrImplToJson(
      this,
    );
  }
}

abstract class _Dhikr implements Dhikr {
  const factory _Dhikr(
      {final String? title,
      required final String arabic,
      final String? transliteration,
      required final String translation,
      required final String count,
      final String? faedah,
      final String? reference}) = _$DhikrImpl;

  factory _Dhikr.fromJson(Map<String, dynamic> json) = _$DhikrImpl.fromJson;

  @override
  String? get title;
  @override
  String get arabic;
  @override
  String? get transliteration;
  @override
  String get translation;
  @override
  String get count;
  @override
  String? get faedah;
  @override
  String? get reference;

  /// Create a copy of Dhikr
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DhikrImplCopyWith<_$DhikrImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
