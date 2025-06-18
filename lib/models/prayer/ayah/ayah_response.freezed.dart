// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ayah_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AyahResponse _$AyahResponseFromJson(Map<String, dynamic> json) {
  return _AyahResponse.fromJson(json);
}

/// @nodoc
mixin _$AyahResponse {
  List<Ayah> get result => throw _privateConstructorUsedError;

  /// Serializes this AyahResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AyahResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AyahResponseCopyWith<AyahResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AyahResponseCopyWith<$Res> {
  factory $AyahResponseCopyWith(
          AyahResponse value, $Res Function(AyahResponse) then) =
      _$AyahResponseCopyWithImpl<$Res, AyahResponse>;
  @useResult
  $Res call({List<Ayah> result});
}

/// @nodoc
class _$AyahResponseCopyWithImpl<$Res, $Val extends AyahResponse>
    implements $AyahResponseCopyWith<$Res> {
  _$AyahResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AyahResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Ayah>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AyahResponseImplCopyWith<$Res>
    implements $AyahResponseCopyWith<$Res> {
  factory _$$AyahResponseImplCopyWith(
          _$AyahResponseImpl value, $Res Function(_$AyahResponseImpl) then) =
      __$$AyahResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Ayah> result});
}

/// @nodoc
class __$$AyahResponseImplCopyWithImpl<$Res>
    extends _$AyahResponseCopyWithImpl<$Res, _$AyahResponseImpl>
    implements _$$AyahResponseImplCopyWith<$Res> {
  __$$AyahResponseImplCopyWithImpl(
      _$AyahResponseImpl _value, $Res Function(_$AyahResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AyahResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$AyahResponseImpl(
      result: null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<Ayah>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AyahResponseImpl implements _AyahResponse {
  const _$AyahResponseImpl({required final List<Ayah> result})
      : _result = result;

  factory _$AyahResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AyahResponseImplFromJson(json);

  final List<Ayah> _result;
  @override
  List<Ayah> get result {
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString() {
    return 'AyahResponse(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AyahResponseImpl &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_result));

  /// Create a copy of AyahResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AyahResponseImplCopyWith<_$AyahResponseImpl> get copyWith =>
      __$$AyahResponseImplCopyWithImpl<_$AyahResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AyahResponseImplToJson(
      this,
    );
  }
}

abstract class _AyahResponse implements AyahResponse {
  const factory _AyahResponse({required final List<Ayah> result}) =
      _$AyahResponseImpl;

  factory _AyahResponse.fromJson(Map<String, dynamic> json) =
      _$AyahResponseImpl.fromJson;

  @override
  List<Ayah> get result;

  /// Create a copy of AyahResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AyahResponseImplCopyWith<_$AyahResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Ayah _$AyahFromJson(Map<String, dynamic> json) {
  return _Ayah.fromJson(json);
}

/// @nodoc
mixin _$Ayah {
  String get id => throw _privateConstructorUsedError;
  String get sura => throw _privateConstructorUsedError;
  String get aya => throw _privateConstructorUsedError;
  @JsonKey(name: 'arabic_text')
  String get arabicText => throw _privateConstructorUsedError;
  String get translation => throw _privateConstructorUsedError;
  String get footnotes => throw _privateConstructorUsedError;

  /// Serializes this Ayah to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Ayah
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AyahCopyWith<Ayah> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AyahCopyWith<$Res> {
  factory $AyahCopyWith(Ayah value, $Res Function(Ayah) then) =
      _$AyahCopyWithImpl<$Res, Ayah>;
  @useResult
  $Res call(
      {String id,
      String sura,
      String aya,
      @JsonKey(name: 'arabic_text') String arabicText,
      String translation,
      String footnotes});
}

/// @nodoc
class _$AyahCopyWithImpl<$Res, $Val extends Ayah>
    implements $AyahCopyWith<$Res> {
  _$AyahCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Ayah
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sura = null,
    Object? aya = null,
    Object? arabicText = null,
    Object? translation = null,
    Object? footnotes = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sura: null == sura
          ? _value.sura
          : sura // ignore: cast_nullable_to_non_nullable
              as String,
      aya: null == aya
          ? _value.aya
          : aya // ignore: cast_nullable_to_non_nullable
              as String,
      arabicText: null == arabicText
          ? _value.arabicText
          : arabicText // ignore: cast_nullable_to_non_nullable
              as String,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as String,
      footnotes: null == footnotes
          ? _value.footnotes
          : footnotes // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AyahImplCopyWith<$Res> implements $AyahCopyWith<$Res> {
  factory _$$AyahImplCopyWith(
          _$AyahImpl value, $Res Function(_$AyahImpl) then) =
      __$$AyahImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String sura,
      String aya,
      @JsonKey(name: 'arabic_text') String arabicText,
      String translation,
      String footnotes});
}

/// @nodoc
class __$$AyahImplCopyWithImpl<$Res>
    extends _$AyahCopyWithImpl<$Res, _$AyahImpl>
    implements _$$AyahImplCopyWith<$Res> {
  __$$AyahImplCopyWithImpl(_$AyahImpl _value, $Res Function(_$AyahImpl) _then)
      : super(_value, _then);

  /// Create a copy of Ayah
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sura = null,
    Object? aya = null,
    Object? arabicText = null,
    Object? translation = null,
    Object? footnotes = null,
  }) {
    return _then(_$AyahImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sura: null == sura
          ? _value.sura
          : sura // ignore: cast_nullable_to_non_nullable
              as String,
      aya: null == aya
          ? _value.aya
          : aya // ignore: cast_nullable_to_non_nullable
              as String,
      arabicText: null == arabicText
          ? _value.arabicText
          : arabicText // ignore: cast_nullable_to_non_nullable
              as String,
      translation: null == translation
          ? _value.translation
          : translation // ignore: cast_nullable_to_non_nullable
              as String,
      footnotes: null == footnotes
          ? _value.footnotes
          : footnotes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AyahImpl implements _Ayah {
  const _$AyahImpl(
      {required this.id,
      required this.sura,
      required this.aya,
      @JsonKey(name: 'arabic_text') required this.arabicText,
      required this.translation,
      required this.footnotes});

  factory _$AyahImpl.fromJson(Map<String, dynamic> json) =>
      _$$AyahImplFromJson(json);

  @override
  final String id;
  @override
  final String sura;
  @override
  final String aya;
  @override
  @JsonKey(name: 'arabic_text')
  final String arabicText;
  @override
  final String translation;
  @override
  final String footnotes;

  @override
  String toString() {
    return 'Ayah(id: $id, sura: $sura, aya: $aya, arabicText: $arabicText, translation: $translation, footnotes: $footnotes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AyahImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sura, sura) || other.sura == sura) &&
            (identical(other.aya, aya) || other.aya == aya) &&
            (identical(other.arabicText, arabicText) ||
                other.arabicText == arabicText) &&
            (identical(other.translation, translation) ||
                other.translation == translation) &&
            (identical(other.footnotes, footnotes) ||
                other.footnotes == footnotes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, sura, aya, arabicText, translation, footnotes);

  /// Create a copy of Ayah
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AyahImplCopyWith<_$AyahImpl> get copyWith =>
      __$$AyahImplCopyWithImpl<_$AyahImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AyahImplToJson(
      this,
    );
  }
}

abstract class _Ayah implements Ayah {
  const factory _Ayah(
      {required final String id,
      required final String sura,
      required final String aya,
      @JsonKey(name: 'arabic_text') required final String arabicText,
      required final String translation,
      required final String footnotes}) = _$AyahImpl;

  factory _Ayah.fromJson(Map<String, dynamic> json) = _$AyahImpl.fromJson;

  @override
  String get id;
  @override
  String get sura;
  @override
  String get aya;
  @override
  @JsonKey(name: 'arabic_text')
  String get arabicText;
  @override
  String get translation;
  @override
  String get footnotes;

  /// Create a copy of Ayah
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AyahImplCopyWith<_$AyahImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
