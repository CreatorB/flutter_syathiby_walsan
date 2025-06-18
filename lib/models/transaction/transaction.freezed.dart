// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Transaction _$TransactionFromJson(Map<String, dynamic> json) {
  return _Transaction.fromJson(json);
}

/// @nodoc
mixin _$Transaction {
  @JsonKey(name: 'uuid')
  String? get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_product')
  String? get nameProduct => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_supplier')
  String? get nameSupplier => throw _privateConstructorUsedError;
  @JsonKey(name: 'img')
  String? get img => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_invoice')
  String? get noInvoice => throw _privateConstructorUsedError;
  @JsonKey(name: 'oleh')
  String? get oleh => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment')
  String? get payment => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalorder')
  String? get totalOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalpay')
  int? get totalPay => throw _privateConstructorUsedError;
  @JsonKey(name: 'nominal')
  String? get nominal => throw _privateConstructorUsedError;
  @JsonKey(name: 'by')
  String? get by => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_table')
  String? get nameTable => throw _privateConstructorUsedError;

  /// Serializes this Transaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionCopyWith<Transaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionCopyWith<$Res> {
  factory $TransactionCopyWith(
          Transaction value, $Res Function(Transaction) then) =
      _$TransactionCopyWithImpl<$Res, Transaction>;
  @useResult
  $Res call(
      {@JsonKey(name: 'uuid') String? uuid,
      @JsonKey(name: 'name_product') String? nameProduct,
      @JsonKey(name: 'name_supplier') String? nameSupplier,
      @JsonKey(name: 'img') String? img,
      @JsonKey(name: 'no_invoice') String? noInvoice,
      @JsonKey(name: 'oleh') String? oleh,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'payment') String? payment,
      @JsonKey(name: 'totalorder') String? totalOrder,
      @JsonKey(name: 'totalpay') int? totalPay,
      @JsonKey(name: 'nominal') String? nominal,
      @JsonKey(name: 'by') String? by,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'name_table') String? nameTable});
}

/// @nodoc
class _$TransactionCopyWithImpl<$Res, $Val extends Transaction>
    implements $TransactionCopyWith<$Res> {
  _$TransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? nameProduct = freezed,
    Object? nameSupplier = freezed,
    Object? img = freezed,
    Object? noInvoice = freezed,
    Object? oleh = freezed,
    Object? date = freezed,
    Object? payment = freezed,
    Object? totalOrder = freezed,
    Object? totalPay = freezed,
    Object? nominal = freezed,
    Object? by = freezed,
    Object? status = freezed,
    Object? type = freezed,
    Object? nameTable = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      nameProduct: freezed == nameProduct
          ? _value.nameProduct
          : nameProduct // ignore: cast_nullable_to_non_nullable
              as String?,
      nameSupplier: freezed == nameSupplier
          ? _value.nameSupplier
          : nameSupplier // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      noInvoice: freezed == noInvoice
          ? _value.noInvoice
          : noInvoice // ignore: cast_nullable_to_non_nullable
              as String?,
      oleh: freezed == oleh
          ? _value.oleh
          : oleh // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as String?,
      totalOrder: freezed == totalOrder
          ? _value.totalOrder
          : totalOrder // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPay: freezed == totalPay
          ? _value.totalPay
          : totalPay // ignore: cast_nullable_to_non_nullable
              as int?,
      nominal: freezed == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as String?,
      by: freezed == by
          ? _value.by
          : by // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      nameTable: freezed == nameTable
          ? _value.nameTable
          : nameTable // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionImplCopyWith<$Res>
    implements $TransactionCopyWith<$Res> {
  factory _$$TransactionImplCopyWith(
          _$TransactionImpl value, $Res Function(_$TransactionImpl) then) =
      __$$TransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'uuid') String? uuid,
      @JsonKey(name: 'name_product') String? nameProduct,
      @JsonKey(name: 'name_supplier') String? nameSupplier,
      @JsonKey(name: 'img') String? img,
      @JsonKey(name: 'no_invoice') String? noInvoice,
      @JsonKey(name: 'oleh') String? oleh,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'payment') String? payment,
      @JsonKey(name: 'totalorder') String? totalOrder,
      @JsonKey(name: 'totalpay') int? totalPay,
      @JsonKey(name: 'nominal') String? nominal,
      @JsonKey(name: 'by') String? by,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'type') String? type,
      @JsonKey(name: 'name_table') String? nameTable});
}

