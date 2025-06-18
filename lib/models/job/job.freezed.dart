// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Job _$JobFromJson(Map<String, dynamic> json) {
  return _Job.fromJson(json);
}

/// @nodoc
mixin _$Job {
  @JsonKey(name: 'key')
  String? get key => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_history_job')
  String? get id_history_job => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_invoice')
  String? get no_invoice => throw _privateConstructorUsedError;
  @JsonKey(name: 'note')
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: 'detail')
  String? get detail => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'img')
  String? get img => throw _privateConstructorUsedError;
  @JsonKey(name: 'operator')
  String? get operator => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phone_number => throw _privateConstructorUsedError;
  @JsonKey(name: 'hour')
  String? get hour => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_asrama')
  String? get id_asrama => throw _privateConstructorUsedError;

  /// Serializes this Job to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Job
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobCopyWith<Job> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobCopyWith<$Res> {
  factory $JobCopyWith(Job value, $Res Function(Job) then) =
      _$JobCopyWithImpl<$Res, Job>;
  @useResult
  $Res call(
      {@JsonKey(name: 'key') String? key,
      @JsonKey(name: 'id_history_job') String? id_history_job,
      @JsonKey(name: 'no_invoice') String? no_invoice,
      @JsonKey(name: 'note') String? note,
      @JsonKey(name: 'detail') String? detail,
      @JsonKey(name: 'date') String date,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'img') String? img,
      @JsonKey(name: 'operator') String? operator,
      @JsonKey(name: 'phone_number') String? phone_number,
      @JsonKey(name: 'hour') String? hour,
      @JsonKey(name: 'id_asrama') String? id_asrama});
}

/// @nodoc
class _$JobCopyWithImpl<$Res, $Val extends Job> implements $JobCopyWith<$Res> {
  _$JobCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Job
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? id_history_job = freezed,
    Object? no_invoice = freezed,
    Object? note = freezed,
    Object? detail = freezed,
    Object? date = null,
    Object? status = freezed,
    Object? img = freezed,
    Object? operator = freezed,
    Object? phone_number = freezed,
    Object? hour = freezed,
    Object? id_asrama = freezed,
  }) {
    return _then(_value.copyWith(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      id_history_job: freezed == id_history_job
          ? _value.id_history_job
          : id_history_job // ignore: cast_nullable_to_non_nullable
              as String?,
      no_invoice: freezed == no_invoice
          ? _value.no_invoice
          : no_invoice // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      operator: freezed == operator
          ? _value.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as String?,
      phone_number: freezed == phone_number
          ? _value.phone_number
          : phone_number // ignore: cast_nullable_to_non_nullable
              as String?,
      hour: freezed == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as String?,
      id_asrama: freezed == id_asrama
          ? _value.id_asrama
          : id_asrama // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobImplCopyWith<$Res> implements $JobCopyWith<$Res> {
  factory _$$JobImplCopyWith(_$JobImpl value, $Res Function(_$JobImpl) then) =
      __$$JobImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'key') String? key,
      @JsonKey(name: 'id_history_job') String? id_history_job,
      @JsonKey(name: 'no_invoice') String? no_invoice,
      @JsonKey(name: 'note') String? note,
      @JsonKey(name: 'detail') String? detail,
      @JsonKey(name: 'date') String date,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'img') String? img,
      @JsonKey(name: 'operator') String? operator,
      @JsonKey(name: 'phone_number') String? phone_number,
      @JsonKey(name: 'hour') String? hour,
      @JsonKey(name: 'id_asrama') String? id_asrama});
}

