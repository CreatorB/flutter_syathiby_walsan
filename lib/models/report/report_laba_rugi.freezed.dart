// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_laba_rugi.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReportLabaRugi _$ReportLabaRugiFromJson(Map<String, dynamic> json) {
  return _ReportLabaRugi.fromJson(json);
}

/// @nodoc
mixin _$ReportLabaRugi {
  Info? get info => throw _privateConstructorUsedError;
  Keuangan? get financialStatements => throw _privateConstructorUsedError;
  List<Penjualan>? get salesReport => throw _privateConstructorUsedError;

  /// Serializes this ReportLabaRugi to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReportLabaRugi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportLabaRugiCopyWith<ReportLabaRugi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportLabaRugiCopyWith<$Res> {
  factory $ReportLabaRugiCopyWith(
          ReportLabaRugi value, $Res Function(ReportLabaRugi) then) =
      _$ReportLabaRugiCopyWithImpl<$Res, ReportLabaRugi>;
  @useResult
  $Res call(
      {Info? info,
      Keuangan? financialStatements,
      List<Penjualan>? salesReport});

  $InfoCopyWith<$Res>? get info;
  $KeuanganCopyWith<$Res>? get financialStatements;
}

/// @nodoc
class _$ReportLabaRugiCopyWithImpl<$Res, $Val extends ReportLabaRugi>
    implements $ReportLabaRugiCopyWith<$Res> {
  _$ReportLabaRugiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportLabaRugi
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = freezed,
    Object? financialStatements = freezed,
    Object? salesReport = freezed,
  }) {
    return _then(_value.copyWith(
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info?,
      financialStatements: freezed == financialStatements
          ? _value.financialStatements
          : financialStatements // ignore: cast_nullable_to_non_nullable
              as Keuangan?,
      salesReport: freezed == salesReport
          ? _value.salesReport
          : salesReport // ignore: cast_nullable_to_non_nullable
              as List<Penjualan>?,
    ) as $Val);
  }

  /// Create a copy of ReportLabaRugi
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

  /// Create a copy of ReportLabaRugi
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $KeuanganCopyWith<$Res>? get financialStatements {
    if (_value.financialStatements == null) {
      return null;
    }

    return $KeuanganCopyWith<$Res>(_value.financialStatements!, (value) {
      return _then(_value.copyWith(financialStatements: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReportLabaRugiImplCopyWith<$Res>
    implements $ReportLabaRugiCopyWith<$Res> {
  factory _$$ReportLabaRugiImplCopyWith(_$ReportLabaRugiImpl value,
          $Res Function(_$ReportLabaRugiImpl) then) =
      __$$ReportLabaRugiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Info? info,
      Keuangan? financialStatements,
      List<Penjualan>? salesReport});

  @override
  $InfoCopyWith<$Res>? get info;
  @override
  $KeuanganCopyWith<$Res>? get financialStatements;
}

/// @nodoc
class __$$ReportLabaRugiImplCopyWithImpl<$Res>
    extends _$ReportLabaRugiCopyWithImpl<$Res, _$ReportLabaRugiImpl>
    implements _$$ReportLabaRugiImplCopyWith<$Res> {
  __$$ReportLabaRugiImplCopyWithImpl(
      _$ReportLabaRugiImpl _value, $Res Function(_$ReportLabaRugiImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReportLabaRugi
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = freezed,
    Object? financialStatements = freezed,
    Object? salesReport = freezed,
  }) {
    return _then(_$ReportLabaRugiImpl(
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info?,
      financialStatements: freezed == financialStatements
          ? _value.financialStatements
          : financialStatements // ignore: cast_nullable_to_non_nullable
              as Keuangan?,
      salesReport: freezed == salesReport
          ? _value._salesReport
          : salesReport // ignore: cast_nullable_to_non_nullable
              as List<Penjualan>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportLabaRugiImpl implements _ReportLabaRugi {
  const _$ReportLabaRugiImpl(
      {this.info, this.financialStatements, final List<Penjualan>? salesReport})
      : _salesReport = salesReport;

  factory _$ReportLabaRugiImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportLabaRugiImplFromJson(json);

  @override
  final Info? info;
  @override
  final Keuangan? financialStatements;
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
    return 'ReportLabaRugi(info: $info, financialStatements: $financialStatements, salesReport: $salesReport)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportLabaRugiImpl &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.financialStatements, financialStatements) ||
                other.financialStatements == financialStatements) &&
            const DeepCollectionEquality()
                .equals(other._salesReport, _salesReport));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, info, financialStatements,
      const DeepCollectionEquality().hash(_salesReport));

  /// Create a copy of ReportLabaRugi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportLabaRugiImplCopyWith<_$ReportLabaRugiImpl> get copyWith =>
      __$$ReportLabaRugiImplCopyWithImpl<_$ReportLabaRugiImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportLabaRugiImplToJson(
      this,
    );
  }
}

abstract class _ReportLabaRugi implements ReportLabaRugi {
  const factory _ReportLabaRugi(
      {final Info? info,
      final Keuangan? financialStatements,
      final List<Penjualan>? salesReport}) = _$ReportLabaRugiImpl;

  factory _ReportLabaRugi.fromJson(Map<String, dynamic> json) =
      _$ReportLabaRugiImpl.fromJson;

  @override
  Info? get info;
  @override
  Keuangan? get financialStatements;
  @override
  List<Penjualan>? get salesReport;

  /// Create a copy of ReportLabaRugi
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportLabaRugiImplCopyWith<_$ReportLabaRugiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Info _$InfoFromJson(Map<String, dynamic> json) {
  return _Info.fromJson(json);
}

/// @nodoc
mixin _$Info {
  @JsonKey(name: 'net_sales')
  String? get netSales => throw _privateConstructorUsedError;
  String? get average => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount_transaction')
  String? get amountTransaction => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'net_sales') String? netSales,
      String? average,
      @JsonKey(name: 'amount_transaction') String? amountTransaction});
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
    Object? netSales = freezed,
    Object? average = freezed,
    Object? amountTransaction = freezed,
  }) {
    return _then(_value.copyWith(
      netSales: freezed == netSales
          ? _value.netSales
          : netSales // ignore: cast_nullable_to_non_nullable
              as String?,
      average: freezed == average
          ? _value.average
          : average // ignore: cast_nullable_to_non_nullable
              as String?,
      amountTransaction: freezed == amountTransaction
          ? _value.amountTransaction
          : amountTransaction // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 'net_sales') String? netSales,
      String? average,
      @JsonKey(name: 'amount_transaction') String? amountTransaction});
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
    Object? netSales = freezed,
    Object? average = freezed,
    Object? amountTransaction = freezed,
  }) {
    return _then(_$InfoImpl(
      netSales: freezed == netSales
          ? _value.netSales
          : netSales // ignore: cast_nullable_to_non_nullable
              as String?,
      average: freezed == average
          ? _value.average
          : average // ignore: cast_nullable_to_non_nullable
              as String?,
      amountTransaction: freezed == amountTransaction
          ? _value.amountTransaction
          : amountTransaction // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InfoImpl implements _Info {
  const _$InfoImpl(
      {@JsonKey(name: 'net_sales') this.netSales,
      this.average,
      @JsonKey(name: 'amount_transaction') this.amountTransaction});

  factory _$InfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InfoImplFromJson(json);

  @override
  @JsonKey(name: 'net_sales')
  final String? netSales;
  @override
  final String? average;
  @override
  @JsonKey(name: 'amount_transaction')
  final String? amountTransaction;

  @override
  String toString() {
    return 'Info(netSales: $netSales, average: $average, amountTransaction: $amountTransaction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfoImpl &&
            (identical(other.netSales, netSales) ||
                other.netSales == netSales) &&
            (identical(other.average, average) || other.average == average) &&
            (identical(other.amountTransaction, amountTransaction) ||
                other.amountTransaction == amountTransaction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, netSales, average, amountTransaction);

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
      {@JsonKey(name: 'net_sales') final String? netSales,
      final String? average,
      @JsonKey(name: 'amount_transaction')
      final String? amountTransaction}) = _$InfoImpl;

  factory _Info.fromJson(Map<String, dynamic> json) = _$InfoImpl.fromJson;

  @override
  @JsonKey(name: 'net_sales')
  String? get netSales;
  @override
  String? get average;
  @override
  @JsonKey(name: 'amount_transaction')
  String? get amountTransaction;

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
  @JsonKey(name: 'totalprice')
  String? get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'selling_price')
  String? get sellingPrice => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'totalprice') String? totalPrice,
      @JsonKey(name: 'selling_price') String? sellingPrice});
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
    Object? totalPrice = freezed,
    Object? sellingPrice = freezed,
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
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: 'totalprice') String? totalPrice,
      @JsonKey(name: 'selling_price') String? sellingPrice});
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
    Object? totalPrice = freezed,
    Object? sellingPrice = freezed,
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
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      sellingPrice: freezed == sellingPrice
          ? _value.sellingPrice
          : sellingPrice // ignore: cast_nullable_to_non_nullable
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
      @JsonKey(name: 'totalprice') this.totalPrice,
      @JsonKey(name: 'selling_price') this.sellingPrice});

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
  @JsonKey(name: 'totalprice')
  final String? totalPrice;
  @override
  @JsonKey(name: 'selling_price')
  final String? sellingPrice;

  @override
  String toString() {
    return 'Penjualan(idProduct: $idProduct, nameProduct: $nameProduct, amount: $amount, totalPrice: $totalPrice, sellingPrice: $sellingPrice)';
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
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice) &&
            (identical(other.sellingPrice, sellingPrice) ||
                other.sellingPrice == sellingPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, idProduct, nameProduct, amount, totalPrice, sellingPrice);

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
          @JsonKey(name: 'totalprice') final String? totalPrice,
          @JsonKey(name: 'selling_price') final String? sellingPrice}) =
      _$PenjualanImpl;

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
  @JsonKey(name: 'totalprice')
  String? get totalPrice;
  @override
  @JsonKey(name: 'selling_price')
  String? get sellingPrice;

  /// Create a copy of Penjualan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PenjualanImplCopyWith<_$PenjualanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Keuangan _$KeuanganFromJson(Map<String, dynamic> json) {
  return _Keuangan.fromJson(json);
}

