// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hadith_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HadithResponse _$HadithResponseFromJson(Map<String, dynamic> json) {
  return _HadithResponse.fromJson(json);
}

/// @nodoc
mixin _$HadithResponse {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  HadithData get data => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;

  /// Serializes this HadithResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HadithResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HadithResponseCopyWith<HadithResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HadithResponseCopyWith<$Res> {
  factory $HadithResponseCopyWith(
          HadithResponse value, $Res Function(HadithResponse) then) =
      _$HadithResponseCopyWithImpl<$Res, HadithResponse>;
  @useResult
  $Res call({int code, String message, HadithData data, bool error});

  $HadithDataCopyWith<$Res> get data;
}

/// @nodoc
class _$HadithResponseCopyWithImpl<$Res, $Val extends HadithResponse>
    implements $HadithResponseCopyWith<$Res> {
  _$HadithResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HadithResponse
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
              as HadithData,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of HadithResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HadithDataCopyWith<$Res> get data {
    return $HadithDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HadithResponseImplCopyWith<$Res>
    implements $HadithResponseCopyWith<$Res> {
  factory _$$HadithResponseImplCopyWith(_$HadithResponseImpl value,
          $Res Function(_$HadithResponseImpl) then) =
      __$$HadithResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int code, String message, HadithData data, bool error});

  @override
  $HadithDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$HadithResponseImplCopyWithImpl<$Res>
    extends _$HadithResponseCopyWithImpl<$Res, _$HadithResponseImpl>
    implements _$$HadithResponseImplCopyWith<$Res> {
  __$$HadithResponseImplCopyWithImpl(
      _$HadithResponseImpl _value, $Res Function(_$HadithResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of HadithResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = null,
    Object? error = null,
  }) {
    return _then(_$HadithResponseImpl(
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
              as HadithData,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HadithResponseImpl implements _HadithResponse {
  const _$HadithResponseImpl(
      {required this.code,
      required this.message,
      required this.data,
      required this.error});

  factory _$HadithResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HadithResponseImplFromJson(json);

  @override
  final int code;
  @override
  final String message;
  @override
  final HadithData data;
  @override
  final bool error;

  @override
  String toString() {
    return 'HadithResponse(code: $code, message: $message, data: $data, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HadithResponseImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, data, error);

  /// Create a copy of HadithResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HadithResponseImplCopyWith<_$HadithResponseImpl> get copyWith =>
      __$$HadithResponseImplCopyWithImpl<_$HadithResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HadithResponseImplToJson(
      this,
    );
  }
}

abstract class _HadithResponse implements HadithResponse {
  const factory _HadithResponse(
      {required final int code,
      required final String message,
      required final HadithData data,
      required final bool error}) = _$HadithResponseImpl;

  factory _HadithResponse.fromJson(Map<String, dynamic> json) =
      _$HadithResponseImpl.fromJson;

  @override
  int get code;
  @override
  String get message;
  @override
  HadithData get data;
  @override
  bool get error;

  /// Create a copy of HadithResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HadithResponseImplCopyWith<_$HadithResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HadithData _$HadithDataFromJson(Map<String, dynamic> json) {
  return _HadithData.fromJson(json);
}

/// @nodoc
mixin _$HadithData {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  int get available => throw _privateConstructorUsedError;
  int get requested => throw _privateConstructorUsedError;
  List<Hadith> get hadiths => throw _privateConstructorUsedError;

  /// Serializes this HadithData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HadithData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HadithDataCopyWith<HadithData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HadithDataCopyWith<$Res> {
  factory $HadithDataCopyWith(
          HadithData value, $Res Function(HadithData) then) =
      _$HadithDataCopyWithImpl<$Res, HadithData>;
  @useResult
  $Res call(
      {String name,
      String id,
      int available,
      int requested,
      List<Hadith> hadiths});
}

/// @nodoc
class _$HadithDataCopyWithImpl<$Res, $Val extends HadithData>
    implements $HadithDataCopyWith<$Res> {
  _$HadithDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HadithData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? available = null,
    Object? requested = null,
    Object? hadiths = null,
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
      requested: null == requested
          ? _value.requested
          : requested // ignore: cast_nullable_to_non_nullable
              as int,
      hadiths: null == hadiths
          ? _value.hadiths
          : hadiths // ignore: cast_nullable_to_non_nullable
              as List<Hadith>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HadithDataImplCopyWith<$Res>
    implements $HadithDataCopyWith<$Res> {
  factory _$$HadithDataImplCopyWith(
          _$HadithDataImpl value, $Res Function(_$HadithDataImpl) then) =
      __$$HadithDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String id,
      int available,
      int requested,
      List<Hadith> hadiths});
}

/// @nodoc
class __$$HadithDataImplCopyWithImpl<$Res>
    extends _$HadithDataCopyWithImpl<$Res, _$HadithDataImpl>
    implements _$$HadithDataImplCopyWith<$Res> {
  __$$HadithDataImplCopyWithImpl(
      _$HadithDataImpl _value, $Res Function(_$HadithDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of HadithData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? available = null,
    Object? requested = null,
    Object? hadiths = null,
  }) {
    return _then(_$HadithDataImpl(
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
      requested: null == requested
          ? _value.requested
          : requested // ignore: cast_nullable_to_non_nullable
              as int,
      hadiths: null == hadiths
          ? _value._hadiths
          : hadiths // ignore: cast_nullable_to_non_nullable
              as List<Hadith>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HadithDataImpl implements _HadithData {
  const _$HadithDataImpl(
      {required this.name,
      required this.id,
      required this.available,
      required this.requested,
      required final List<Hadith> hadiths})
      : _hadiths = hadiths;

  factory _$HadithDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$HadithDataImplFromJson(json);

  @override
  final String name;
  @override
  final String id;
  @override
  final int available;
  @override
  final int requested;
  final List<Hadith> _hadiths;
  @override
  List<Hadith> get hadiths {
    if (_hadiths is EqualUnmodifiableListView) return _hadiths;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hadiths);
  }

  @override
  String toString() {
    return 'HadithData(name: $name, id: $id, available: $available, requested: $requested, hadiths: $hadiths)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HadithDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.available, available) ||
                other.available == available) &&
            (identical(other.requested, requested) ||
                other.requested == requested) &&
            const DeepCollectionEquality().equals(other._hadiths, _hadiths));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, id, available, requested,
      const DeepCollectionEquality().hash(_hadiths));

  /// Create a copy of HadithData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HadithDataImplCopyWith<_$HadithDataImpl> get copyWith =>
      __$$HadithDataImplCopyWithImpl<_$HadithDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HadithDataImplToJson(
      this,
    );
  }
}

abstract class _HadithData implements HadithData {
  const factory _HadithData(
      {required final String name,
      required final String id,
      required final int available,
      required final int requested,
      required final List<Hadith> hadiths}) = _$HadithDataImpl;

  factory _HadithData.fromJson(Map<String, dynamic> json) =
      _$HadithDataImpl.fromJson;

  @override
  String get name;
  @override
  String get id;
  @override
  int get available;
  @override
  int get requested;
  @override
  List<Hadith> get hadiths;

  /// Create a copy of HadithData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HadithDataImplCopyWith<_$HadithDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Hadith _$HadithFromJson(Map<String, dynamic> json) {
  return _Hadith.fromJson(json);
}

/// @nodoc
mixin _$Hadith {
  int get number => throw _privateConstructorUsedError;
  String get arab => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;

  /// Serializes this Hadith to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Hadith
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HadithCopyWith<Hadith> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HadithCopyWith<$Res> {
  factory $HadithCopyWith(Hadith value, $Res Function(Hadith) then) =
      _$HadithCopyWithImpl<$Res, Hadith>;
  @useResult
  $Res call({int number, String arab, String id});
}

/// @nodoc
class _$HadithCopyWithImpl<$Res, $Val extends Hadith>
    implements $HadithCopyWith<$Res> {
  _$HadithCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Hadith
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? arab = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      arab: null == arab
          ? _value.arab
          : arab // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HadithImplCopyWith<$Res> implements $HadithCopyWith<$Res> {
  factory _$$HadithImplCopyWith(
          _$HadithImpl value, $Res Function(_$HadithImpl) then) =
      __$$HadithImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int number, String arab, String id});
}

/// @nodoc
class __$$HadithImplCopyWithImpl<$Res>
    extends _$HadithCopyWithImpl<$Res, _$HadithImpl>
    implements _$$HadithImplCopyWith<$Res> {
  __$$HadithImplCopyWithImpl(
      _$HadithImpl _value, $Res Function(_$HadithImpl) _then)
      : super(_value, _then);

  /// Create a copy of Hadith
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? arab = null,
    Object? id = null,
  }) {
    return _then(_$HadithImpl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      arab: null == arab
          ? _value.arab
          : arab // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HadithImpl implements _Hadith {
  const _$HadithImpl(
      {required this.number, required this.arab, required this.id});

  factory _$HadithImpl.fromJson(Map<String, dynamic> json) =>
      _$$HadithImplFromJson(json);

  @override
  final int number;
  @override
  final String arab;
  @override
  final String id;

  @override
  String toString() {
    return 'Hadith(number: $number, arab: $arab, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HadithImpl &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.arab, arab) || other.arab == arab) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, number, arab, id);

  /// Create a copy of Hadith
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HadithImplCopyWith<_$HadithImpl> get copyWith =>
      __$$HadithImplCopyWithImpl<_$HadithImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HadithImplToJson(
      this,
    );
  }
}

abstract class _Hadith implements Hadith {
  const factory _Hadith(
      {required final int number,
      required final String arab,
      required final String id}) = _$HadithImpl;

  factory _Hadith.fromJson(Map<String, dynamic> json) = _$HadithImpl.fromJson;

  @override
  int get number;
  @override
  String get arab;
  @override
  String get id;

  /// Create a copy of Hadith
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HadithImplCopyWith<_$HadithImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
