// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_expense.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryExpense _$CategoryExpenseFromJson(Map<String, dynamic> json) {
  return _CategoryExpense.fromJson(json);
}

/// @nodoc
mixin _$CategoryExpense {
  @JsonKey(name: 'id_expense_category')
  String? get idExpenseCategory => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_expense_category', defaultValue: '')
  String? get nameExpenseCategory => throw _privateConstructorUsedError;

  /// Serializes this CategoryExpense to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryExpense
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryExpenseCopyWith<CategoryExpense> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryExpenseCopyWith<$Res> {
  factory $CategoryExpenseCopyWith(
          CategoryExpense value, $Res Function(CategoryExpense) then) =
      _$CategoryExpenseCopyWithImpl<$Res, CategoryExpense>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_expense_category') String? idExpenseCategory,
      @JsonKey(name: 'name_expense_category', defaultValue: '')
      String? nameExpenseCategory});
}

/// @nodoc
class _$CategoryExpenseCopyWithImpl<$Res, $Val extends CategoryExpense>
    implements $CategoryExpenseCopyWith<$Res> {
  _$CategoryExpenseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryExpense
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idExpenseCategory = freezed,
    Object? nameExpenseCategory = freezed,
  }) {
    return _then(_value.copyWith(
      idExpenseCategory: freezed == idExpenseCategory
          ? _value.idExpenseCategory
          : idExpenseCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      nameExpenseCategory: freezed == nameExpenseCategory
          ? _value.nameExpenseCategory
          : nameExpenseCategory // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryExpenseImplCopyWith<$Res>
    implements $CategoryExpenseCopyWith<$Res> {
  factory _$$CategoryExpenseImplCopyWith(_$CategoryExpenseImpl value,
          $Res Function(_$CategoryExpenseImpl) then) =
      __$$CategoryExpenseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_expense_category') String? idExpenseCategory,
      @JsonKey(name: 'name_expense_category', defaultValue: '')
      String? nameExpenseCategory});
}

/// @nodoc
class __$$CategoryExpenseImplCopyWithImpl<$Res>
    extends _$CategoryExpenseCopyWithImpl<$Res, _$CategoryExpenseImpl>
    implements _$$CategoryExpenseImplCopyWith<$Res> {
  __$$CategoryExpenseImplCopyWithImpl(
      _$CategoryExpenseImpl _value, $Res Function(_$CategoryExpenseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryExpense
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idExpenseCategory = freezed,
    Object? nameExpenseCategory = freezed,
  }) {
    return _then(_$CategoryExpenseImpl(
      idExpenseCategory: freezed == idExpenseCategory
          ? _value.idExpenseCategory
          : idExpenseCategory // ignore: cast_nullable_to_non_nullable
              as String?,
      nameExpenseCategory: freezed == nameExpenseCategory
          ? _value.nameExpenseCategory
          : nameExpenseCategory // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryExpenseImpl implements _CategoryExpense {
  const _$CategoryExpenseImpl(
      {@JsonKey(name: 'id_expense_category') this.idExpenseCategory,
      @JsonKey(name: 'name_expense_category', defaultValue: '')
      this.nameExpenseCategory});

  factory _$CategoryExpenseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryExpenseImplFromJson(json);

  @override
  @JsonKey(name: 'id_expense_category')
  final String? idExpenseCategory;
  @override
  @JsonKey(name: 'name_expense_category', defaultValue: '')
  final String? nameExpenseCategory;

  @override
  String toString() {
    return 'CategoryExpense(idExpenseCategory: $idExpenseCategory, nameExpenseCategory: $nameExpenseCategory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryExpenseImpl &&
            (identical(other.idExpenseCategory, idExpenseCategory) ||
                other.idExpenseCategory == idExpenseCategory) &&
            (identical(other.nameExpenseCategory, nameExpenseCategory) ||
                other.nameExpenseCategory == nameExpenseCategory));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, idExpenseCategory, nameExpenseCategory);

  /// Create a copy of CategoryExpense
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryExpenseImplCopyWith<_$CategoryExpenseImpl> get copyWith =>
      __$$CategoryExpenseImplCopyWithImpl<_$CategoryExpenseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryExpenseImplToJson(
      this,
    );
  }
}

abstract class _CategoryExpense implements CategoryExpense {
  const factory _CategoryExpense(
      {@JsonKey(name: 'id_expense_category') final String? idExpenseCategory,
      @JsonKey(name: 'name_expense_category', defaultValue: '')
      final String? nameExpenseCategory}) = _$CategoryExpenseImpl;

  factory _CategoryExpense.fromJson(Map<String, dynamic> json) =
      _$CategoryExpenseImpl.fromJson;

  @override
  @JsonKey(name: 'id_expense_category')
  String? get idExpenseCategory;
  @override
  @JsonKey(name: 'name_expense_category', defaultValue: '')
  String? get nameExpenseCategory;

  /// Create a copy of CategoryExpense
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryExpenseImplCopyWith<_$CategoryExpenseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
