// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sub_category.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubCategory _$SubCategoryFromJson(Map<String, dynamic> json) {
  return _SubCategory.fromJson(json);
}

/// @nodoc
mixin _$SubCategory {
  String get status => throw _privateConstructorUsedError;
  String get errCode => throw _privateConstructorUsedError;
  String get msg => throw _privateConstructorUsedError;
  List<SubCategoryData> get data => throw _privateConstructorUsedError;

  /// Serializes this SubCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubCategoryCopyWith<SubCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubCategoryCopyWith<$Res> {
  factory $SubCategoryCopyWith(
          SubCategory value, $Res Function(SubCategory) then) =
      _$SubCategoryCopyWithImpl<$Res, SubCategory>;
  @useResult
  $Res call(
      {String status, String errCode, String msg, List<SubCategoryData> data});
}

/// @nodoc
class _$SubCategoryCopyWithImpl<$Res, $Val extends SubCategory>
    implements $SubCategoryCopyWith<$Res> {
  _$SubCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errCode = null,
    Object? msg = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      errCode: null == errCode
          ? _value.errCode
          : errCode // ignore: cast_nullable_to_non_nullable
              as String,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SubCategoryData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubCategoryImplCopyWith<$Res>
    implements $SubCategoryCopyWith<$Res> {
  factory _$$SubCategoryImplCopyWith(
          _$SubCategoryImpl value, $Res Function(_$SubCategoryImpl) then) =
      __$$SubCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String status, String errCode, String msg, List<SubCategoryData> data});
}

