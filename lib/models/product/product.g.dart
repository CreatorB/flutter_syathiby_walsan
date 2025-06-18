// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      idProduct: json['id_product'] as String?,
      nameProduct: json['name_product'] as String?,
      unit: json['unit'] as String?,
      img: json['img'] as String?,
      codeProduct: json['codeproduct'] as String?,
      idCategory: json['id_category'] as String?,
      nameCategory: json['name_category'] as String?,
      active: json['active'] as bool?,
      sellingPrice: json['selling_price'],
      purchasePrice: json['purchase_price'],
      stock: (json['stock'] as num?)?.toInt(),
      amount: (json['amount'] as num?)?.toDouble(),
      minimalStock: json['minimalstock'] as String?,
      description: json['description'] as String?,
      discount: json['discount'] as String?,
      posisi: json['posisi'] as bool?,
      online: json['online'] as String?,
      haveStock: json['have_stock'],
      wholesalePrice: json['wholesale_price'],
      tax: json['tax'] as String?,
      inc: json['inc'] as String?,
      idMaster: json['id_master'] as String?,
      alertStock: json['alertstock'] as String?,
      packages: json['packages'] as String?,
      item: json['item'] as String?,
      priceVariant: (json['pricevariant'] as List<dynamic>?)
          ?.map((e) => PriceVariant.fromJson(e as Map<String, dynamic>))
          .toList(),
      addon: (json['addon'] as List<dynamic>?)
          ?.map((e) => AddOn.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'id_product': instance.idProduct,
      'name_product': instance.nameProduct,
      'unit': instance.unit,
      'img': instance.img,
      'codeproduct': instance.codeProduct,
      'id_category': instance.idCategory,
      'name_category': instance.nameCategory,
      'active': instance.active,
      'selling_price': instance.sellingPrice,
      'purchase_price': instance.purchasePrice,
      'stock': instance.stock,
      'amount': instance.amount,
      'minimalstock': instance.minimalStock,
      'description': instance.description,
      'discount': instance.discount,
      'posisi': instance.posisi,
      'online': instance.online,
      'have_stock': instance.haveStock,
      'wholesale_price': instance.wholesalePrice,
      'tax': instance.tax,
      'inc': instance.inc,
      'id_master': instance.idMaster,
      'alertstock': instance.alertStock,
      'packages': instance.packages,
      'item': instance.item,
      'pricevariant': instance.priceVariant,
      'addon': instance.addon,
    };
