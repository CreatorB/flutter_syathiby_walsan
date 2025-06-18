// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailsJob _$DetailsJobFromJson(Map<String, dynamic> json) {
  return _DetailsJob.fromJson(json);
}

/// @nodoc
mixin _$DetailsJob {
  Info? get info => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<JobData>? get data => throw _privateConstructorUsedError;

  /// Serializes this DetailsJob to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailsJob
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailsJobCopyWith<DetailsJob> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsJobCopyWith<$Res> {
  factory $DetailsJobCopyWith(
          DetailsJob value, $Res Function(DetailsJob) then) =
      _$DetailsJobCopyWithImpl<$Res, DetailsJob>;
  @useResult
  $Res call({Info? info, @JsonKey(name: 'data') List<JobData>? data});

  $InfoCopyWith<$Res>? get info;
}

/// @nodoc
class _$DetailsJobCopyWithImpl<$Res, $Val extends DetailsJob>
    implements $DetailsJobCopyWith<$Res> {
  _$DetailsJobCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailsJob
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<JobData>?,
    ) as $Val);
  }

  /// Create a copy of DetailsJob
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InfoCopyWith<$Res>? get info {
    if (_value.info == null) {
      return null;
    }

    return $InfoCopyWith<$Res>(_value.info!, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailsJobImplCopyWith<$Res>
    implements $DetailsJobCopyWith<$Res> {
  factory _$$DetailsJobImplCopyWith(
          _$DetailsJobImpl value, $Res Function(_$DetailsJobImpl) then) =
      __$$DetailsJobImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Info? info, @JsonKey(name: 'data') List<JobData>? data});

  @override
  $InfoCopyWith<$Res>? get info;
}

/// @nodoc
class __$$DetailsJobImplCopyWithImpl<$Res>
    extends _$DetailsJobCopyWithImpl<$Res, _$DetailsJobImpl>
    implements _$$DetailsJobImplCopyWith<$Res> {
  __$$DetailsJobImplCopyWithImpl(
      _$DetailsJobImpl _value, $Res Function(_$DetailsJobImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailsJob
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = freezed,
    Object? data = freezed,
  }) {
    return _then(_$DetailsJobImpl(
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<JobData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailsJobImpl implements _DetailsJob {
  const _$DetailsJobImpl(
      {this.info, @JsonKey(name: 'data') final List<JobData>? data})
      : _data = data;

  factory _$DetailsJobImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailsJobImplFromJson(json);

  @override
  final Info? info;
  final List<JobData>? _data;
  @override
  @JsonKey(name: 'data')
  List<JobData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DetailsJob(info: $info, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailsJobImpl &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, info, const DeepCollectionEquality().hash(_data));

  /// Create a copy of DetailsJob
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailsJobImplCopyWith<_$DetailsJobImpl> get copyWith =>
      __$$DetailsJobImplCopyWithImpl<_$DetailsJobImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailsJobImplToJson(
      this,
    );
  }
}

abstract class _DetailsJob implements DetailsJob {
  const factory _DetailsJob(
      {final Info? info,
      @JsonKey(name: 'data') final List<JobData>? data}) = _$DetailsJobImpl;

  factory _DetailsJob.fromJson(Map<String, dynamic> json) =
      _$DetailsJobImpl.fromJson;

  @override
  Info? get info;
  @override
  @JsonKey(name: 'data')
  List<JobData>? get data;

  /// Create a copy of DetailsJob
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailsJobImplCopyWith<_$DetailsJobImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Info _$InfoFromJson(Map<String, dynamic> json) {
  return _Info.fromJson(json);
}

/// @nodoc
mixin _$Info {
  @JsonKey(name: 'id_history_job')
  String? get id_history_job => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_invoice')
  String? get no_invoice => throw _privateConstructorUsedError;
  @JsonKey(name: 'note')
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: 'detail')
  String? get detail => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'img')
  String? get img => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_staff')
  String? get name_staff => throw _privateConstructorUsedError;
  @JsonKey(name: 'by')
  String? get by => throw _privateConstructorUsedError;

  /// Serializes this Info to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Info
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InfoCopyWith<Info> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoCopyWith<$Res> {
  factory $InfoCopyWith(Info value, $Res Function(Info) then) =
      _$InfoCopyWithImpl<$Res, Info>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_history_job') String? id_history_job,
      @JsonKey(name: 'no_invoice') String? no_invoice,
      @JsonKey(name: 'note') String? note,
      @JsonKey(name: 'detail') String? detail,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'img') String? img,
      @JsonKey(name: 'name_staff') String? name_staff,
      @JsonKey(name: 'by') String? by});
}

