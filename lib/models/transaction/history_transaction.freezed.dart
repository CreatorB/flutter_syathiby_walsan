// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HistoryTransaction _$HistoryTransactionFromJson(Map<String, dynamic> json) {
  return _HistoryTransaction.fromJson(json);
}

/// @nodoc
mixin _$HistoryTransaction {
  dynamic get totalorderall => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalnominal')
  dynamic get totalNominal => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  List<Transaction>? get detail => throw _privateConstructorUsedError;

  /// Serializes this HistoryTransaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HistoryTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HistoryTransactionCopyWith<HistoryTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryTransactionCopyWith<$Res> {
  factory $HistoryTransactionCopyWith(
          HistoryTransaction value, $Res Function(HistoryTransaction) then) =
      _$HistoryTransactionCopyWithImpl<$Res, HistoryTransaction>;
  @useResult
  $Res call(
      {dynamic totalorderall,
      @JsonKey(name: 'totalnominal') dynamic totalNominal,
      String? date,
      List<Transaction>? detail});
}

/// @nodoc
class _$HistoryTransactionCopyWithImpl<$Res, $Val extends HistoryTransaction>
    implements $HistoryTransactionCopyWith<$Res> {
  _$HistoryTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HistoryTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalorderall = freezed,
    Object? totalNominal = freezed,
    Object? date = freezed,
    Object? detail = freezed,
  }) {
    return _then(_value.copyWith(
      totalorderall: freezed == totalorderall
          ? _value.totalorderall
          : totalorderall // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalNominal: freezed == totalNominal
          ? _value.totalNominal
          : totalNominal // ignore: cast_nullable_to_non_nullable
              as dynamic,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as List<Transaction>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoryTransactionImplCopyWith<$Res>
    implements $HistoryTransactionCopyWith<$Res> {
  factory _$$HistoryTransactionImplCopyWith(_$HistoryTransactionImpl value,
          $Res Function(_$HistoryTransactionImpl) then) =
      __$$HistoryTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic totalorderall,
      @JsonKey(name: 'totalnominal') dynamic totalNominal,
      String? date,
      List<Transaction>? detail});
}

/// @nodoc
class __$$HistoryTransactionImplCopyWithImpl<$Res>
    extends _$HistoryTransactionCopyWithImpl<$Res, _$HistoryTransactionImpl>
    implements _$$HistoryTransactionImplCopyWith<$Res> {
  __$$HistoryTransactionImplCopyWithImpl(_$HistoryTransactionImpl _value,
      $Res Function(_$HistoryTransactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalorderall = freezed,
    Object? totalNominal = freezed,
    Object? date = freezed,
    Object? detail = freezed,
  }) {
    return _then(_$HistoryTransactionImpl(
      totalorderall: freezed == totalorderall
          ? _value.totalorderall
          : totalorderall // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalNominal: freezed == totalNominal
          ? _value.totalNominal
          : totalNominal // ignore: cast_nullable_to_non_nullable
              as dynamic,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value._detail
          : detail // ignore: cast_nullable_to_non_nullable
              as List<Transaction>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HistoryTransactionImpl implements _HistoryTransaction {
  const _$HistoryTransactionImpl(
      {this.totalorderall,
      @JsonKey(name: 'totalnominal') this.totalNominal,
      this.date,
      final List<Transaction>? detail})
      : _detail = detail;

  factory _$HistoryTransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoryTransactionImplFromJson(json);

  @override
  final dynamic totalorderall;
  @override
  @JsonKey(name: 'totalnominal')
  final dynamic totalNominal;
  @override
  final String? date;
  final List<Transaction>? _detail;
  @override
  List<Transaction>? get detail {
    final value = _detail;
    if (value == null) return null;
    if (_detail is EqualUnmodifiableListView) return _detail;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HistoryTransaction(totalorderall: $totalorderall, totalNominal: $totalNominal, date: $date, detail: $detail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryTransactionImpl &&
            const DeepCollectionEquality()
                .equals(other.totalorderall, totalorderall) &&
            const DeepCollectionEquality()
                .equals(other.totalNominal, totalNominal) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._detail, _detail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(totalorderall),
      const DeepCollectionEquality().hash(totalNominal),
      date,
      const DeepCollectionEquality().hash(_detail));

  /// Create a copy of HistoryTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryTransactionImplCopyWith<_$HistoryTransactionImpl> get copyWith =>
      __$$HistoryTransactionImplCopyWithImpl<_$HistoryTransactionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoryTransactionImplToJson(
      this,
    );
  }
}

abstract class _HistoryTransaction implements HistoryTransaction {
  const factory _HistoryTransaction(
      {final dynamic totalorderall,
      @JsonKey(name: 'totalnominal') final dynamic totalNominal,
      final String? date,
      final List<Transaction>? detail}) = _$HistoryTransactionImpl;

  factory _HistoryTransaction.fromJson(Map<String, dynamic> json) =
      _$HistoryTransactionImpl.fromJson;

  @override
  dynamic get totalorderall;
  @override
  @JsonKey(name: 'totalnominal')
  dynamic get totalNominal;
  @override
  String? get date;
  @override
  List<Transaction>? get detail;

  /// Create a copy of HistoryTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistoryTransactionImplCopyWith<_$HistoryTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