/// @nodoc
class __$$SubCategoryImplCopyWithImpl<$Res>
    extends _$SubCategoryCopyWithImpl<$Res, _$SubCategoryImpl>
    implements _$$SubCategoryImplCopyWith<$Res> {
  __$$SubCategoryImplCopyWithImpl(
      _$SubCategoryImpl _value, $Res Function(_$SubCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errCode = null,
    Object? msg = null,
    Object? data = null,
  }) {
    return _then(_$SubCategoryImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      errCode: null == errCode
          ? _value.errCode
          : errCode // ignore: cast_nullable_to_non_nullable
              as String,
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<SubCategoryData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubCategoryImpl implements _SubCategory {
  const _$SubCategoryImpl(
      {required this.status,
      required this.errCode,
      required this.msg,
      required final List<SubCategoryData> data})
      : _data = data;

  factory _$SubCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubCategoryImplFromJson(json);

  @override
  final String status;
  @override
  final String errCode;
  @override
  final String msg;
  final List<SubCategoryData> _data;
  @override
  List<SubCategoryData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SubCategory(status: $status, errCode: $errCode, msg: $msg, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubCategoryImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errCode, errCode) || other.errCode == errCode) &&
            (identical(other.msg, msg) || other.msg == msg) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, errCode, msg,
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of SubCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubCategoryImplCopyWith<_$SubCategoryImpl> get copyWith =>
      __$$SubCategoryImplCopyWithImpl<_$SubCategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubCategoryImplToJson(
      this,
    );
  }
}

abstract class _SubCategory implements SubCategory {
  const factory _SubCategory(
      {required final String status,
      required final String errCode,
      required final String msg,
      required final List<SubCategoryData> data}) = _$SubCategoryImpl;

  factory _SubCategory.fromJson(Map<String, dynamic> json) =
      _$SubCategoryImpl.fromJson;

  @override
  String get status;
  @override
  String get errCode;
  @override
  String get msg;
  @override
  List<SubCategoryData> get data;

  /// Create a copy of SubCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubCategoryImplCopyWith<_$SubCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubCategoryData _$SubCategoryDataFromJson(Map<String, dynamic> json) {
  return _SubCategoryData.fromJson(json);
}

/// @nodoc
mixin _$SubCategoryData {
  String get id_subcategory => throw _privateConstructorUsedError;
  String get id_category => throw _privateConstructorUsedError;
  String get name_category => throw _privateConstructorUsedError;

  /// Serializes this SubCategoryData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SubCategoryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubCategoryDataCopyWith<SubCategoryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubCategoryDataCopyWith<$Res> {
  factory $SubCategoryDataCopyWith(
          SubCategoryData value, $Res Function(SubCategoryData) then) =
      _$SubCategoryDataCopyWithImpl<$Res, SubCategoryData>;
  @useResult
  $Res call({String id_subcategory, String id_category, String name_category});
}

/// @nodoc
class _$SubCategoryDataCopyWithImpl<$Res, $Val extends SubCategoryData>
    implements $SubCategoryDataCopyWith<$Res> {
  _$SubCategoryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubCategoryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id_subcategory = null,
    Object? id_category = null,
    Object? name_category = null,
  }) {
    return _then(_value.copyWith(
      id_subcategory: null == id_subcategory
          ? _value.id_subcategory
          : id_subcategory // ignore: cast_nullable_to_non_nullable
              as String,
      id_category: null == id_category
          ? _value.id_category
          : id_category // ignore: cast_nullable_to_non_nullable
              as String,
      name_category: null == name_category
          ? _value.name_category
          : name_category // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubCategoryDataImplCopyWith<$Res>
    implements $SubCategoryDataCopyWith<$Res> {
  factory _$$SubCategoryDataImplCopyWith(_$SubCategoryDataImpl value,
          $Res Function(_$SubCategoryDataImpl) then) =
      __$$SubCategoryDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id_subcategory, String id_category, String name_category});
}

/// @nodoc
class __$$SubCategoryDataImplCopyWithImpl<$Res>
    extends _$SubCategoryDataCopyWithImpl<$Res, _$SubCategoryDataImpl>
    implements _$$SubCategoryDataImplCopyWith<$Res> {
  __$$SubCategoryDataImplCopyWithImpl(
      _$SubCategoryDataImpl _value, $Res Function(_$SubCategoryDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubCategoryData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id_subcategory = null,
    Object? id_category = null,
    Object? name_category = null,
  }) {
    return _then(_$SubCategoryDataImpl(
      id_subcategory: null == id_subcategory
          ? _value.id_subcategory
          : id_subcategory // ignore: cast_nullable_to_non_nullable
              as String,
      id_category: null == id_category
          ? _value.id_category
          : id_category // ignore: cast_nullable_to_non_nullable
              as String,
      name_category: null == name_category
          ? _value.name_category
          : name_category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubCategoryDataImpl implements _SubCategoryData {
  const _$SubCategoryDataImpl(
      {required this.id_subcategory,
      required this.id_category,
      required this.name_category});

  factory _$SubCategoryDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubCategoryDataImplFromJson(json);

  @override
  final String id_subcategory;
  @override
  final String id_category;
  @override
  final String name_category;

  @override
  String toString() {
    return 'SubCategoryData(id_subcategory: $id_subcategory, id_category: $id_category, name_category: $name_category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubCategoryDataImpl &&
            (identical(other.id_subcategory, id_subcategory) ||
                other.id_subcategory == id_subcategory) &&
            (identical(other.id_category, id_category) ||
                other.id_category == id_category) &&
            (identical(other.name_category, name_category) ||
                other.name_category == name_category));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id_subcategory, id_category, name_category);

  /// Create a copy of SubCategoryData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubCategoryDataImplCopyWith<_$SubCategoryDataImpl> get copyWith =>
      __$$SubCategoryDataImplCopyWithImpl<_$SubCategoryDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubCategoryDataImplToJson(
      this,
    );
  }
}

abstract class _SubCategoryData implements SubCategoryData {
  const factory _SubCategoryData(
      {required final String id_subcategory,
      required final String id_category,
      required final String name_category}) = _$SubCategoryDataImpl;

  factory _SubCategoryData.fromJson(Map<String, dynamic> json) =
      _$SubCategoryDataImpl.fromJson;

  @override
  String get id_subcategory;
  @override
  String get id_category;
  @override
  String get name_category;

  /// Create a copy of SubCategoryData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubCategoryDataImplCopyWith<_$SubCategoryDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