/// @nodoc
class _$InfoCopyWithImpl<$Res, $Val extends Info>
    implements $InfoCopyWith<$Res> {
  _$InfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Info
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id_history_job = freezed,
    Object? no_invoice = freezed,
    Object? note = freezed,
    Object? detail = freezed,
    Object? date = freezed,
    Object? status = freezed,
    Object? img = freezed,
    Object? name_staff = freezed,
    Object? by = freezed,
  }) {
    return _then(_value.copyWith(
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
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      name_staff: freezed == name_staff
          ? _value.name_staff
          : name_staff // ignore: cast_nullable_to_non_nullable
              as String?,
      by: freezed == by
          ? _value.by
          : by // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InfoImplCopyWith<$Res> implements $InfoCopyWith<$Res> {
  factory _$$InfoImplCopyWith(
          _$InfoImpl value, $Res Function(_$InfoImpl) then) =
      __$$InfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_history_job') String? id_history_job,
      @JsonKey(name: 'no_invoice') String? no_invoice,
      @JsonKey(name: 'note') String? note,
      @JsonKey(name: 'detail') String? detail,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'img') String? img,
      @JsonKey(name: 'name_staff') String? name_staff,
      @JsonKey(name: 'by') String? by});
}

/// @nodoc
class __$$InfoImplCopyWithImpl<$Res>
    extends _$InfoCopyWithImpl<$Res, _$InfoImpl>
    implements _$$InfoImplCopyWith<$Res> {
  __$$InfoImplCopyWithImpl(_$InfoImpl _value, $Res Function(_$InfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of Info
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id_history_job = freezed,
    Object? no_invoice = freezed,
    Object? note = freezed,
    Object? detail = freezed,
    Object? date = freezed,
    Object? status = freezed,
    Object? img = freezed,
    Object? name_staff = freezed,
    Object? by = freezed,
  }) {
    return _then(_$InfoImpl(
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
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      name_staff: freezed == name_staff
          ? _value.name_staff
          : name_staff // ignore: cast_nullable_to_non_nullable
              as String?,
      by: freezed == by
          ? _value.by
          : by // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InfoImpl implements _Info {
  const _$InfoImpl(
      {@JsonKey(name: 'id_history_job') this.id_history_job,
      @JsonKey(name: 'no_invoice') this.no_invoice,
      @JsonKey(name: 'note') this.note,
      @JsonKey(name: 'detail') this.detail,
      @JsonKey(name: 'date') this.date,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'img') this.img,
      @JsonKey(name: 'name_staff') this.name_staff,
      @JsonKey(name: 'by') this.by});

  factory _$InfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InfoImplFromJson(json);

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
  final String? date;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'img')
  final String? img;
  @override
  @JsonKey(name: 'name_staff')
  final String? name_staff;
  @override
  @JsonKey(name: 'by')
  final String? by;

  @override
  String toString() {
    return 'Info(id_history_job: $id_history_job, no_invoice: $no_invoice, note: $note, detail: $detail, date: $date, status: $status, img: $img, name_staff: $name_staff, by: $by)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfoImpl &&
            (identical(other.id_history_job, id_history_job) ||
                other.id_history_job == id_history_job) &&
            (identical(other.no_invoice, no_invoice) ||
                other.no_invoice == no_invoice) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.name_staff, name_staff) ||
                other.name_staff == name_staff) &&
            (identical(other.by, by) || other.by == by));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id_history_job, no_invoice, note,
      detail, date, status, img, name_staff, by);

  /// Create a copy of Info
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InfoImplCopyWith<_$InfoImpl> get copyWith =>
      __$$InfoImplCopyWithImpl<_$InfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InfoImplToJson(
      this,
    );
  }
}

abstract class _Info implements Info {
  const factory _Info(
      {@JsonKey(name: 'id_history_job') final String? id_history_job,
      @JsonKey(name: 'no_invoice') final String? no_invoice,
      @JsonKey(name: 'note') final String? note,
      @JsonKey(name: 'detail') final String? detail,
      @JsonKey(name: 'date') final String? date,
      @JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'img') final String? img,
      @JsonKey(name: 'name_staff') final String? name_staff,
      @JsonKey(name: 'by') final String? by}) = _$InfoImpl;

  factory _Info.fromJson(Map<String, dynamic> json) = _$InfoImpl.fromJson;

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
  String? get date;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'img')
  String? get img;
  @override
  @JsonKey(name: 'name_staff')
  String? get name_staff;
  @override
  @JsonKey(name: 'by')
  String? get by;

  /// Create a copy of Info
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InfoImplCopyWith<_$InfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JobData _$JobDataFromJson(Map<String, dynamic> json) {
  return _JobData.fromJson(json);
}

