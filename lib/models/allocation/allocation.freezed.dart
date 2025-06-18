// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'allocation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Allocation _$AllocationFromJson(Map<String, dynamic> json) {
  return _Allocation.fromJson(json);
}

/// @nodoc
mixin _$Allocation {
  @JsonKey(name: 'id_alokasi')
  String? get allocationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_alokasi')
  String? get allocationName => throw _privateConstructorUsedError;
  @JsonKey(name: 'norek')
  String? get bankAccount => throw _privateConstructorUsedError;
  @JsonKey(name: 'urlpdf')
  String? get pdf => throw _privateConstructorUsedError;

  /// Serializes this Allocation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Allocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AllocationCopyWith<Allocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllocationCopyWith<$Res> {
  factory $AllocationCopyWith(
          Allocation value, $Res Function(Allocation) then) =
      _$AllocationCopyWithImpl<$Res, Allocation>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_alokasi') String? allocationId,
      @JsonKey(name: 'name_alokasi') String? allocationName,
      @JsonKey(name: 'norek') String? bankAccount,
      @JsonKey(name: 'urlpdf') String? pdf});
}

/// @nodoc
class _$AllocationCopyWithImpl<$Res, $Val extends Allocation>
    implements $AllocationCopyWith<$Res> {
  _$AllocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Allocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allocationId = freezed,
    Object? allocationName = freezed,
    Object? bankAccount = freezed,
    Object? pdf = freezed,
  }) {
    return _then(_value.copyWith(
      allocationId: freezed == allocationId
          ? _value.allocationId
          : allocationId // ignore: cast_nullable_to_non_nullable
              as String?,
      allocationName: freezed == allocationName
          ? _value.allocationName
          : allocationName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankAccount: freezed == bankAccount
          ? _value.bankAccount
          : bankAccount // ignore: cast_nullable_to_non_nullable
              as String?,
      pdf: freezed == pdf
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AllocationImplCopyWith<$Res>
    implements $AllocationCopyWith<$Res> {
  factory _$$AllocationImplCopyWith(
          _$AllocationImpl value, $Res Function(_$AllocationImpl) then) =
      __$$AllocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_alokasi') String? allocationId,
      @JsonKey(name: 'name_alokasi') String? allocationName,
      @JsonKey(name: 'norek') String? bankAccount,
      @JsonKey(name: 'urlpdf') String? pdf});
}

/// @nodoc
class __$$AllocationImplCopyWithImpl<$Res>
    extends _$AllocationCopyWithImpl<$Res, _$AllocationImpl>
    implements _$$AllocationImplCopyWith<$Res> {
  __$$AllocationImplCopyWithImpl(
      _$AllocationImpl _value, $Res Function(_$AllocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Allocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allocationId = freezed,
    Object? allocationName = freezed,
    Object? bankAccount = freezed,
    Object? pdf = freezed,
  }) {
    return _then(_$AllocationImpl(
      allocationId: freezed == allocationId
          ? _value.allocationId
          : allocationId // ignore: cast_nullable_to_non_nullable
              as String?,
      allocationName: freezed == allocationName
          ? _value.allocationName
          : allocationName // ignore: cast_nullable_to_non_nullable
              as String?,
      bankAccount: freezed == bankAccount
          ? _value.bankAccount
          : bankAccount // ignore: cast_nullable_to_non_nullable
              as String?,
      pdf: freezed == pdf
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllocationImpl implements _Allocation {
  const _$AllocationImpl(
      {@JsonKey(name: 'id_alokasi') this.allocationId,
      @JsonKey(name: 'name_alokasi') this.allocationName,
      @JsonKey(name: 'norek') this.bankAccount,
      @JsonKey(name: 'urlpdf') this.pdf});

  factory _$AllocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllocationImplFromJson(json);

  @override
  @JsonKey(name: 'id_alokasi')
  final String? allocationId;
  @override
  @JsonKey(name: 'name_alokasi')
  final String? allocationName;
  @override
  @JsonKey(name: 'norek')
  final String? bankAccount;
  @override
  @JsonKey(name: 'urlpdf')
  final String? pdf;

  @override
  String toString() {
    return 'Allocation(allocationId: $allocationId, allocationName: $allocationName, bankAccount: $bankAccount, pdf: $pdf)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllocationImpl &&
            (identical(other.allocationId, allocationId) ||
                other.allocationId == allocationId) &&
            (identical(other.allocationName, allocationName) ||
                other.allocationName == allocationName) &&
            (identical(other.bankAccount, bankAccount) ||
                other.bankAccount == bankAccount) &&
            (identical(other.pdf, pdf) || other.pdf == pdf));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, allocationId, allocationName, bankAccount, pdf);

  /// Create a copy of Allocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllocationImplCopyWith<_$AllocationImpl> get copyWith =>
      __$$AllocationImplCopyWithImpl<_$AllocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllocationImplToJson(
      this,
    );
  }
}

abstract class _Allocation implements Allocation {
  const factory _Allocation(
      {@JsonKey(name: 'id_alokasi') final String? allocationId,
      @JsonKey(name: 'name_alokasi') final String? allocationName,
      @JsonKey(name: 'norek') final String? bankAccount,
      @JsonKey(name: 'urlpdf') final String? pdf}) = _$AllocationImpl;

  factory _Allocation.fromJson(Map<String, dynamic> json) =
      _$AllocationImpl.fromJson;

  @override
  @JsonKey(name: 'id_alokasi')
  String? get allocationId;
  @override
  @JsonKey(name: 'name_alokasi')
  String? get allocationName;
  @override
  @JsonKey(name: 'norek')
  String? get bankAccount;
  @override
  @JsonKey(name: 'urlpdf')
  String? get pdf;

  /// Create a copy of Allocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllocationImplCopyWith<_$AllocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
