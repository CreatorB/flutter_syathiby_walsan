// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_spending.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestSpending _$RequestSpendingFromJson(Map<String, dynamic> json) {
  return _RequestSpending.fromJson(json);
}

/// @nodoc
mixin _$RequestSpending {
  String? get key => throw _privateConstructorUsedError;
  double? get amount => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get img => throw _privateConstructorUsedError;
  List<BarangSpending>? get spending => throw _privateConstructorUsedError;

  /// Serializes this RequestSpending to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestSpending
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestSpendingCopyWith<RequestSpending> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestSpendingCopyWith<$Res> {
  factory $RequestSpendingCopyWith(
          RequestSpending value, $Res Function(RequestSpending) then) =
      _$RequestSpendingCopyWithImpl<$Res, RequestSpending>;
  @useResult
  $Res call(
      {String? key,
      double? amount,
      String? date,
      String? img,
      List<BarangSpending>? spending});
}

/// @nodoc
class _$RequestSpendingCopyWithImpl<$Res, $Val extends RequestSpending>
    implements $RequestSpendingCopyWith<$Res> {
  _$RequestSpendingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestSpending
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? amount = freezed,
    Object? date = freezed,
    Object? img = freezed,
    Object? spending = freezed,
  }) {
    return _then(_value.copyWith(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      spending: freezed == spending
          ? _value.spending
          : spending // ignore: cast_nullable_to_non_nullable
              as List<BarangSpending>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestSpendingImplCopyWith<$Res>
    implements $RequestSpendingCopyWith<$Res> {
  factory _$$RequestSpendingImplCopyWith(_$RequestSpendingImpl value,
          $Res Function(_$RequestSpendingImpl) then) =
      __$$RequestSpendingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? key,
      double? amount,
      String? date,
      String? img,
      List<BarangSpending>? spending});
}

/// @nodoc
class __$$RequestSpendingImplCopyWithImpl<$Res>
    extends _$RequestSpendingCopyWithImpl<$Res, _$RequestSpendingImpl>
    implements _$$RequestSpendingImplCopyWith<$Res> {
  __$$RequestSpendingImplCopyWithImpl(
      _$RequestSpendingImpl _value, $Res Function(_$RequestSpendingImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestSpending
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? amount = freezed,
    Object? date = freezed,
    Object? img = freezed,
    Object? spending = freezed,
  }) {
    return _then(_$RequestSpendingImpl(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      spending: freezed == spending
          ? _value._spending
          : spending // ignore: cast_nullable_to_non_nullable
              as List<BarangSpending>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false, explicitToJson: true)
class _$RequestSpendingImpl implements _RequestSpending {
  const _$RequestSpendingImpl(
      {this.key,
      this.amount,
      this.date,
      this.img,
      final List<BarangSpending>? spending})
      : _spending = spending;

  factory _$RequestSpendingImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestSpendingImplFromJson(json);

  @override
  final String? key;
  @override
  final double? amount;
  @override
  final String? date;
  @override
  final String? img;
  final List<BarangSpending>? _spending;
  @override
  List<BarangSpending>? get spending {
    final value = _spending;
    if (value == null) return null;
    if (_spending is EqualUnmodifiableListView) return _spending;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RequestSpending(key: $key, amount: $amount, date: $date, img: $img, spending: $spending)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestSpendingImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.img, img) || other.img == img) &&
            const DeepCollectionEquality().equals(other._spending, _spending));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, amount, date, img,
      const DeepCollectionEquality().hash(_spending));

  /// Create a copy of RequestSpending
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestSpendingImplCopyWith<_$RequestSpendingImpl> get copyWith =>
      __$$RequestSpendingImplCopyWithImpl<_$RequestSpendingImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestSpendingImplToJson(
      this,
    );
  }
}

abstract class _RequestSpending implements RequestSpending {
  const factory _RequestSpending(
      {final String? key,
      final double? amount,
      final String? date,
      final String? img,
      final List<BarangSpending>? spending}) = _$RequestSpendingImpl;

  factory _RequestSpending.fromJson(Map<String, dynamic> json) =
      _$RequestSpendingImpl.fromJson;