/// @nodoc
mixin _$Keuangan {
  @JsonKey(name: 'gross_sales')
  String? get grossSales => throw _privateConstructorUsedError;
  String? get discount => throw _privateConstructorUsedError;
  String? get cancellation => throw _privateConstructorUsedError;
  @JsonKey(name: 'net_sales')
  String? get netSales => throw _privateConstructorUsedError;
  String? get tax => throw _privateConstructorUsedError;
  String? get admin => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_income')
  String? get totalIncome => throw _privateConstructorUsedError;
  @JsonKey(name: 'harga_pokok_penjualan')
  String? get hargaPokokPenjualan => throw _privateConstructorUsedError;
  @JsonKey(name: 'gross_profit')
  String? get grossProfit => throw _privateConstructorUsedError;
  String? get expenses => throw _privateConstructorUsedError;

  /// Serializes this Keuangan to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Keuangan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $KeuanganCopyWith<Keuangan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeuanganCopyWith<$Res> {
  factory $KeuanganCopyWith(Keuangan value, $Res Function(Keuangan) then) =
      _$KeuanganCopyWithImpl<$Res, Keuangan>;
  @useResult
  $Res call(
      {@JsonKey(name: 'gross_sales') String? grossSales,
      String? discount,
      String? cancellation,
      @JsonKey(name: 'net_sales') String? netSales,
      String? tax,
      String? admin,
      @JsonKey(name: 'total_income') String? totalIncome,
      @JsonKey(name: 'harga_pokok_penjualan') String? hargaPokokPenjualan,
      @JsonKey(name: 'gross_profit') String? grossProfit,
      String? expenses});
}

