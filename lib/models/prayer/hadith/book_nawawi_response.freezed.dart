// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_nawawi_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookNawawiResponse _$BookNawawiResponseFromJson(Map<String, dynamic> json) {
  return _BookNawawiResponse.fromJson(json);
}

/// @nodoc
mixin _$BookNawawiResponse {
  List<BookNawawi> get data => throw _privateConstructorUsedError;

  /// Serializes this BookNawawiResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookNawawiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookNawawiResponseCopyWith<BookNawawiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookNawawiResponseCopyWith<$Res> {
  factory $BookNawawiResponseCopyWith(
          BookNawawiResponse value, $Res Function(BookNawawiResponse) then) =
      _$BookNawawiResponseCopyWithImpl<$Res, BookNawawiResponse>;
  @useResult
  $Res call({List<BookNawawi> data});
}

/// @nodoc
class _$BookNawawiResponseCopyWithImpl<$Res, $Val extends BookNawawiResponse>
    implements $BookNawawiResponseCopyWith<$Res> {
  _$BookNawawiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookNawawiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BookNawawi>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookNawawiResponseImplCopyWith<$Res>
    implements $BookNawawiResponseCopyWith<$Res> {
  factory _$$BookNawawiResponseImplCopyWith(_$BookNawawiResponseImpl value,
          $Res Function(_$BookNawawiResponseImpl) then) =
      __$$BookNawawiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BookNawawi> data});
}

/// @nodoc
class __$$BookNawawiResponseImplCopyWithImpl<$Res>
    extends _$BookNawawiResponseCopyWithImpl<$Res, _$BookNawawiResponseImpl>
    implements _$$BookNawawiResponseImplCopyWith<$Res> {
  __$$BookNawawiResponseImplCopyWithImpl(_$BookNawawiResponseImpl _value,
      $Res Function(_$BookNawawiResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookNawawiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$BookNawawiResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BookNawawi>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookNawawiResponseImpl implements _BookNawawiResponse {
  const _$BookNawawiResponseImpl({required final List<BookNawawi> data})
      : _data = data;

  factory _$BookNawawiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookNawawiResponseImplFromJson(json);

  final List<BookNawawi> _data;
  @override
  List<BookNawawi> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'BookNawawiResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookNawawiResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of BookNawawiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookNawawiResponseImplCopyWith<_$BookNawawiResponseImpl> get copyWith =>
      __$$BookNawawiResponseImplCopyWithImpl<_$BookNawawiResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookNawawiResponseImplToJson(
      this,
    );
  }
}

abstract class _BookNawawiResponse implements BookNawawiResponse {
  const factory _BookNawawiResponse({required final List<BookNawawi> data}) =
      _$BookNawawiResponseImpl;

  factory _BookNawawiResponse.fromJson(Map<String, dynamic> json) =
      _$BookNawawiResponseImpl.fromJson;

  @override
  List<BookNawawi> get data;

  /// Create a copy of BookNawawiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookNawawiResponseImplCopyWith<_$BookNawawiResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookNawawi _$BookNawawiFromJson(Map<String, dynamic> json) {
  return _BookNawawi.fromJson(json);
}

/// @nodoc
mixin _$BookNawawi {
  String get arab => throw _privateConstructorUsedError;
  String get indo => throw _privateConstructorUsedError;
  String get judul => throw _privateConstructorUsedError;
  String get no => throw _privateConstructorUsedError;

  /// Serializes this BookNawawi to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookNawawi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookNawawiCopyWith<BookNawawi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookNawawiCopyWith<$Res> {
  factory $BookNawawiCopyWith(
          BookNawawi value, $Res Function(BookNawawi) then) =
      _$BookNawawiCopyWithImpl<$Res, BookNawawi>;
  @useResult
  $Res call({String arab, String indo, String judul, String no});
}

/// @nodoc
class _$BookNawawiCopyWithImpl<$Res, $Val extends BookNawawi>
    implements $BookNawawiCopyWith<$Res> {
  _$BookNawawiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookNawawi
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arab = null,
    Object? indo = null,
    Object? judul = null,
    Object? no = null,
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
      no: null == no
          ? _value.no
          : no // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookNawawiImplCopyWith<$Res>
    implements $BookNawawiCopyWith<$Res> {
  factory _$$BookNawawiImplCopyWith(
          _$BookNawawiImpl value, $Res Function(_$BookNawawiImpl) then) =
      __$$BookNawawiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String arab, String indo, String judul, String no});
}

/// @nodoc
class __$$BookNawawiImplCopyWithImpl<$Res>
    extends _$BookNawawiCopyWithImpl<$Res, _$BookNawawiImpl>
    implements _$$BookNawawiImplCopyWith<$Res> {
  __$$BookNawawiImplCopyWithImpl(
      _$BookNawawiImpl _value, $Res Function(_$BookNawawiImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookNawawi
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arab = null,
    Object? indo = null,
    Object? judul = null,
    Object? no = null,
  }) {
    return _then(_$BookNawawiImpl(
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
      no: null == no
          ? _value.no
          : no // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookNawawiImpl implements _BookNawawi {
  const _$BookNawawiImpl(
      {required this.arab,
      required this.indo,
      required this.judul,
      required this.no});

  factory _$BookNawawiImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookNawawiImplFromJson(json);

  @override
  final String arab;
  @override
  final String indo;
  @override
  final String judul;
  @override
  final String no;

  @override
  String toString() {
    return 'BookNawawi(arab: $arab, indo: $indo, judul: $judul, no: $no)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookNawawiImpl &&
            (identical(other.arab, arab) || other.arab == arab) &&
            (identical(other.indo, indo) || other.indo == indo) &&
            (identical(other.judul, judul) || other.judul == judul) &&
            (identical(other.no, no) || other.no == no));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, arab, indo, judul, no);

  /// Create a copy of BookNawawi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookNawawiImplCopyWith<_$BookNawawiImpl> get copyWith =>
      __$$BookNawawiImplCopyWithImpl<_$BookNawawiImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookNawawiImplToJson(
      this,
    );
  }
}

abstract class _BookNawawi implements BookNawawi {
  const factory _BookNawawi(
      {required final String arab,
      required final String indo,
      required final String judul,
      required final String no}) = _$BookNawawiImpl;

  factory _BookNawawi.fromJson(Map<String, dynamic> json) =
      _$BookNawawiImpl.fromJson;

  @override
  String get arab;
  @override
  String get indo;
  @override
  String get judul;
  @override
  String get no;

  /// Create a copy of BookNawawi
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookNawawiImplCopyWith<_$BookNawawiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
