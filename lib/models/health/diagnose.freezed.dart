// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diagnose.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Diagnosa _$DiagnosaFromJson(Map<String, dynamic> json) {
  return _Diagnosa.fromJson(json);
}

/// @nodoc
mixin _$Diagnosa {
  @JsonKey(name: 'id_diagnosa')
  String? get id_diagnosa => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_diagnosa')
  String? get name_diagnosa => throw _privateConstructorUsedError;

  /// Serializes this Diagnosa to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Diagnosa
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiagnosaCopyWith<Diagnosa> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiagnosaCopyWith<$Res> {
  factory $DiagnosaCopyWith(Diagnosa value, $Res Function(Diagnosa) then) =
      _$DiagnosaCopyWithImpl<$Res, Diagnosa>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_diagnosa') String? id_diagnosa,
      @JsonKey(name: 'name_diagnosa') String? name_diagnosa});
}

/// @nodoc
class _$DiagnosaCopyWithImpl<$Res, $Val extends Diagnosa>
    implements $DiagnosaCopyWith<$Res> {
  _$DiagnosaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Diagnosa
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id_diagnosa = freezed,
    Object? name_diagnosa = freezed,
  }) {
    return _then(_value.copyWith(
      id_diagnosa: freezed == id_diagnosa
          ? _value.id_diagnosa
          : id_diagnosa // ignore: cast_nullable_to_non_nullable
              as String?,
      name_diagnosa: freezed == name_diagnosa
          ? _value.name_diagnosa
          : name_diagnosa // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiagnosaImplCopyWith<$Res>
    implements $DiagnosaCopyWith<$Res> {
  factory _$$DiagnosaImplCopyWith(
          _$DiagnosaImpl value, $Res Function(_$DiagnosaImpl) then) =
      __$$DiagnosaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_diagnosa') String? id_diagnosa,
      @JsonKey(name: 'name_diagnosa') String? name_diagnosa});
}

/// @nodoc
class __$$DiagnosaImplCopyWithImpl<$Res>
    extends _$DiagnosaCopyWithImpl<$Res, _$DiagnosaImpl>
    implements _$$DiagnosaImplCopyWith<$Res> {
  __$$DiagnosaImplCopyWithImpl(
      _$DiagnosaImpl _value, $Res Function(_$DiagnosaImpl) _then)
      : super(_value, _then);

  /// Create a copy of Diagnosa
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id_diagnosa = freezed,
    Object? name_diagnosa = freezed,
  }) {
    return _then(_$DiagnosaImpl(
      id_diagnosa: freezed == id_diagnosa
          ? _value.id_diagnosa
          : id_diagnosa // ignore: cast_nullable_to_non_nullable
              as String?,
      name_diagnosa: freezed == name_diagnosa
          ? _value.name_diagnosa
          : name_diagnosa // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiagnosaImpl implements _Diagnosa {
  const _$DiagnosaImpl(
      {@JsonKey(name: 'id_diagnosa') this.id_diagnosa,
      @JsonKey(name: 'name_diagnosa') this.name_diagnosa});

  factory _$DiagnosaImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiagnosaImplFromJson(json);

  @override
  @JsonKey(name: 'id_diagnosa')
  final String? id_diagnosa;
  @override
  @JsonKey(name: 'name_diagnosa')
  final String? name_diagnosa;

  @override
  String toString() {
    return 'Diagnosa(id_diagnosa: $id_diagnosa, name_diagnosa: $name_diagnosa)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiagnosaImpl &&
            (identical(other.id_diagnosa, id_diagnosa) ||
                other.id_diagnosa == id_diagnosa) &&
            (identical(other.name_diagnosa, name_diagnosa) ||
                other.name_diagnosa == name_diagnosa));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id_diagnosa, name_diagnosa);

  /// Create a copy of Diagnosa
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiagnosaImplCopyWith<_$DiagnosaImpl> get copyWith =>
      __$$DiagnosaImplCopyWithImpl<_$DiagnosaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiagnosaImplToJson(
      this,
    );
  }
}

abstract class _Diagnosa implements Diagnosa {
  const factory _Diagnosa(
          {@JsonKey(name: 'id_diagnosa') final String? id_diagnosa,
          @JsonKey(name: 'name_diagnosa') final String? name_diagnosa}) =
      _$DiagnosaImpl;

  factory _Diagnosa.fromJson(Map<String, dynamic> json) =
      _$DiagnosaImpl.fromJson;

  @override
  @JsonKey(name: 'id_diagnosa')
  String? get id_diagnosa;
  @override
  @JsonKey(name: 'name_diagnosa')
  String? get name_diagnosa;

  /// Create a copy of Diagnosa
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiagnosaImplCopyWith<_$DiagnosaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
