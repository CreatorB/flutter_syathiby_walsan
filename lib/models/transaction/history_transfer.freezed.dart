// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_transfer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HistoryTransfer _$HistoryTransferFromJson(Map<String, dynamic> json) {
  return _HistoryTransfer.fromJson(json);
}

/// @nodoc
mixin _$HistoryTransfer {
  String? get totalorderall => throw _privateConstructorUsedError;
  String? get totalnominal => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  List<Transfer>? get detail => throw _privateConstructorUsedError;

  /// Serializes this HistoryTransfer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HistoryTransfer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HistoryTransferCopyWith<HistoryTransfer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryTransferCopyWith<$Res> {
  factory $HistoryTransferCopyWith(
          HistoryTransfer value, $Res Function(HistoryTransfer) then) =
      _$HistoryTransferCopyWithImpl<$Res, HistoryTransfer>;
  @useResult
  $Res call(
      {String? totalorderall,
      String? totalnominal,
      String? date,
      List<Transfer>? detail});
}

/// @nodoc
class _$HistoryTransferCopyWithImpl<$Res, $Val extends HistoryTransfer>
    implements $HistoryTransferCopyWith<$Res> {
  _$HistoryTransferCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HistoryTransfer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalorderall = freezed,
    Object? totalnominal = freezed,
    Object? date = freezed,
    Object? detail = freezed,
  }) {
    return _then(_value.copyWith(
      totalorderall: freezed == totalorderall
          ? _value.totalorderall
          : totalorderall // ignore: cast_nullable_to_non_nullable
              as String?,
      totalnominal: freezed == totalnominal
          ? _value.totalnominal
          : totalnominal // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as List<Transfer>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoryTransferImplCopyWith<$Res>
    implements $HistoryTransferCopyWith<$Res> {
  factory _$$HistoryTransferImplCopyWith(_$HistoryTransferImpl value,
          $Res Function(_$HistoryTransferImpl) then) =
      __$$HistoryTransferImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? totalorderall,
      String? totalnominal,
      String? date,
      List<Transfer>? detail});
}

/// @nodoc
class __$$HistoryTransferImplCopyWithImpl<$Res>
    extends _$HistoryTransferCopyWithImpl<$Res, _$HistoryTransferImpl>
    implements _$$HistoryTransferImplCopyWith<$Res> {
  __$$HistoryTransferImplCopyWithImpl(
      _$HistoryTransferImpl _value, $Res Function(_$HistoryTransferImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryTransfer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalorderall = freezed,
    Object? totalnominal = freezed,
    Object? date = freezed,
    Object? detail = freezed,
  }) {
    return _then(_$HistoryTransferImpl(
      totalorderall: freezed == totalorderall
          ? _value.totalorderall
          : totalorderall // ignore: cast_nullable_to_non_nullable
              as String?,
      totalnominal: freezed == totalnominal
          ? _value.totalnominal
          : totalnominal // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value._detail
          : detail // ignore: cast_nullable_to_non_nullable
              as List<Transfer>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HistoryTransferImpl implements _HistoryTransfer {
  const _$HistoryTransferImpl(
      {this.totalorderall,
      this.totalnominal,
      this.date,
      final List<Transfer>? detail})
      : _detail = detail;

  factory _$HistoryTransferImpl.fromJson(Map<String, dynamic> json) =>
      _$$HistoryTransferImplFromJson(json);

  @override
  final String? totalorderall;
  @override
  final String? totalnominal;
  @override
  final String? date;
  final List<Transfer>? _detail;
  @override
  List<Transfer>? get detail {
    final value = _detail;
    if (value == null) return null;
    if (_detail is EqualUnmodifiableListView) return _detail;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HistoryTransfer(totalorderall: $totalorderall, totalnominal: $totalnominal, date: $date, detail: $detail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryTransferImpl &&
            (identical(other.totalorderall, totalorderall) ||
                other.totalorderall == totalorderall) &&
            (identical(other.totalnominal, totalnominal) ||
                other.totalnominal == totalnominal) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._detail, _detail));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalorderall, totalnominal,
      date, const DeepCollectionEquality().hash(_detail));

  /// Create a copy of HistoryTransfer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryTransferImplCopyWith<_$HistoryTransferImpl> get copyWith =>
      __$$HistoryTransferImplCopyWithImpl<_$HistoryTransferImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HistoryTransferImplToJson(
      this,
    );
  }
}

abstract class _HistoryTransfer implements HistoryTransfer {
  const factory _HistoryTransfer(
      {final String? totalorderall,
      final String? totalnominal,
      final String? date,
      final List<Transfer>? detail}) = _$HistoryTransferImpl;

  factory _HistoryTransfer.fromJson(Map<String, dynamic> json) =
      _$HistoryTransferImpl.fromJson;

  @override
  String? get totalorderall;
  @override
  String? get totalnominal;
  @override
  String? get date;
  @override
  List<Transfer>? get detail;

  /// Create a copy of HistoryTransfer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistoryTransferImplCopyWith<_$HistoryTransferImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