/// @nodoc
class __$$JobImplCopyWithImpl<$Res> extends _$JobCopyWithImpl<$Res, _$JobImpl>
    implements _$$JobImplCopyWith<$Res> {
  __$$JobImplCopyWithImpl(_$JobImpl _value, $Res Function(_$JobImpl) _then)
      : super(_value, _then);

  /// Create a copy of Job
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? id_history_job = freezed,
    Object? no_invoice = freezed,
    Object? note = freezed,
    Object? detail = freezed,
    Object? date = null,
    Object? status = freezed,
    Object? img = freezed,
    Object? operator = freezed,
    Object? phone_number = freezed,
    Object? hour = freezed,
    Object? id_asrama = freezed,
  }) {
    return _then(_$JobImpl(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      id_history_job: freezed == id_history_job
          ? _value.id_history_job
          : id_history_job // ignore: cast_nullable_to_non_nullable
              as String?,
      no_invoice: freezed == no_invoice
          ? _value.no_invoice
          : no_invoice // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      operator: freezed == operator
          ? _value.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as String?,
      phone_number: freezed == phone_number
          ? _value.phone_number
          : phone_number // ignore: cast_nullable_to_non_nullable
              as String?,
      hour: freezed == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as String?,
      id_asrama: freezed == id_asrama
          ? _value.id_asrama
          : id_asrama // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobImpl implements _Job {
  const _$JobImpl(
      {@JsonKey(name: 'key') this.key,
      @JsonKey(name: 'id_history_job') this.id_history_job,
      @JsonKey(name: 'no_invoice') this.no_invoice,
      @JsonKey(name: 'note') this.note,
      @JsonKey(name: 'detail') this.detail,
      @JsonKey(name: 'date') this.date = '0',
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'img') this.img,
      @JsonKey(name: 'operator') this.operator,
      @JsonKey(name: 'phone_number') this.phone_number,
      @JsonKey(name: 'hour') this.hour,
      @JsonKey(name: 'id_asrama') this.id_asrama});

  factory _$JobImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobImplFromJson(json);

  @override
  @JsonKey(name: 'key')
  final String? key;
  @override
  @JsonKey(name: 'id_history_job')
  final String? id_history_job;
  @override
  @JsonKey(name: 'no_invoice')
  final String? no_invoice;
  @override
  @JsonKey(name: 'note')
  final String? note;
  @override
  @JsonKey(name: 'detail')
  final String? detail;
  @override
  @JsonKey(name: 'date')
  final String date;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'img')
  final String? img;
  @override
  @JsonKey(name: 'operator')
  final String? operator;
  @override
  @JsonKey(name: 'phone_number')
  final String? phone_number;
  @override
  @JsonKey(name: 'hour')
  final String? hour;
  @override
  @JsonKey(name: 'id_asrama')
  final String? id_asrama;

  @override
  String toString() {
    return 'Job(key: $key, id_history_job: $id_history_job, no_invoice: $no_invoice, note: $note, detail: $detail, date: $date, status: $status, img: $img, operator: $operator, phone_number: $phone_number, hour: $hour, id_asrama: $id_asrama)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.id_history_job, id_history_job) ||
                other.id_history_job == id_history_job) &&
            (identical(other.no_invoice, no_invoice) ||
                other.no_invoice == no_invoice) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.operator, operator) ||
                other.operator == operator) &&
            (identical(other.phone_number, phone_number) ||
                other.phone_number == phone_number) &&
            (identical(other.hour, hour) || other.hour == hour) &&
            (identical(other.id_asrama, id_asrama) ||
                other.id_asrama == id_asrama));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key, id_history_job, no_invoice,
      note, detail, date, status, img, operator, phone_number, hour, id_asrama);

  /// Create a copy of Job
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobImplCopyWith<_$JobImpl> get copyWith =>
      __$$JobImplCopyWithImpl<_$JobImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobImplToJson(
      this,
    );
  }
}

abstract class _Job implements Job {
  const factory _Job(
      {@JsonKey(name: 'key') final String? key,
      @JsonKey(name: 'id_history_job') final String? id_history_job,
      @JsonKey(name: 'no_invoice') final String? no_invoice,
      @JsonKey(name: 'note') final String? note,
      @JsonKey(name: 'detail') final String? detail,
      @JsonKey(name: 'date') final String date,
      @JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'img') final String? img,
      @JsonKey(name: 'operator') final String? operator,
      @JsonKey(name: 'phone_number') final String? phone_number,
      @JsonKey(name: 'hour') final String? hour,
      @JsonKey(name: 'id_asrama') final String? id_asrama}) = _$JobImpl;

  factory _Job.fromJson(Map<String, dynamic> json) = _$JobImpl.fromJson;

  @override
  @JsonKey(name: 'key')
  String? get key;
  @override
  @JsonKey(name: 'id_history_job')
  String? get id_history_job;
  @override
  @JsonKey(name: 'no_invoice')
  String? get no_invoice;
  @override
  @JsonKey(name: 'note')
  String? get note;
  @override
  @JsonKey(name: 'detail')
  String? get detail;
  @override
  @JsonKey(name: 'date')
  String get date;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'img')
  String? get img;
  @override
  @JsonKey(name: 'operator')
  String? get operator;
  @override
  @JsonKey(name: 'phone_number')
  String? get phone_number;
  @override
  @JsonKey(name: 'hour')
  String? get hour;
  @override
  @JsonKey(name: 'id_asrama')
  String? get id_asrama;

  /// Create a copy of Job
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobImplCopyWith<_$JobImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