  @override
  String? get key;
  @override
  double? get amount;
  @override
  String? get date;
  @override
  String? get img;
  @override
  List<BarangSpending>? get spending;

  /// Create a copy of RequestSpending
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestSpendingImplCopyWith<_$RequestSpendingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BarangSpending _$BarangSpendingFromJson(Map<String, dynamic> json) {
  return _BarangSpending.fromJson(json);
}

/// @nodoc
mixin _$BarangSpending {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_spending')
  String? get nameSpending => throw _privateConstructorUsedError;
  num? get nominal => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  /// Serializes this BarangSpending to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BarangSpending
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BarangSpendingCopyWith<BarangSpending> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BarangSpendingCopyWith<$Res> {
  factory $BarangSpendingCopyWith(
          BarangSpending value, $Res Function(BarangSpending) then) =
      _$BarangSpendingCopyWithImpl<$Res, BarangSpending>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'name_spending') String? nameSpending,
      num? nominal,
      String? note});
}

/// @nodoc
class _$BarangSpendingCopyWithImpl<$Res, $Val extends BarangSpending>
    implements $BarangSpendingCopyWith<$Res> {
  _$BarangSpendingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BarangSpending
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nameSpending = freezed,
    Object? nominal = freezed,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      nameSpending: freezed == nameSpending
          ? _value.nameSpending
          : nameSpending // ignore: cast_nullable_to_non_nullable
              as String?,
      nominal: freezed == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as num?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BarangSpendingImplCopyWith<$Res>
    implements $BarangSpendingCopyWith<$Res> {
  factory _$$BarangSpendingImplCopyWith(_$BarangSpendingImpl value,
          $Res Function(_$BarangSpendingImpl) then) =
      __$$BarangSpendingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'name_spending') String? nameSpending,
      num? nominal,
      String? note});
}

/// @nodoc
class __$$BarangSpendingImplCopyWithImpl<$Res>
    extends _$BarangSpendingCopyWithImpl<$Res, _$BarangSpendingImpl>
    implements _$$BarangSpendingImplCopyWith<$Res> {
  __$$BarangSpendingImplCopyWithImpl(
      _$BarangSpendingImpl _value, $Res Function(_$BarangSpendingImpl) _then)
      : super(_value, _then);

  /// Create a copy of BarangSpending
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? nameSpending = freezed,
    Object? nominal = freezed,
    Object? note = freezed,
  }) {
    return _then(_$BarangSpendingImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      nameSpending: freezed == nameSpending
          ? _value.nameSpending
          : nameSpending // ignore: cast_nullable_to_non_nullable
              as String?,
      nominal: freezed == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as num?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BarangSpendingImpl implements _BarangSpending {
  const _$BarangSpendingImpl(
      {this.id,
      @JsonKey(name: 'name_spending') this.nameSpending,
      this.nominal,
      this.note});

  factory _$BarangSpendingImpl.fromJson(Map<String, dynamic> json) =>
      _$$BarangSpendingImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'name_spending')
  final String? nameSpending;
  @override
  final num? nominal;
  @override
  final String? note;

  @override
  String toString() {
    return 'BarangSpending(id: $id, nameSpending: $nameSpending, nominal: $nominal, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BarangSpendingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nameSpending, nameSpending) ||
                other.nameSpending == nameSpending) &&
            (identical(other.nominal, nominal) || other.nominal == nominal) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, nameSpending, nominal, note);

  /// Create a copy of BarangSpending
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BarangSpendingImplCopyWith<_$BarangSpendingImpl> get copyWith =>
      __$$BarangSpendingImplCopyWithImpl<_$BarangSpendingImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BarangSpendingImplToJson(
      this,
    );
  }
}

abstract class _BarangSpending implements BarangSpending {
  const factory _BarangSpending(
      {final String? id,
      @JsonKey(name: 'name_spending') final String? nameSpending,
      final num? nominal,
      final String? note}) = _$BarangSpendingImpl;

  factory _BarangSpending.fromJson(Map<String, dynamic> json) =
      _$BarangSpendingImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'name_spending')
  String? get nameSpending;
  @override
  num? get nominal;
  @override
  String? get note;

  /// Create a copy of BarangSpending
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BarangSpendingImplCopyWith<_$BarangSpendingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
