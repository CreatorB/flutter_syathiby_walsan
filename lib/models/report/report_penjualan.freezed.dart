// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_penjualan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReportPenjualan _$ReportPenjualanFromJson(Map<String, dynamic> json) {
  return _ReportPenjualan.fromJson(json);
}

/// @nodoc
mixin _$ReportPenjualan {
  Info? get info => throw _privateConstructorUsedError;
  List<Penjualan>? get salesReport => throw _privateConstructorUsedError;

  /// Serializes this ReportPenjualan to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReportPenjualan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportPenjualanCopyWith<ReportPenjualan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportPenjualanCopyWith<$Res> {
  factory $ReportPenjualanCopyWith(
          ReportPenjualan value, $Res Function(ReportPenjualan) then) =
      _$ReportPenjualanCopyWithImpl<$Res, ReportPenjualan>;
  @useResult
  $Res call({Info? info, List<Penjualan>? salesReport});

  $InfoCopyWith<$Res>? get info;
}

/// @nodoc
class _$ReportPenjualanCopyWithImpl<$Res, $Val extends ReportPenjualan>
    implements $ReportPenjualanCopyWith<$Res> {
  _$ReportPenjualanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportPenjualan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = freezed,
    Object? salesReport = freezed,
  }) {
    return _then(_value.copyWith(
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info?,
      salesReport: freezed == salesReport
          ? _value.salesReport
          : salesReport // ignore: cast_nullable_to_non_nullable
              as List<Penjualan>?,
    ) as $Val);
  }

  /// Create a copy of ReportPenjualan
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
abstract class _$$ReportPenjualanImplCopyWith<$Res>
    implements $ReportPenjualanCopyWith<$Res> {
  factory _$$ReportPenjualanImplCopyWith(_$ReportPenjualanImpl value,
          $Res Function(_$ReportPenjualanImpl) then) =
      __$$ReportPenjualanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Info? info, List<Penjualan>? salesReport});

  @override
  $InfoCopyWith<$Res>? get info;
}

