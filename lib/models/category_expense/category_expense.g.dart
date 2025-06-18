// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_expense.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryExpenseImpl _$$CategoryExpenseImplFromJson(
        Map<String, dynamic> json) =>
    _$CategoryExpenseImpl(
      idExpenseCategory: json['id_expense_category'] as String?,
      nameExpenseCategory: json['name_expense_category'] as String? ?? '',
    );

Map<String, dynamic> _$$CategoryExpenseImplToJson(
        _$CategoryExpenseImpl instance) =>
    <String, dynamic>{
      'id_expense_category': instance.idExpenseCategory,
      'name_expense_category': instance.nameExpenseCategory,
    };