/// @nodoc
class __$$TransactionImplCopyWithImpl<$Res>
    extends _$TransactionCopyWithImpl<$Res, _$TransactionImpl>
    implements _$$TransactionImplCopyWith<$Res> {
  __$$TransactionImplCopyWithImpl(
      _$TransactionImpl _value, $Res Function(_$TransactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = freezed,
    Object? nameProduct = freezed,
    Object? nameSupplier = freezed,
    Object? img = freezed,
    Object? noInvoice = freezed,
    Object? oleh = freezed,
    Object? date = freezed,
    Object? payment = freezed,
    Object? totalOrder = freezed,
    Object? totalPay = freezed,
    Object? nominal = freezed,
    Object? by = freezed,
    Object? status = freezed,
    Object? type = freezed,
    Object? nameTable = freezed,
  }) {
    return _then(_$TransactionImpl(
      uuid: freezed == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String?,
      nameProduct: freezed == nameProduct
          ? _value.nameProduct
          : nameProduct // ignore: cast_nullable_to_non_nullable
              as String?,
      nameSupplier: freezed == nameSupplier
          ? _value.nameSupplier
          : nameSupplier // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      noInvoice: freezed == noInvoice
          ? _value.noInvoice
          : noInvoice // ignore: cast_nullable_to_non_nullable
              as String?,
      oleh: freezed == oleh
          ? _value.oleh
          : oleh // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as String?,
      totalOrder: freezed == totalOrder
          ? _value.totalOrder
          : totalOrder // ignore: cast_nullable_to_non_nullable
              as String?,
      totalPay: freezed == totalPay
          ? _value.totalPay
          : totalPay // ignore: cast_nullable_to_non_nullable
              as int?,
      nominal: freezed == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as String?,
      by: freezed == by
          ? _value.by
          : by // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      nameTable: freezed == nameTable
          ? _value.nameTable
          : nameTable // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionImpl implements _Transaction {
  const _$TransactionImpl(
      {@JsonKey(name: 'uuid') this.uuid,
      @JsonKey(name: 'name_product') this.nameProduct,
      @JsonKey(name: 'name_supplier') this.nameSupplier,
      @JsonKey(name: 'img') this.img,
      @JsonKey(name: 'no_invoice') this.noInvoice,
      @JsonKey(name: 'oleh') this.oleh,
      @JsonKey(name: 'date') this.date,
      @JsonKey(name: 'payment') this.payment,
      @JsonKey(name: 'totalorder') this.totalOrder,
      @JsonKey(name: 'totalpay') this.totalPay,
      @JsonKey(name: 'nominal') this.nominal,
      @JsonKey(name: 'by') this.by,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'name_table') this.nameTable});

  factory _$TransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionImplFromJson(json);

  @override
  @JsonKey(name: 'uuid')
  final String? uuid;
  @override
  @JsonKey(name: 'name_product')
  final String? nameProduct;
  @override
  @JsonKey(name: 'name_supplier')
  final String? nameSupplier;
  @override
  @JsonKey(name: 'img')
  final String? img;
  @override
  @JsonKey(name: 'no_invoice')
  final String? noInvoice;
  @override
  @JsonKey(name: 'oleh')
  final String? oleh;
  @override
  @JsonKey(name: 'date')
  final String? date;
  @override
  @JsonKey(name: 'payment')
  final String? payment;
  @override
  @JsonKey(name: 'totalorder')
  final String? totalOrder;
  @override
  @JsonKey(name: 'totalpay')
  final int? totalPay;
  @override
  @JsonKey(name: 'nominal')
  final String? nominal;
  @override
  @JsonKey(name: 'by')
  final String? by;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'type')
  final String? type;
  @override
  @JsonKey(name: 'name_table')
  final String? nameTable;

  @override
  String toString() {
    return 'Transaction(uuid: $uuid, nameProduct: $nameProduct, nameSupplier: $nameSupplier, img: $img, noInvoice: $noInvoice, oleh: $oleh, date: $date, payment: $payment, totalOrder: $totalOrder, totalPay: $totalPay, nominal: $nominal, by: $by, status: $status, type: $type, nameTable: $nameTable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.nameProduct, nameProduct) ||
                other.nameProduct == nameProduct) &&
            (identical(other.nameSupplier, nameSupplier) ||
                other.nameSupplier == nameSupplier) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.noInvoice, noInvoice) ||
                other.noInvoice == noInvoice) &&
            (identical(other.oleh, oleh) || other.oleh == oleh) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.payment, payment) || other.payment == payment) &&
            (identical(other.totalOrder, totalOrder) ||
                other.totalOrder == totalOrder) &&
            (identical(other.totalPay, totalPay) ||
                other.totalPay == totalPay) &&
            (identical(other.nominal, nominal) || other.nominal == nominal) &&
            (identical(other.by, by) || other.by == by) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.nameTable, nameTable) ||
                other.nameTable == nameTable));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uuid,
      nameProduct,
      nameSupplier,
      img,
      noInvoice,
      oleh,
      date,
      payment,
      totalOrder,
      totalPay,
      nominal,
      by,
      status,
      type,
      nameTable);

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      __$$TransactionImplCopyWithImpl<_$TransactionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionImplToJson(
      this,
    );
  }
}

