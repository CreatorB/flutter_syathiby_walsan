// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hadith_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HadithDetailResponse _$HadithDetailResponseFromJson(Map<String, dynamic> json) {
  return _HadithDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$HadithDetailResponse {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  HadithDetailResponseData get data => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;

  /// Serializes this HadithDetailResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HadithDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HadithDetailResponseCopyWith<HadithDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HadithDetailResponseCopyWith<$Res> {
  factory $HadithDetailResponseCopyWith(HadithDetailResponse value,
          $Res Function(HadithDetailResponse) then) =
      _$HadithDetailResponseCopyWithImpl<$Res, HadithDetailResponse>;
  @useResult
  $Res call(
      {int code, String message, HadithDetailResponseData data, bool error});

  $HadithDetailResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class _$HadithDetailResponseCopyWithImpl<$Res,
        $Val extends HadithDetailResponse>
    implements $HadithDetailResponseCopyWith<$Res> {
  _$HadithDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HadithDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HadithDetailResponseData,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of HadithDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HadithDetailResponseDataCopyWith<$Res> get data {
    return $HadithDetailResponseDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HadithDetailResponseImplCopyWith<$Res>
    implements $HadithDetailResponseCopyWith<$Res> {
  factory _$$HadithDetailResponseImplCopyWith(_$HadithDetailResponseImpl value,
          $Res Function(_$HadithDetailResponseImpl) then) =
      __$$HadithDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int code, String message, HadithDetailResponseData data, bool error});

  @override
  $HadithDetailResponseDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$HadithDetailResponseImplCopyWithImpl<$Res>
    extends _$HadithDetailResponseCopyWithImpl<$Res, _$HadithDetailResponseImpl>
    implements _$$HadithDetailResponseImplCopyWith<$Res> {
  __$$HadithDetailResponseImplCopyWithImpl(_$HadithDetailResponseImpl _value,
      $Res Function(_$HadithDetailResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of HadithDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = null,
    Object? error = null,
  }) {
    return _then(_$HadithDetailResponseImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as HadithDetailResponseData,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HadithDetailResponseImpl implements _HadithDetailResponse {
  const _$HadithDetailResponseImpl(
      {required this.code,
      required this.message,
      required this.data,
      required this.error});

  factory _$HadithDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HadithDetailResponseImplFromJson(json);

  @override
  final int code;
  @override
  final String message;
  @override
  final HadithDetailResponseData data;
  @override
  final bool error;

  @override
  String toString() {
    return 'HadithDetailResponse(code: $code, message: $message, data: $data, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HadithDetailResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, data, error);

  /// Create a copy of HadithDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HadithDetailResponseImplCopyWith<_$HadithDetailResponseImpl>
      get copyWith =>
          __$$HadithDetailResponseImplCopyWithImpl<_$HadithDetailResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HadithDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _HadithDetailResponse implements HadithDetailResponse {
  const factory _HadithDetailResponse(
      {required final int code,
      required final String message,
      required final HadithDetailResponseData data,
      required final bool error}) = _$HadithDetailResponseImpl;

  factory _HadithDetailResponse.fromJson(Map<String, dynamic> json) =
      _$HadithDetailResponseImpl.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  HadithDetailResponseData get data;
  @override
  bool get error;

  /// Create a copy of HadithDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HadithDetailResponseImplCopyWith<_$HadithDetailResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HadithDetailResponseData _$HadithDetailResponseDataFromJson(
    Map<String, dynamic> json) {
  return _HadithDetailResponseData.fromJson(json);
}

/// @nodoc
mixin _$HadithDetailResponseData {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  int get available => throw _privateConstructorUsedError;
  Hadith get contents => throw _privateConstructorUsedError;

  /// Serializes this HadithDetailResponseData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HadithDetailResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HadithDetailResponseDataCopyWith<HadithDetailResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HadithDetailResponseDataCopyWith<$Res> {
  factory $HadithDetailResponseDataCopyWith(HadithDetailResponseData value,
          $Res Function(HadithDetailResponseData) then) =
      _$HadithDetailResponseDataCopyWithImpl<$Res, HadithDetailResponseData>;
  @useResult
  $Res call({String name, String id, int available, Hadith contents});

  $HadithCopyWith<$Res> get contents;
}

/// @nodoc
class _$HadithDetailResponseDataCopyWithImpl<$Res,
        $Val extends HadithDetailResponseData>
    implements $HadithDetailResponseDataCopyWith<$Res> {
  _$HadithDetailResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HadithDetailResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? available = null,
    Object? contents = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int,
      contents: null == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as Hadith,
    ) as $Val);
  }

  /// Create a copy of HadithDetailResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HadithCopyWith<$Res> get contents {
    return $HadithCopyWith<$Res>(_value.contents, (value) {
      return _then(_value.copyWith(contents: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HadithDetailResponseDataImplCopyWith<$Res>
    implements $HadithDetailResponseDataCopyWith<$Res> {
  factory _$$HadithDetailResponseDataImplCopyWith(
          _$HadithDetailResponseDataImpl value,
          $Res Function(_$HadithDetailResponseDataImpl) then) =
      __$$HadithDetailResponseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String id, int available, Hadith contents});

  @override
  $HadithCopyWith<$Res> get contents;
}

/// @nodoc
class __$$HadithDetailResponseDataImplCopyWithImpl<$Res>
    extends _$HadithDetailResponseDataCopyWithImpl<$Res,
        _$HadithDetailResponseDataImpl>
    implements _$$HadithDetailResponseDataImplCopyWith<$Res> {
  __$$HadithDetailResponseDataImplCopyWithImpl(
      _$HadithDetailResponseDataImpl _value,
      $Res Function(_$HadithDetailResponseDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of HadithDetailResponseData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? available = null,
    Object? contents = null,
  }) {
    return _then(_$HadithDetailResponseDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      available: null == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as int,
      contents: null == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as Hadith,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HadithDetailResponseDataImpl implements _HadithDetailResponseData {
  const _$HadithDetailResponseDataImpl(
      {required this.name,
      required this.id,
      required this.available,
      required this.contents});

  factory _$HadithDetailResponseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$HadithDetailResponseDataImplFromJson(json);

  @override
  final String name;
  @override
  final String id;
  @override
  final int available;
  @override
  final Hadith contents;

  @override
  String toString() {
    return 'HadithDetailResponseData(name: $name, id: $id, available: $available, contents: $contents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HadithDetailResponseDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.contents, contents) ||
                other.contents == contents));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, id, available, contents);

  /// Create a copy of HadithDetailResponseData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HadithDetailResponseDataImplCopyWith<_$HadithDetailResponseDataImpl>
      get copyWith => __$$HadithDetailResponseDataImplCopyWithImpl<
          _$HadithDetailResponseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HadithDetailResponseDataImplToJson(
      this,
    );
  }
}

abstract class _HadithDetailResponseData implements HadithDetailResponseData {
  const factory _HadithDetailResponseData(
      {required final String name,
      required final String id,
      required final int available,
      required final Hadith contents}) = _$HadithDetailResponseDataImpl;

  factory _HadithDetailResponseData.fromJson(Map<String, dynamic> json) =
      _$HadithDetailResponseDataImpl.fromJson;

  @override
  String get name;
  @override
  String get id;
  @override
  int get available;
  @override
  Hadith get contents;

  /// Create a copy of HadithDetailResponseData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HadithDetailResponseDataImplCopyWith<_$HadithDetailResponseDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