/// @nodoc
class __$$ReportPenjualanImplCopyWithImpl<$Res>
    extends _$ReportPenjualanCopyWithImpl<$Res, _$ReportPenjualanImpl>
    implements _$$ReportPenjualanImplCopyWith<$Res> {
  __$$ReportPenjualanImplCopyWithImpl(
      _$ReportPenjualanImpl _value, $Res Function(_$ReportPenjualanImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReportPenjualan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = freezed,
    Object? salesReport = freezed,
  }) {
    return _then(_$ReportPenjualanImpl(
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info?,
      salesReport: freezed == salesReport
          ? _value._salesReport
          : salesReport // ignore: cast_nullable_to_non_nullable
              as List<Penjualan>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportPenjualanImpl implements _ReportPenjualan {
  const _$ReportPenjualanImpl({this.info, final List<Penjualan>? salesReport})
      : _salesReport = salesReport;

  factory _$ReportPenjualanImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportPenjualanImplFromJson(json);

  @override
  final Info? info;
  final List<Penjualan>? _salesReport;
  @override
  List<Penjualan>? get salesReport {
    final value = _salesReport;
    if (value == null) return null;
    if (_salesReport is EqualUnmodifiableListView) return _salesReport;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ReportPenjualan(info: $info, salesReport: $salesReport)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportPenjualanImpl &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality()
                .equals(other._salesReport, _salesReport));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, info, const DeepCollectionEquality().hash(_salesReport));

  /// Create a copy of ReportPenjualan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportPenjualanImplCopyWith<_$ReportPenjualanImpl> get copyWith =>
      __$$ReportPenjualanImplCopyWithImpl<_$ReportPenjualanImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportPenjualanImplToJson(
      this,
    );
  }
}

abstract class _ReportPenjualan implements ReportPenjualan {
  const factory _ReportPenjualan(
      {final Info? info,
      final List<Penjualan>? salesReport}) = _$ReportPenjualanImpl;

  factory _ReportPenjualan.fromJson(Map<String, dynamic> json) =
      _$ReportPenjualanImpl.fromJson;

  @override
  Info? get info;
  @override
  List<Penjualan>? get salesReport;

  /// Create a copy of ReportPenjualan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportPenjualanImplCopyWith<_$ReportPenjualanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Info _$InfoFromJson(Map<String, dynamic> json) {
  return _Info.fromJson(json);
}

/// @nodoc
mixin _$Info {
  @JsonKey(name: 'total_sales')
  String? get totalSales => throw _privateConstructorUsedError;
  String? get average => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_transaction')
  String? get numberTransaction => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get operator => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_store')
  String? get nameStore => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'total_sales') String? totalSales,
      String? average,
      @JsonKey(name: 'number_transaction') String? numberTransaction,
      String? date,
      String? operator,
      @JsonKey(name: 'name_store') String? nameStore});
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
    Object? totalSales = freezed,
    Object? average = freezed,
    Object? numberTransaction = freezed,
    Object? date = freezed,
    Object? operator = freezed,
    Object? nameStore = freezed,
  }) {
    return _then(_value.copyWith(
      totalSales: freezed == totalSales
          ? _value.totalSales
          : totalSales // ignore: cast_nullable_to_non_nullable
              as String?,
      average: freezed == average
          ? _value.average
          : average // ignore: cast_nullable_to_non_nullable
              as String?,
      numberTransaction: freezed == numberTransaction
          ? _value.numberTransaction
          : numberTransaction // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      operator: freezed == operator
          ? _value.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as String?,
      nameStore: freezed == nameStore
          ? _value.nameStore
          : nameStore // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 'total_sales') String? totalSales,
      String? average,
      @JsonKey(name: 'number_transaction') String? numberTransaction,
      String? date,
      String? operator,
      @JsonKey(name: 'name_store') String? nameStore});
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
    Object? totalSales = freezed,
    Object? average = freezed,
    Object? numberTransaction = freezed,
    Object? date = freezed,
    Object? operator = freezed,
    Object? nameStore = freezed,
  }) {
    return _then(_$InfoImpl(
      totalSales: freezed == totalSales
          ? _value.totalSales
          : totalSales // ignore: cast_nullable_to_non_nullable
              as String?,
      average: freezed == average
          ? _value.average
          : average // ignore: cast_nullable_to_non_nullable
              as String?,
      numberTransaction: freezed == numberTransaction
          ? _value.numberTransaction
          : numberTransaction // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      operator: freezed == operator
          ? _value.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as String?,
      nameStore: freezed == nameStore
          ? _value.nameStore
          : nameStore // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InfoImpl implements _Info {
  const _$InfoImpl(
      {@JsonKey(name: 'total_sales') this.totalSales,
      this.average,
      @JsonKey(name: 'number_transaction') this.numberTransaction,
      this.date,
      this.operator,
      @JsonKey(name: 'name_store') this.nameStore});

  factory _$InfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InfoImplFromJson(json);

  @override
  @JsonKey(name: 'total_sales')
  final String? totalSales;
  @override
  final String? average;
  @override
  @JsonKey(name: 'number_transaction')
  final String? numberTransaction;
  @override
  final String? date;
  @override
  final String? operator;
  @override
  @JsonKey(name: 'name_store')
  final String? nameStore;

  @override
  String toString() {
    return 'Info(totalSales: $totalSales, average: $average, numberTransaction: $numberTransaction, date: $date, operator: $operator, nameStore: $nameStore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfoImpl &&
            (identical(other.totalSales, totalSales) ||
                other.totalSales == totalSales) &&
            (identical(other.average, average) || other.average == average) &&
            (identical(other.numberTransaction, numberTransaction) ||
                other.numberTransaction == numberTransaction) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.operator, operator) ||
                other.operator == operator) &&
            (identical(other.nameStore, nameStore) ||
                other.nameStore == nameStore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalSales, average,
      numberTransaction, date, operator, nameStore);

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
      {@JsonKey(name: 'total_sales') final String? totalSales,
      final String? average,
      @JsonKey(name: 'number_transaction') final String? numberTransaction,
      final String? date,
      final String? operator,
      @JsonKey(name: 'name_store') final String? nameStore}) = _$InfoImpl;

  factory _Info.fromJson(Map<String, dynamic> json) = _$InfoImpl.fromJson;

  @override
  @JsonKey(name: 'total_sales')
  String? get totalSales;
  @override
  String? get average;
  @override
  @JsonKey(name: 'number_transaction')
  String? get numberTransaction;
  @override
  String? get date;
  @override
  String? get operator;
  @override
  @JsonKey(name: 'name_store')
  String? get nameStore;

  /// Create a copy of Info
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InfoImplCopyWith<_$InfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Penjualan _$PenjualanFromJson(Map<String, dynamic> json) {
  return _Penjualan.fromJson(json);
}

/// @nodoc
mixin _$Penjualan {
  @JsonKey(name: 'id_product')
  String? get idProduct => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_product')
  String? get nameProduct => throw _privateConstructorUsedError;
  String? get amount => throw _privateConstructorUsedError;
  String? get totalprice => throw _privateConstructorUsedError;
  @JsonKey(name: 'selling_price')
  String? get sellingPrice => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;

  /// Serializes this Penjualan to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Penjualan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PenjualanCopyWith<Penjualan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PenjualanCopyWith<$Res> {
  factory $PenjualanCopyWith(Penjualan value, $Res Function(Penjualan) then) =
      _$PenjualanCopyWithImpl<$Res, Penjualan>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_product') String? idProduct,
      @JsonKey(name: 'name_product') String? nameProduct,
      String? amount,
      String? totalprice,
      @JsonKey(name: 'selling_price') String? sellingPrice,
      String? unit});
}

