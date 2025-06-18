// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_job.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailJob _$DetailJobFromJson(Map<String, dynamic> json) {
  return _DetailJob.fromJson(json);
}

/// @nodoc
mixin _$DetailJob {
  String? get no_invoice => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get operator => throw _privateConstructorUsedError;

  /// Serializes this DetailJob to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailJob
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailJobCopyWith<DetailJob> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailJobCopyWith<$Res> {
  factory $DetailJobCopyWith(DetailJob value, $Res Function(DetailJob) then) =
      _$DetailJobCopyWithImpl<$Res, DetailJob>;
  @useResult
  $Res call(
      {String? no_invoice,
      String? note,
      String? date,
      String? status,
      String? operator});
}

/// @nodoc
class _$DetailJobCopyWithImpl<$Res, $Val extends DetailJob>
    implements $DetailJobCopyWith<$Res> {
  _$DetailJobCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailJob
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? no_invoice = freezed,
    Object? note = freezed,
    Object? date = freezed,
    Object? status = freezed,
    Object? operator = freezed,
  }) {
    return _then(_value.copyWith(
      no_invoice: freezed == no_invoice
          ? _value.no_invoice
          : no_invoice // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      operator: freezed == operator
          ? _value.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailJobImplCopyWith<$Res>
    implements $DetailJobCopyWith<$Res> {
  factory _$$DetailJobImplCopyWith(
          _$DetailJobImpl value, $Res Function(_$DetailJobImpl) then) =
      __$$DetailJobImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? no_invoice,
      String? note,
      String? date,
      String? status,
      String? operator});
}

/// @nodoc
class __$$DetailJobImplCopyWithImpl<$Res>
    extends _$DetailJobCopyWithImpl<$Res, _$DetailJobImpl>
    implements _$$DetailJobImplCopyWith<$Res> {
  __$$DetailJobImplCopyWithImpl(
      _$DetailJobImpl _value, $Res Function(_$DetailJobImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailJob
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? no_invoice = freezed,
    Object? note = freezed,
    Object? date = freezed,
    Object? status = freezed,
    Object? operator = freezed,
  }) {
    return _then(_$DetailJobImpl(
      no_invoice: freezed == no_invoice
          ? _value.no_invoice
          : no_invoice // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      operator: freezed == operator
          ? _value.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailJobImpl implements _DetailJob {
  const _$DetailJobImpl(
      {this.no_invoice, this.note, this.date, this.status, this.operator});

  factory _$DetailJobImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailJobImplFromJson(json);

  @override
  final String? no_invoice;
  @override
  final String? note;
  @override
  final String? date;
  @override
  final String? status;
  @override
  final String? operator;

  @override
  String toString() {
    return 'DetailJob(no_invoice: $no_invoice, note: $note, date: $date, status: $status, operator: $operator)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailJobImpl &&
            (identical(other.no_invoice, no_invoice) ||
                other.no_invoice == no_invoice) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.operator, operator) ||
                other.operator == operator));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, no_invoice, note, date, status, operator);

  /// Create a copy of DetailJob
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailJobImplCopyWith<_$DetailJobImpl> get copyWith =>
      __$$DetailJobImplCopyWithImpl<_$DetailJobImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailJobImplToJson(
      this,
    );
  }
}

abstract class _DetailJob implements DetailJob {
  const factory _DetailJob(
      {final String? no_invoice,
      final String? note,
      final String? date,
      final String? status,
      final String? operator}) = _$DetailJobImpl;

  factory _DetailJob.fromJson(Map<String, dynamic> json) =
      _$DetailJobImpl.fromJson;

  @override
  String? get no_invoice;
  @override
  String? get note;
  @override
  String? get date;
  @override
  String? get status;
  @override
  String? get operator;

  /// Create a copy of DetailJob
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailJobImplCopyWith<_$DetailJobImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