/// @nodoc
mixin _$JobData {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_staff')
  String? get name_staff => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_invoice')
  String? get no_invoice => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get img => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  /// Serializes this JobData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JobData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobDataCopyWith<JobData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobDataCopyWith<$Res> {
  factory $JobDataCopyWith(JobData value, $Res Function(JobData) then) =
      _$JobDataCopyWithImpl<$Res, JobData>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'name_staff') String? name_staff,
      String? comment,
      @JsonKey(name: 'no_invoice') String? no_invoice,
      String? date,
      String? status,
      String? img,
      String? note});
}

/// @nodoc
class _$JobDataCopyWithImpl<$Res, $Val extends JobData>
    implements $JobDataCopyWith<$Res> {
  _$JobDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name_staff = freezed,
    Object? comment = freezed,
    Object? no_invoice = freezed,
    Object? date = freezed,
    Object? status = freezed,
    Object? img = freezed,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name_staff: freezed == name_staff
          ? _value.name_staff
          : name_staff // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      no_invoice: freezed == no_invoice
          ? _value.no_invoice
          : no_invoice // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobDataImplCopyWith<$Res> implements $JobDataCopyWith<$Res> {
  factory _$$JobDataImplCopyWith(
          _$JobDataImpl value, $Res Function(_$JobDataImpl) then) =
      __$$JobDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'name_staff') String? name_staff,
      String? comment,
      @JsonKey(name: 'no_invoice') String? no_invoice,
      String? date,
      String? status,
      String? img,
      String? note});
}

/// @nodoc
class __$$JobDataImplCopyWithImpl<$Res>
    extends _$JobDataCopyWithImpl<$Res, _$JobDataImpl>
    implements _$$JobDataImplCopyWith<$Res> {
  __$$JobDataImplCopyWithImpl(
      _$JobDataImpl _value, $Res Function(_$JobDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name_staff = freezed,
    Object? comment = freezed,
    Object? no_invoice = freezed,
    Object? date = freezed,
    Object? status = freezed,
    Object? img = freezed,
    Object? note = freezed,
  }) {
    return _then(_$JobDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name_staff: freezed == name_staff
          ? _value.name_staff
          : name_staff // ignore: cast_nullable_to_non_nullable
              as String?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      no_invoice: freezed == no_invoice
          ? _value.no_invoice
          : no_invoice // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobDataImpl implements _JobData {
  const _$JobDataImpl(
      {this.id,
      @JsonKey(name: 'name_staff') this.name_staff,
      this.comment,
      @JsonKey(name: 'no_invoice') this.no_invoice,
      this.date,
      this.status,
      this.img,
      this.note});

  factory _$JobDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobDataImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'name_staff')
  final String? name_staff;
  @override
  final String? comment;
  @override
  @JsonKey(name: 'no_invoice')
  final String? no_invoice;
  @override
  final String? date;
  @override
  final String? status;
  @override
  final String? img;
  @override
  final String? note;

  @override
  String toString() {
    return 'JobData(id: $id, name_staff: $name_staff, comment: $comment, no_invoice: $no_invoice, date: $date, status: $status, img: $img, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name_staff, name_staff) ||
                other.name_staff == name_staff) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.no_invoice, no_invoice) ||
                other.no_invoice == no_invoice) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name_staff, comment,
      no_invoice, date, status, img, note);

  /// Create a copy of JobData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobDataImplCopyWith<_$JobDataImpl> get copyWith =>
      __$$JobDataImplCopyWithImpl<_$JobDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobDataImplToJson(
      this,
    );
  }
}

abstract class _JobData implements JobData {
  const factory _JobData(
      {final String? id,
      @JsonKey(name: 'name_staff') final String? name_staff,
      final String? comment,
      @JsonKey(name: 'no_invoice') final String? no_invoice,
      final String? date,
      final String? status,
      final String? img,
      final String? note}) = _$JobDataImpl;

  factory _JobData.fromJson(Map<String, dynamic> json) = _$JobDataImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'name_staff')
  String? get name_staff;
  @override
  String? get comment;
  @override
  @JsonKey(name: 'no_invoice')
  String? get no_invoice;
  @override
  String? get date;
  @override
  String? get status;
  @override
  String? get img;
  @override
  String? get note;

  /// Create a copy of JobData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobDataImplCopyWith<_$JobDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