/// @nodoc
class _$KeuanganCopyWithImpl<$Res, $Val extends Keuangan>
    implements $KeuanganCopyWith<$Res> {
  _$KeuanganCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Keuangan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grossSales = freezed,
    Object? discount = freezed,
    Object? cancellation = freezed,
    Object? netSales = freezed,
    Object? tax = freezed,
    Object? admin = freezed,
    Object? totalIncome = freezed,
    Object? hargaPokokPenjualan = freezed,
    Object? grossProfit = freezed,
    Object? expenses = freezed,
  }) {
    return _then(_value.copyWith(
      grossSales: freezed == grossSales
          ? _value.grossSales
          : grossSales // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
      cancellation: freezed == cancellation
          ? _value.cancellation
          : cancellation // ignore: cast_nullable_to_non_nullable
              as String?,
      netSales: freezed == netSales
          ? _value.netSales
          : netSales // ignore: cast_nullable_to_non_nullable
              as String?,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as String?,
      admin: freezed == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as String?,
      totalIncome: freezed == totalIncome
          ? _value.totalIncome
          : totalIncome // ignore: cast_nullable_to_non_nullable
              as String?,
      hargaPokokPenjualan: freezed == hargaPokokPenjualan
          ? _value.hargaPokokPenjualan
          : hargaPokokPenjualan // ignore: cast_nullable_to_non_nullable
              as String?,
      grossProfit: freezed == grossProfit
          ? _value.grossProfit
          : grossProfit // ignore: cast_nullable_to_non_nullable
              as String?,
      expenses: freezed == expenses
          ? _value.expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KeuanganImplCopyWith<$Res>
    implements $KeuanganCopyWith<$Res> {
  factory _$$KeuanganImplCopyWith(
          _$KeuanganImpl value, $Res Function(_$KeuanganImpl) then) =
      __$$KeuanganImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'gross_sales') String? grossSales,
      String? discount,
      String? cancellation,
      @JsonKey(name: 'net_sales') String? netSales,
      String? tax,
      String? admin,
      @JsonKey(name: 'total_income') String? totalIncome,
      @JsonKey(name: 'harga_pokok_penjualan') String? hargaPokokPenjualan,
      @JsonKey(name: 'gross_profit') String? grossProfit,
      String? expenses});
}

