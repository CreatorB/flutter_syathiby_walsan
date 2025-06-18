// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecipeImpl _$$RecipeImplFromJson(Map<String, dynamic> json) => _$RecipeImpl(
      idRecipe: json['id_recipe'] as String?,
      rawMaterial: json['raw_material'] as String?,
      idProduct: json['id_product'] as String?,
      name: json['name'] as String?,
      nameProduct: json['name_product'] as String?,
      detail: json['detail'] as String?,
      stock: json['stock'] as String?,
      unit: json['unit'] as String?,
    );

Map<String, dynamic> _$$RecipeImplToJson(_$RecipeImpl instance) =>
    <String, dynamic>{
      'id_recipe': instance.idRecipe,
      'raw_material': instance.rawMaterial,
      'id_product': instance.idProduct,
      'name': instance.name,
      'name_product': instance.nameProduct,
      'detail': instance.detail,
      'stock': instance.stock,
      'unit': instance.unit,
    };
