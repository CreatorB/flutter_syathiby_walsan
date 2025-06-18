// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Recipe _$RecipeFromJson(Map<String, dynamic> json) {
  return _Recipe.fromJson(json);
}

/// @nodoc
mixin _$Recipe {
  @JsonKey(name: 'id_recipe')
  String? get idRecipe => throw _privateConstructorUsedError;
  @JsonKey(name: 'raw_material')
  String? get rawMaterial => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_product')
  String? get idProduct => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_product')
  String? get nameProduct => throw _privateConstructorUsedError;
  String? get detail => throw _privateConstructorUsedError;
  String? get stock => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;

  /// Serializes this Recipe to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Recipe
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecipeCopyWith<Recipe> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeCopyWith<$Res> {
  factory $RecipeCopyWith(Recipe value, $Res Function(Recipe) then) =
      _$RecipeCopyWithImpl<$Res, Recipe>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_recipe') String? idRecipe,
      @JsonKey(name: 'raw_material') String? rawMaterial,
      @JsonKey(name: 'id_product') String? idProduct,
      String? name,
      @JsonKey(name: 'name_product') String? nameProduct,
      String? detail,
      String? stock,
      String? unit});
}

/// @nodoc
class _$RecipeCopyWithImpl<$Res, $Val extends Recipe>
    implements $RecipeCopyWith<$Res> {
  _$RecipeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Recipe
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idRecipe = freezed,
    Object? rawMaterial = freezed,
    Object? idProduct = freezed,
    Object? name = freezed,
    Object? nameProduct = freezed,
    Object? detail = freezed,
    Object? stock = freezed,
    Object? unit = freezed,
  }) {
    return _then(_value.copyWith(
      idRecipe: freezed == idRecipe
          ? _value.idRecipe
          : idRecipe // ignore: cast_nullable_to_non_nullable
              as String?,
      rawMaterial: freezed == rawMaterial
          ? _value.rawMaterial
          : rawMaterial // ignore: cast_nullable_to_non_nullable
              as String?,
      idProduct: freezed == idProduct
          ? _value.idProduct
          : idProduct // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameProduct: freezed == nameProduct
          ? _value.nameProduct
          : nameProduct // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeImplCopyWith<$Res> implements $RecipeCopyWith<$Res> {
  factory _$$RecipeImplCopyWith(
          _$RecipeImpl value, $Res Function(_$RecipeImpl) then) =
      __$$RecipeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_recipe') String? idRecipe,
      @JsonKey(name: 'raw_material') String? rawMaterial,
      @JsonKey(name: 'id_product') String? idProduct,
      String? name,
      @JsonKey(name: 'name_product') String? nameProduct,
      String? detail,
      String? stock,
      String? unit});
}

/// @nodoc
class __$$RecipeImplCopyWithImpl<$Res>
    extends _$RecipeCopyWithImpl<$Res, _$RecipeImpl>
    implements _$$RecipeImplCopyWith<$Res> {
  __$$RecipeImplCopyWithImpl(
      _$RecipeImpl _value, $Res Function(_$RecipeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Recipe
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idRecipe = freezed,
    Object? rawMaterial = freezed,
    Object? idProduct = freezed,
    Object? name = freezed,
    Object? nameProduct = freezed,
    Object? detail = freezed,
    Object? stock = freezed,
    Object? unit = freezed,
  }) {
    return _then(_$RecipeImpl(
      idRecipe: freezed == idRecipe
          ? _value.idRecipe
          : idRecipe // ignore: cast_nullable_to_non_nullable
              as String?,
      rawMaterial: freezed == rawMaterial
          ? _value.rawMaterial
          : rawMaterial // ignore: cast_nullable_to_non_nullable
              as String?,
      idProduct: freezed == idProduct
          ? _value.idProduct
          : idProduct // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      nameProduct: freezed == nameProduct
          ? _value.nameProduct
          : nameProduct // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecipeImpl implements _Recipe {
  const _$RecipeImpl(
      {@JsonKey(name: 'id_recipe') this.idRecipe,
      @JsonKey(name: 'raw_material') this.rawMaterial,
      @JsonKey(name: 'id_product') this.idProduct,
      this.name,
      @JsonKey(name: 'name_product') this.nameProduct,
      this.detail,
      this.stock,
      this.unit});

  factory _$RecipeImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecipeImplFromJson(json);

  @override
  @JsonKey(name: 'id_recipe')
  final String? idRecipe;
  @override
  @JsonKey(name: 'raw_material')
  final String? rawMaterial;
  @override
  @JsonKey(name: 'id_product')
  final String? idProduct;
  @override
  final String? name;
  @override
  @JsonKey(name: 'name_product')
  final String? nameProduct;
  @override
  final String? detail;
  @override
  final String? stock;
  @override
  final String? unit;

  @override
  String toString() {
    return 'Recipe(idRecipe: $idRecipe, rawMaterial: $rawMaterial, idProduct: $idProduct, name: $name, nameProduct: $nameProduct, detail: $detail, stock: $stock, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeImpl &&
            (identical(other.idRecipe, idRecipe) ||
                other.idRecipe == idRecipe) &&
            (identical(other.rawMaterial, rawMaterial) ||
                other.rawMaterial == rawMaterial) &&
            (identical(other.idProduct, idProduct) ||
                other.idProduct == idProduct) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.nameProduct, nameProduct) ||
                other.nameProduct == nameProduct) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, idRecipe, rawMaterial, idProduct,
      name, nameProduct, detail, stock, unit);

  /// Create a copy of Recipe
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeImplCopyWith<_$RecipeImpl> get copyWith =>
      __$$RecipeImplCopyWithImpl<_$RecipeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecipeImplToJson(
      this,
    );
  }
}

abstract class _Recipe implements Recipe {
  const factory _Recipe(
      {@JsonKey(name: 'id_recipe') final String? idRecipe,
      @JsonKey(name: 'raw_material') final String? rawMaterial,
      @JsonKey(name: 'id_product') final String? idProduct,
      final String? name,
      @JsonKey(name: 'name_product') final String? nameProduct,
      final String? detail,
      final String? stock,
      final String? unit}) = _$RecipeImpl;

  factory _Recipe.fromJson(Map<String, dynamic> json) = _$RecipeImpl.fromJson;

  @override
  @JsonKey(name: 'id_recipe')
  String? get idRecipe;
  @override
  @JsonKey(name: 'raw_material')
  String? get rawMaterial;
  @override
  @JsonKey(name: 'id_product')
  String? get idProduct;
  @override
  String? get name;
  @override
  @JsonKey(name: 'name_product')
  String? get nameProduct;
  @override
  String? get detail;
  @override
  String? get stock;
  @override
  String? get unit;

  /// Create a copy of Recipe
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecipeImplCopyWith<_$RecipeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