/// @nodoc
class __$$KeuanganImplCopyWithImpl<$Res>
    extends _$KeuanganCopyWithImpl<$Res, _$KeuanganImpl>
    implements _$$KeuanganImplCopyWith<$Res> {
  __$$KeuanganImplCopyWithImpl(
      _$KeuanganImpl _value, $Res Function(_$KeuanganImpl) _then)
      : super(_value, _then);

  /// Create a copy of Keuangan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? grossSales = freezed,
    Object? discount = freezed,
    Object? cancellation = freezed,
    Object? netSales = freezed,
    Object? tax = freezed,
    Object? admin = freezed,
    Object? totalIncome = freezed,
    Object? hargaPokokPenjualan = freezed,
    Object? grossProfit = freezed,
    Object? expenses = freezed,
  }) {
    return _then(_$KeuanganImpl(
      grossSales: freezed == grossSales
          ? _value.grossSales
          : grossSales // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
      cancellation: freezed == cancellation
          ? _value.cancellation
          : cancellation // ignore: cast_nullable_to_non_nullable
              as String?,
      netSales: freezed == netSales
          ? _value.netSales
          : netSales // ignore: cast_nullable_to_non_nullable
              as String?,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as String?,
      admin: freezed == admin
          ? _value.admin
          : admin // ignore: cast_nullable_to_non_nullable
              as String?,
      totalIncome: freezed == totalIncome
          ? _value.totalIncome
          : totalIncome // ignore: cast_nullable_to_non_nullable
              as String?,
      hargaPokokPenjualan: freezed == hargaPokokPenjualan
          ? _value.hargaPokokPenjualan
          : hargaPokokPenjualan // ignore: cast_nullable_to_non_nullable
              as String?,
      grossProfit: freezed == grossProfit
          ? _value.grossProfit
          : grossProfit // ignore: cast_nullable_to_non_nullable
              as String?,
      expenses: freezed == expenses
          ? _value.expenses
          : expenses // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KeuanganImpl implements _Keuangan {
  const _$KeuanganImpl(
      {@JsonKey(name: 'gross_sales') this.grossSales,
      this.discount,
      this.cancellation,
      @JsonKey(name: 'net_sales') this.netSales,
      this.tax,
      this.admin,
      @JsonKey(name: 'total_income') this.totalIncome,
      @JsonKey(name: 'harga_pokok_penjualan') this.hargaPokokPenjualan,
      @JsonKey(name: 'gross_profit') this.grossProfit,
      this.expenses});

  factory _$KeuanganImpl.fromJson(Map<String, dynamic> json) =>
      _$$KeuanganImplFromJson(json);

  @override
  @JsonKey(name: 'gross_sales')
  final String? grossSales;
  @override
  final String? discount;
  @override
  final String? cancellation;
  @override
  @JsonKey(name: 'net_sales')
  final String? netSales;
  @override
  final String? tax;
  @override
  final String? admin;
  @override
  @JsonKey(name: 'total_income')
  final String? totalIncome;
  @override
  @JsonKey(name: 'harga_pokok_penjualan')
  final String? hargaPokokPenjualan;
  @override
  @JsonKey(name: 'gross_profit')
  final String? grossProfit;
  @override
  final String? expenses;

  @override
  String toString() {
    return 'Keuangan(grossSales: $grossSales, discount: $discount, cancellation: $cancellation, netSales: $netSales, tax: $tax, admin: $admin, totalIncome: $totalIncome, hargaPokokPenjualan: $hargaPokokPenjualan, grossProfit: $grossProfit, expenses: $expenses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeuanganImpl &&
            (identical(other.grossSales, grossSales) ||
                other.grossSales == grossSales) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.cancellation, cancellation) ||
                other.cancellation == cancellation) &&
            (identical(other.netSales, netSales) ||
                other.netSales == netSales) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.admin, admin) || other.admin == admin) &&
            (identical(other.totalIncome, totalIncome) ||
                other.totalIncome == totalIncome) &&
            (identical(other.hargaPokokPenjualan, hargaPokokPenjualan) ||
                other.hargaPokokPenjualan == hargaPokokPenjualan) &&
            (identical(other.grossProfit, grossProfit) ||
                other.grossProfit == grossProfit) &&
            (identical(other.expenses, expenses) ||
                other.expenses == expenses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      grossSales,
      discount,
      cancellation,
      netSales,
      tax,
      admin,
      totalIncome,
      hargaPokokPenjualan,
      grossProfit,
      expenses);

  /// Create a copy of Keuangan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$KeuanganImplCopyWith<_$KeuanganImpl> get copyWith =>
      __$$KeuanganImplCopyWithImpl<_$KeuanganImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeuanganImplToJson(
      this,
    );
  }
}

