// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'days.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Days _$DaysFromJson(Map<String, dynamic> json) {
  return _Days.fromJson(json);
}

/// @nodoc
mixin _$Days {
  dynamic get id_days => throw _privateConstructorUsedError;
  String? get name_days => throw _privateConstructorUsedError;
  String? get start_working => throw _privateConstructorUsedError;
  String? get finish_working => throw _privateConstructorUsedError;
  String? get dates => throw _privateConstructorUsedError;
  String? get today => throw _privateConstructorUsedError;

  /// Serializes this Days to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Days
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DaysCopyWith<Days> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DaysCopyWith<$Res> {
  factory $DaysCopyWith(Days value, $Res Function(Days) then) =
      _$DaysCopyWithImpl<$Res, Days>;
  @useResult
  $Res call(
      {dynamic id_days,
      String? name_days,
      String? start_working,
      String? finish_working,
      String? dates,
      String? today});
}

/// @nodoc
class _$DaysCopyWithImpl<$Res, $Val extends Days>
    implements $DaysCopyWith<$Res> {
  _$DaysCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Days
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id_days = freezed,
    Object? name_days = freezed,
    Object? start_working = freezed,
    Object? finish_working = freezed,
    Object? dates = freezed,
    Object? today = freezed,
  }) {
    return _then(_value.copyWith(
      id_days: freezed == id_days
          ? _value.id_days
          : id_days // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name_days: freezed == name_days
          ? _value.name_days
          : name_days // ignore: cast_nullable_to_non_nullable
              as String?,
      start_working: freezed == start_working
          ? _value.start_working
          : start_working // ignore: cast_nullable_to_non_nullable
              as String?,
      finish_working: freezed == finish_working
          ? _value.finish_working
          : finish_working // ignore: cast_nullable_to_non_nullable
              as String?,
      dates: freezed == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as String?,
      today: freezed == today
          ? _value.today
          : today // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DaysImplCopyWith<$Res> implements $DaysCopyWith<$Res> {
  factory _$$DaysImplCopyWith(
          _$DaysImpl value, $Res Function(_$DaysImpl) then) =
      __$$DaysImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic id_days,
      String? name_days,
      String? start_working,
      String? finish_working,
      String? dates,
      String? today});
}

/// @nodoc
class __$$DaysImplCopyWithImpl<$Res>
    extends _$DaysCopyWithImpl<$Res, _$DaysImpl>
    implements _$$DaysImplCopyWith<$Res> {
  __$$DaysImplCopyWithImpl(_$DaysImpl _value, $Res Function(_$DaysImpl) _then)
      : super(_value, _then);

  /// Create a copy of Days
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id_days = freezed,
    Object? name_days = freezed,
    Object? start_working = freezed,
    Object? finish_working = freezed,
    Object? dates = freezed,
    Object? today = freezed,
  }) {
    return _then(_$DaysImpl(
      id_days: freezed == id_days
          ? _value.id_days
          : id_days // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name_days: freezed == name_days
          ? _value.name_days
          : name_days // ignore: cast_nullable_to_non_nullable
              as String?,
      start_working: freezed == start_working
          ? _value.start_working
          : start_working // ignore: cast_nullable_to_non_nullable
              as String?,
      finish_working: freezed == finish_working
          ? _value.finish_working
          : finish_working // ignore: cast_nullable_to_non_nullable
              as String?,
      dates: freezed == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as String?,
      today: freezed == today
          ? _value.today
          : today // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DaysImpl implements _Days {
  const _$DaysImpl(
      {this.id_days,
      this.name_days,
      this.start_working,
      this.finish_working,
      this.dates,
      this.today});

  factory _$DaysImpl.fromJson(Map<String, dynamic> json) =>
      _$$DaysImplFromJson(json);

  @override
  final dynamic id_days;
  @override
  final String? name_days;
  @override
  final String? start_working;
  @override
  final String? finish_working;
  @override
  final String? dates;
  @override
  final String? today;

  @override
  String toString() {
    return 'Days(id_days: $id_days, name_days: $name_days, start_working: $start_working, finish_working: $finish_working, dates: $dates, today: $today)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DaysImpl &&
            const DeepCollectionEquality().equals(other.id_days, id_days) &&
            (identical(other.name_days, name_days) ||
                other.name_days == name_days) &&
            (identical(other.start_working, start_working) ||
                other.start_working == start_working) &&
            (identical(other.finish_working, finish_working) ||
                other.finish_working == finish_working) &&
            (identical(other.dates, dates) || other.dates == dates) &&
            (identical(other.today, today) || other.today == today));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id_days),
      name_days,
      start_working,
      finish_working,
      dates,
      today);

  /// Create a copy of Days
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DaysImplCopyWith<_$DaysImpl> get copyWith =>
      __$$DaysImplCopyWithImpl<_$DaysImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DaysImplToJson(
      this,
    );
  }
}

abstract class _Days implements Days {
  const factory _Days(
      {final dynamic id_days,
      final String? name_days,
      final String? start_working,
      final String? finish_working,
      final String? dates,
      final String? today}) = _$DaysImpl;

  factory _Days.fromJson(Map<String, dynamic> json) = _$DaysImpl.fromJson;

  @override
  dynamic get id_days;
  @override
  String? get name_days;
  @override
  String? get start_working;
  @override
  String? get finish_working;
  @override
  String? get dates;
  @override
  String? get today;

  /// Create a copy of Days
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DaysImplCopyWith<_$DaysImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