abstract class _Transaction implements Transaction {
  const factory _Transaction(
          {@JsonKey(name: 'uuid') final String? uuid,
          @JsonKey(name: 'name_product') final String? nameProduct,
          @JsonKey(name: 'name_supplier') final String? nameSupplier,
          @JsonKey(name: 'img') final String? img,
          @JsonKey(name: 'no_invoice') final String? noInvoice,
          @JsonKey(name: 'oleh') final String? oleh,
          @JsonKey(name: 'date') final String? date,
          @JsonKey(name: 'payment') final String? payment,
          @JsonKey(name: 'totalorder') final String? totalOrder,
          @JsonKey(name: 'totalpay') final int? totalPay,
          @JsonKey(name: 'nominal') final String? nominal,
          @JsonKey(name: 'by') final String? by,
          @JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'type') final String? type,
          @JsonKey(name: 'name_table') final String? nameTable}) =
      _$TransactionImpl;

  factory _Transaction.fromJson(Map<String, dynamic> json) =
      _$TransactionImpl.fromJson;

  @override
  @JsonKey(name: 'uuid')
  String? get uuid;
  @override
  @JsonKey(name: 'name_product')
  String? get nameProduct;
  @override
  @JsonKey(name: 'name_supplier')
  String? get nameSupplier;
  @override
  @JsonKey(name: 'img')
  String? get img;
  @override
  @JsonKey(name: 'no_invoice')
  String? get noInvoice;
  @override
  @JsonKey(name: 'oleh')
  String? get oleh;
  @override
  @JsonKey(name: 'date')
  String? get date;
  @override
  @JsonKey(name: 'payment')
  String? get payment;
  @override
  @JsonKey(name: 'totalorder')
  String? get totalOrder;
  @override
  @JsonKey(name: 'totalpay')
  int? get totalPay;
  @override
  @JsonKey(name: 'nominal')
  String? get nominal;
  @override
  @JsonKey(name: 'by')
  String? get by;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'type')
  String? get type;
  @override
  @JsonKey(name: 'name_table')
  String? get nameTable;

  /// Create a copy of Transaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionImplCopyWith<_$TransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
