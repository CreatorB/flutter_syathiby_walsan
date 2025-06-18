// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comission.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Comission _$ComissionFromJson(Map<String, dynamic> json) {
  return _Comission.fromJson(json);
}

/// @nodoc
mixin _$Comission {
  String? get totalorderall => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get totalcommision => throw _privateConstructorUsedError;
  List<DetailCommission>? get detail => throw _privateConstructorUsedError;

  /// Serializes this Comission to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Comission
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ComissionCopyWith<Comission> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComissionCopyWith<$Res> {
  factory $ComissionCopyWith(Comission value, $Res Function(Comission) then) =
      _$ComissionCopyWithImpl<$Res, Comission>;
  @useResult
  $Res call(
      {String? totalorderall,
      String? date,
      String? totalcommision,
      List<DetailCommission>? detail});
}

/// @nodoc
class _$ComissionCopyWithImpl<$Res, $Val extends Comission>
    implements $ComissionCopyWith<$Res> {
  _$ComissionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Comission
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalorderall = freezed,
    Object? date = freezed,
    Object? totalcommision = freezed,
    Object? detail = freezed,
  }) {
    return _then(_value.copyWith(
      totalorderall: freezed == totalorderall
          ? _value.totalorderall
          : totalorderall // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      totalcommision: freezed == totalcommision
          ? _value.totalcommision
          : totalcommision // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as List<DetailCommission>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ComissionImplCopyWith<$Res>
    implements $ComissionCopyWith<$Res> {
  factory _$$ComissionImplCopyWith(
          _$ComissionImpl value, $Res Function(_$ComissionImpl) then) =
      __$$ComissionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? totalorderall,
      String? date,
      String? totalcommision,
      List<DetailCommission>? detail});
}

/// @nodoc
class __$$ComissionImplCopyWithImpl<$Res>
    extends _$ComissionCopyWithImpl<$Res, _$ComissionImpl>
    implements _$$ComissionImplCopyWith<$Res> {
  __$$ComissionImplCopyWithImpl(
      _$ComissionImpl _value, $Res Function(_$ComissionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Comission
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalorderall = freezed,
    Object? date = freezed,
    Object? totalcommision = freezed,
    Object? detail = freezed,
  }) {
    return _then(_$ComissionImpl(
      totalorderall: freezed == totalorderall
          ? _value.totalorderall
          : totalorderall // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      totalcommision: freezed == totalcommision
          ? _value.totalcommision
          : totalcommision // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value._detail
          : detail // ignore: cast_nullable_to_non_nullable
              as List<DetailCommission>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ComissionImpl implements _Comission {
  const _$ComissionImpl(
      {this.totalorderall,
      this.date,
      this.totalcommision,
      final List<DetailCommission>? detail})
      : _detail = detail;

  factory _$ComissionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComissionImplFromJson(json);

  @override
  final String? totalorderall;
  @override
  final String? date;
  @override
  final String? totalcommision;
  final List<DetailCommission>? _detail;
  @override
  List<DetailCommission>? get detail {
    final value = _detail;
    if (value == null) return null;
    if (_detail is EqualUnmodifiableListView) return _detail;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Comission(totalorderall: $totalorderall, date: $date, totalcommision: $totalcommision, detail: $detail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComissionImpl &&
            (identical(other.totalorderall, totalorderall) ||
                other.totalorderall == totalorderall) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.totalcommision, totalcommision) ||
                other.totalcommision == totalcommision) &&
            const DeepCollectionEquality().equals(other._detail, _detail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalorderall, date,
      totalcommision, const DeepCollectionEquality().hash(_detail));

  /// Create a copy of Comission
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ComissionImplCopyWith<_$ComissionImpl> get copyWith =>
      __$$ComissionImplCopyWithImpl<_$ComissionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ComissionImplToJson(
      this,
    );
  }
}

abstract class _Comission implements Comission {
  const factory _Comission(
      {final String? totalorderall,
      final String? date,
      final String? totalcommision,
      final List<DetailCommission>? detail}) = _$ComissionImpl;

  factory _Comission.fromJson(Map<String, dynamic> json) =
      _$ComissionImpl.fromJson;

  @override
  String? get totalorderall;
  @override
  String? get date;
  @override
  String? get totalcommision;
  @override
  List<DetailCommission>? get detail;

  /// Create a copy of Comission
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ComissionImplCopyWith<_$ComissionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