/// @nodoc
class _$PenjualanCopyWithImpl<$Res, $Val extends Penjualan>
    implements $PenjualanCopyWith<$Res> {
  _$PenjualanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Penjualan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idProduct = freezed,
    Object? nameProduct = freezed,
    Object? amount = freezed,
    Object? totalprice = freezed,
    Object? sellingPrice = freezed,
    Object? unit = freezed,
  }) {
    return _then(_value.copyWith(
      idProduct: freezed == idProduct
          ? _value.idProduct
          : idProduct // ignore: cast_nullable_to_non_nullable
              as String?,
      nameProduct: freezed == nameProduct
          ? _value.nameProduct
          : nameProduct // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      totalprice: freezed == totalprice
          ? _value.totalprice
          : totalprice // ignore: cast_nullable_to_non_nullable
              as String?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PenjualanImplCopyWith<$Res>
    implements $PenjualanCopyWith<$Res> {
  factory _$$PenjualanImplCopyWith(
          _$PenjualanImpl value, $Res Function(_$PenjualanImpl) then) =
      __$$PenjualanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_product') String? idProduct,
      @JsonKey(name: 'name_product') String? nameProduct,
      String? amount,
      String? totalprice,
      @JsonKey(name: 'selling_price') String? sellingPrice,
      String? unit});
}

/// @nodoc
class __$$PenjualanImplCopyWithImpl<$Res>
    extends _$PenjualanCopyWithImpl<$Res, _$PenjualanImpl>
    implements _$$PenjualanImplCopyWith<$Res> {
  __$$PenjualanImplCopyWithImpl(
      _$PenjualanImpl _value, $Res Function(_$PenjualanImpl) _then)
      : super(_value, _then);

  /// Create a copy of Penjualan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idProduct = freezed,
    Object? nameProduct = freezed,
    Object? amount = freezed,
    Object? totalprice = freezed,
    Object? sellingPrice = freezed,
    Object? unit = freezed,
  }) {
    return _then(_$PenjualanImpl(
      idProduct: freezed == idProduct
          ? _value.idProduct
          : idProduct // ignore: cast_nullable_to_non_nullable
              as String?,
      nameProduct: freezed == nameProduct
          ? _value.nameProduct
          : nameProduct // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      totalprice: freezed == totalprice
          ? _value.totalprice
          : totalprice // ignore: cast_nullable_to_non_nullable
              as String?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
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
class _$PenjualanImpl implements _Penjualan {
  const _$PenjualanImpl(
      {@JsonKey(name: 'id_product') this.idProduct,
      @JsonKey(name: 'name_product') this.nameProduct,
      this.amount,
      this.totalprice,
      @JsonKey(name: 'selling_price') this.sellingPrice,
      this.unit});

  factory _$PenjualanImpl.fromJson(Map<String, dynamic> json) =>
      _$$PenjualanImplFromJson(json);

  @override
  @JsonKey(name: 'id_product')
  final String? idProduct;
  @override
  @JsonKey(name: 'name_product')
  final String? nameProduct;
  @override
  final String? amount;
  @override
  final String? totalprice;
  @override
  @JsonKey(name: 'selling_price')
  final String? sellingPrice;
  @override
  final String? unit;

  @override
  String toString() {
    return 'Penjualan(idProduct: $idProduct, nameProduct: $nameProduct, amount: $amount, totalprice: $totalprice, sellingPrice: $sellingPrice, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PenjualanImpl &&
            (identical(other.idProduct, idProduct) ||
                other.idProduct == idProduct) &&
            (identical(other.nameProduct, nameProduct) ||
                other.nameProduct == nameProduct) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.totalprice, totalprice) ||
                other.totalprice == totalprice) &&
            (identical(other.sellingPrice, sellingPrice) ||
                other.sellingPrice == sellingPrice) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, idProduct, nameProduct, amount,
      totalprice, sellingPrice, unit);

  /// Create a copy of Penjualan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PenjualanImplCopyWith<_$PenjualanImpl> get copyWith =>
      __$$PenjualanImplCopyWithImpl<_$PenjualanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PenjualanImplToJson(
      this,
    );
  }
}

abstract class _Penjualan implements Penjualan {
  const factory _Penjualan(
      {@JsonKey(name: 'id_product') final String? idProduct,
      @JsonKey(name: 'name_product') final String? nameProduct,
      final String? amount,
      final String? totalprice,
      @JsonKey(name: 'selling_price') final String? sellingPrice,
      final String? unit}) = _$PenjualanImpl;

  factory _Penjualan.fromJson(Map<String, dynamic> json) =
      _$PenjualanImpl.fromJson;

  @override
  @JsonKey(name: 'id_product')
  String? get idProduct;
  @override
  @JsonKey(name: 'name_product')
  String? get nameProduct;
  @override
  String? get amount;
  @override
  String? get totalprice;
  @override
  @JsonKey(name: 'selling_price')
  String? get sellingPrice;
  @override
  String? get unit;

  /// Create a copy of Penjualan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PenjualanImplCopyWith<_$PenjualanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
