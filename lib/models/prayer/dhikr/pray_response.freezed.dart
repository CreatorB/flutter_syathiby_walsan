// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pray_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PrayResponse _$PrayResponseFromJson(Map<String, dynamic> json) {
  return _PrayResponse.fromJson(json);
}

/// @nodoc
mixin _$PrayResponse {
  List<Pray> get data => throw _privateConstructorUsedError;

  /// Serializes this PrayResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PrayResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrayResponseCopyWith<PrayResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrayResponseCopyWith<$Res> {
  factory $PrayResponseCopyWith(
          PrayResponse value, $Res Function(PrayResponse) then) =
      _$PrayResponseCopyWithImpl<$Res, PrayResponse>;
  @useResult
  $Res call({List<Pray> data});
}

/// @nodoc
class _$PrayResponseCopyWithImpl<$Res, $Val extends PrayResponse>
    implements $PrayResponseCopyWith<$Res> {
  _$PrayResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrayResponse
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
              as List<Pray>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrayResponseImplCopyWith<$Res>
    implements $PrayResponseCopyWith<$Res> {
  factory _$$PrayResponseImplCopyWith(
          _$PrayResponseImpl value, $Res Function(_$PrayResponseImpl) then) =
      __$$PrayResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Pray> data});
}

/// @nodoc
class __$$PrayResponseImplCopyWithImpl<$Res>
    extends _$PrayResponseCopyWithImpl<$Res, _$PrayResponseImpl>
    implements _$$PrayResponseImplCopyWith<$Res> {
  __$$PrayResponseImplCopyWithImpl(
      _$PrayResponseImpl _value, $Res Function(_$PrayResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrayResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$PrayResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Pray>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PrayResponseImpl implements _PrayResponse {
  const _$PrayResponseImpl({required final List<Pray> data}) : _data = data;

  factory _$PrayResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PrayResponseImplFromJson(json);

  final List<Pray> _data;
  @override
  List<Pray> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'PrayResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrayResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of PrayResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrayResponseImplCopyWith<_$PrayResponseImpl> get copyWith =>
      __$$PrayResponseImplCopyWithImpl<_$PrayResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PrayResponseImplToJson(
      this,
    );
  }
}

abstract class _PrayResponse implements PrayResponse {
  const factory _PrayResponse({required final List<Pray> data}) =
      _$PrayResponseImpl;

  factory _PrayResponse.fromJson(Map<String, dynamic> json) =
      _$PrayResponseImpl.fromJson;

  @override
  List<Pray> get data;

  /// Create a copy of PrayResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrayResponseImplCopyWith<_$PrayResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