abstract class _Keuangan implements Keuangan {
  const factory _Keuangan(
      {@JsonKey(name: 'gross_sales') final String? grossSales,
      final String? discount,
      final String? cancellation,
      @JsonKey(name: 'net_sales') final String? netSales,
      final String? tax,
      final String? admin,
      @JsonKey(name: 'total_income') final String? totalIncome,
      @JsonKey(name: 'harga_pokok_penjualan') final String? hargaPokokPenjualan,
      @JsonKey(name: 'gross_profit') final String? grossProfit,
      final String? expenses}) = _$KeuanganImpl;

  factory _Keuangan.fromJson(Map<String, dynamic> json) =
      _$KeuanganImpl.fromJson;

  @override
  @JsonKey(name: 'gross_sales')
  String? get grossSales;
  @override
  String? get discount;
  @override
  String? get cancellation;
  @override
  @JsonKey(name: 'net_sales')
  String? get netSales;
  @override
  String? get tax;
  @override
  String? get admin;
  @override
  @JsonKey(name: 'total_income')
  String? get totalIncome;
  @override
  @JsonKey(name: 'harga_pokok_penjualan')
  String? get hargaPokokPenjualan;
  @override
  @JsonKey(name: 'gross_profit')
  String? get grossProfit;
  @override
  String? get expenses;

  /// Create a copy of Keuangan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$KeuanganImplCopyWith<_$KeuanganImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
