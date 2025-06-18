// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_daily.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReportDaily _$ReportDailyFromJson(Map<String, dynamic> json) {
  return _ReportDaily.fromJson(json);
}

/// @nodoc
mixin _$ReportDaily {
  Info? get info => throw _privateConstructorUsedError;
  List<Daily>? get dailyReport => throw _privateConstructorUsedError;

  /// Serializes this ReportDaily to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReportDaily
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportDailyCopyWith<ReportDaily> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportDailyCopyWith<$Res> {
  factory $ReportDailyCopyWith(
          ReportDaily value, $Res Function(ReportDaily) then) =
      _$ReportDailyCopyWithImpl<$Res, ReportDaily>;
  @useResult
  $Res call({Info? info, List<Daily>? dailyReport});

  $InfoCopyWith<$Res>? get info;
}

/// @nodoc
class _$ReportDailyCopyWithImpl<$Res, $Val extends ReportDaily>
    implements $ReportDailyCopyWith<$Res> {
  _$ReportDailyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportDaily
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = freezed,
    Object? dailyReport = freezed,
  }) {
    return _then(_value.copyWith(
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info?,
      dailyReport: freezed == dailyReport
          ? _value.dailyReport
          : dailyReport // ignore: cast_nullable_to_non_nullable
              as List<Daily>?,
    ) as $Val);
  }

  /// Create a copy of ReportDaily
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
abstract class _$$ReportDailyImplCopyWith<$Res>
    implements $ReportDailyCopyWith<$Res> {
  factory _$$ReportDailyImplCopyWith(
          _$ReportDailyImpl value, $Res Function(_$ReportDailyImpl) then) =
      __$$ReportDailyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Info? info, List<Daily>? dailyReport});

  @override
  $InfoCopyWith<$Res>? get info;
}

/// @nodoc
class __$$ReportDailyImplCopyWithImpl<$Res>
    extends _$ReportDailyCopyWithImpl<$Res, _$ReportDailyImpl>
    implements _$$ReportDailyImplCopyWith<$Res> {
  __$$ReportDailyImplCopyWithImpl(
      _$ReportDailyImpl _value, $Res Function(_$ReportDailyImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReportDaily
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = freezed,
    Object? dailyReport = freezed,
  }) {
    return _then(_$ReportDailyImpl(
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info?,
      dailyReport: freezed == dailyReport
          ? _value._dailyReport
          : dailyReport // ignore: cast_nullable_to_non_nullable
              as List<Daily>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportDailyImpl implements _ReportDaily {
  const _$ReportDailyImpl({this.info, final List<Daily>? dailyReport})
      : _dailyReport = dailyReport;

  factory _$ReportDailyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportDailyImplFromJson(json);

  @override
  final Info? info;
  final List<Daily>? _dailyReport;
  @override
  List<Daily>? get dailyReport {
    final value = _dailyReport;
    if (value == null) return null;
    if (_dailyReport is EqualUnmodifiableListView) return _dailyReport;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ReportDaily(info: $info, dailyReport: $dailyReport)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportDailyImpl &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality()
                .equals(other._dailyReport, _dailyReport));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, info, const DeepCollectionEquality().hash(_dailyReport));

  /// Create a copy of ReportDaily
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportDailyImplCopyWith<_$ReportDailyImpl> get copyWith =>
      __$$ReportDailyImplCopyWithImpl<_$ReportDailyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportDailyImplToJson(
      this,
    );
  }
}

abstract class _ReportDaily implements ReportDaily {
  const factory _ReportDaily(
      {final Info? info, final List<Daily>? dailyReport}) = _$ReportDailyImpl;

  factory _ReportDaily.fromJson(Map<String, dynamic> json) =
      _$ReportDailyImpl.fromJson;

  @override
  Info? get info;
  @override
  List<Daily>? get dailyReport;

  /// Create a copy of ReportDaily
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportDailyImplCopyWith<_$ReportDailyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Info _$InfoFromJson(Map<String, dynamic> json) {
  return _Info.fromJson(json);
}

/// @nodoc
mixin _$Info {
  @JsonKey(name: 'name_store')
  String? get nameStore => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get total => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'name_store') String? nameStore,
      String? date,
      String? total});
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
    Object? nameStore = freezed,
    Object? date = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      nameStore: freezed == nameStore
          ? _value.nameStore
          : nameStore // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 'name_store') String? nameStore,
      String? date,
      String? total});
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
    Object? nameStore = freezed,
    Object? date = freezed,
    Object? total = freezed,
  }) {
    return _then(_$InfoImpl(
      nameStore: freezed == nameStore
          ? _value.nameStore
          : nameStore // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      total: freezed == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InfoImpl implements _Info {
  const _$InfoImpl(
      {@JsonKey(name: 'name_store') this.nameStore, this.date, this.total});

  factory _$InfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InfoImplFromJson(json);

  @override
  @JsonKey(name: 'name_store')
  final String? nameStore;
  @override
  final String? date;
  @override
  final String? total;

  @override
  String toString() {
    return 'Info(nameStore: $nameStore, date: $date, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfoImpl &&
            (identical(other.nameStore, nameStore) ||
                other.nameStore == nameStore) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nameStore, date, total);

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
      {@JsonKey(name: 'name_store') final String? nameStore,
      final String? date,
      final String? total}) = _$InfoImpl;

  factory _Info.fromJson(Map<String, dynamic> json) = _$InfoImpl.fromJson;

  @override
  @JsonKey(name: 'name_store')
  String? get nameStore;
  @override
  String? get date;
  @override
  String? get total;

  /// Create a copy of Info
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InfoImplCopyWith<_$InfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Daily _$DailyFromJson(Map<String, dynamic> json) {
  return _Daily.fromJson(json);
}

/// @nodoc
mixin _$Daily {
  String? get operator => throw _privateConstructorUsedError;
  @JsonKey(name: 'sales_cash')
  String? get salesCash => throw _privateConstructorUsedError;
  @JsonKey(name: 'sales_debt')
  String? get salesDebt => throw _privateConstructorUsedError;
  @JsonKey(name: 'sales_credit_card')
  String? get salesCreditCard => throw _privateConstructorUsedError;
  @JsonKey(name: 'sales_debit_card')
  String? get salesDebitCard => throw _privateConstructorUsedError;
  String? get gopay => throw _privateConstructorUsedError;
  String? get ovo => throw _privateConstructorUsedError;
  String? get dana => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_total')
  String? get subTotal => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_store')
  String? get nameStore => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;

  /// Serializes this Daily to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Daily
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyCopyWith<Daily> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyCopyWith<$Res> {
  factory $DailyCopyWith(Daily value, $Res Function(Daily) then) =
      _$DailyCopyWithImpl<$Res, Daily>;
  @useResult
  $Res call(
      {String? operator,
      @JsonKey(name: 'sales_cash') String? salesCash,
      @JsonKey(name: 'sales_debt') String? salesDebt,
      @JsonKey(name: 'sales_credit_card') String? salesCreditCard,
      @JsonKey(name: 'sales_debit_card') String? salesDebitCard,
      String? gopay,
      String? ovo,
      String? dana,
      @JsonKey(name: 'sub_total') String? subTotal,
      @JsonKey(name: 'name_store') String? nameStore,
      String? date});
}

/// @nodoc
class _$DailyCopyWithImpl<$Res, $Val extends Daily>
    implements $DailyCopyWith<$Res> {
  _$DailyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Daily
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? operator = freezed,
    Object? salesCash = freezed,
    Object? salesDebt = freezed,
    Object? salesCreditCard = freezed,
    Object? salesDebitCard = freezed,
    Object? gopay = freezed,
    Object? ovo = freezed,
    Object? dana = freezed,
    Object? subTotal = freezed,
    Object? nameStore = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      operator: freezed == operator
          ? _value.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as String?,
      salesCash: freezed == salesCash
          ? _value.salesCash
          : salesCash // ignore: cast_nullable_to_non_nullable
              as String?,
      salesDebt: freezed == salesDebt
          ? _value.salesDebt
          : salesDebt // ignore: cast_nullable_to_non_nullable
              as String?,
      salesCreditCard: freezed == salesCreditCard
          ? _value.salesCreditCard
          : salesCreditCard // ignore: cast_nullable_to_non_nullable
              as String?,
      salesDebitCard: freezed == salesDebitCard
          ? _value.salesDebitCard
          : salesDebitCard // ignore: cast_nullable_to_non_nullable
              as String?,
      gopay: freezed == gopay
          ? _value.gopay
          : gopay // ignore: cast_nullable_to_non_nullable
              as String?,
      ovo: freezed == ovo
          ? _value.ovo
          : ovo // ignore: cast_nullable_to_non_nullable
              as String?,
      dana: freezed == dana
          ? _value.dana
          : dana // ignore: cast_nullable_to_non_nullable
              as String?,
      subTotal: freezed == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as String?,
      nameStore: freezed == nameStore
          ? _value.nameStore
          : nameStore // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyImplCopyWith<$Res> implements $DailyCopyWith<$Res> {
  factory _$$DailyImplCopyWith(
          _$DailyImpl value, $Res Function(_$DailyImpl) then) =
      __$$DailyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? operator,
      @JsonKey(name: 'sales_cash') String? salesCash,
      @JsonKey(name: 'sales_debt') String? salesDebt,
      @JsonKey(name: 'sales_credit_card') String? salesCreditCard,
      @JsonKey(name: 'sales_debit_card') String? salesDebitCard,
      String? gopay,
      String? ovo,
      String? dana,
      @JsonKey(name: 'sub_total') String? subTotal,
      @JsonKey(name: 'name_store') String? nameStore,
      String? date});
}

/// @nodoc
class __$$DailyImplCopyWithImpl<$Res>
    extends _$DailyCopyWithImpl<$Res, _$DailyImpl>
    implements _$$DailyImplCopyWith<$Res> {
  __$$DailyImplCopyWithImpl(
      _$DailyImpl _value, $Res Function(_$DailyImpl) _then)
      : super(_value, _then);

  /// Create a copy of Daily
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? operator = freezed,
    Object? salesCash = freezed,
    Object? salesDebt = freezed,
    Object? salesCreditCard = freezed,
    Object? salesDebitCard = freezed,
    Object? gopay = freezed,
    Object? ovo = freezed,
    Object? dana = freezed,
    Object? subTotal = freezed,
    Object? nameStore = freezed,
    Object? date = freezed,
  }) {
    return _then(_$DailyImpl(
      operator: freezed == operator
          ? _value.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as String?,
      salesCash: freezed == salesCash
          ? _value.salesCash
          : salesCash // ignore: cast_nullable_to_non_nullable
              as String?,
      salesDebt: freezed == salesDebt
          ? _value.salesDebt
          : salesDebt // ignore: cast_nullable_to_non_nullable
              as String?,
      salesCreditCard: freezed == salesCreditCard
          ? _value.salesCreditCard
          : salesCreditCard // ignore: cast_nullable_to_non_nullable
              as String?,
      salesDebitCard: freezed == salesDebitCard
          ? _value.salesDebitCard
          : salesDebitCard // ignore: cast_nullable_to_non_nullable
              as String?,
      gopay: freezed == gopay
          ? _value.gopay
          : gopay // ignore: cast_nullable_to_non_nullable
              as String?,
      ovo: freezed == ovo
          ? _value.ovo
          : ovo // ignore: cast_nullable_to_non_nullable
              as String?,
      dana: freezed == dana
          ? _value.dana
          : dana // ignore: cast_nullable_to_non_nullable
              as String?,
      subTotal: freezed == subTotal
          ? _value.subTotal
          : subTotal // ignore: cast_nullable_to_non_nullable
              as String?,
      nameStore: freezed == nameStore
          ? _value.nameStore
          : nameStore // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyImpl implements _Daily {
  const _$DailyImpl(
      {this.operator,
      @JsonKey(name: 'sales_cash') this.salesCash,
      @JsonKey(name: 'sales_debt') this.salesDebt,
      @JsonKey(name: 'sales_credit_card') this.salesCreditCard,
      @JsonKey(name: 'sales_debit_card') this.salesDebitCard,
      this.gopay,
      this.ovo,
      this.dana,
      @JsonKey(name: 'sub_total') this.subTotal,
      @JsonKey(name: 'name_store') this.nameStore,
      this.date});

  factory _$DailyImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyImplFromJson(json);

  @override
  final String? operator;
  @override
  @JsonKey(name: 'sales_cash')
  final String? salesCash;
  @override
  @JsonKey(name: 'sales_debt')
  final String? salesDebt;
  @override
  @JsonKey(name: 'sales_credit_card')
  final String? salesCreditCard;
  @override
  @JsonKey(name: 'sales_debit_card')
  final String? salesDebitCard;
  @override
  final String? gopay;
  @override
  final String? ovo;
  @override
  final String? dana;
  @override
  @JsonKey(name: 'sub_total')
  final String? subTotal;
  @override
  @JsonKey(name: 'name_store')
  final String? nameStore;
  @override
  final String? date;

  @override
  String toString() {
    return 'Daily(operator: $operator, salesCash: $salesCash, salesDebt: $salesDebt, salesCreditCard: $salesCreditCard, salesDebitCard: $salesDebitCard, gopay: $gopay, ovo: $ovo, dana: $dana, subTotal: $subTotal, nameStore: $nameStore, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyImpl &&
            (identical(other.operator, operator) ||
                other.operator == operator) &&
            (identical(other.salesCash, salesCash) ||
                other.salesCash == salesCash) &&
            (identical(other.salesDebt, salesDebt) ||
                other.salesDebt == salesDebt) &&
            (identical(other.salesCreditCard, salesCreditCard) ||
                other.salesCreditCard == salesCreditCard) &&
            (identical(other.salesDebitCard, salesDebitCard) ||
                other.salesDebitCard == salesDebitCard) &&
            (identical(other.gopay, gopay) || other.gopay == gopay) &&
            (identical(other.ovo, ovo) || other.ovo == ovo) &&
            (identical(other.dana, dana) || other.dana == dana) &&
            (identical(other.subTotal, subTotal) ||
                other.subTotal == subTotal) &&
            (identical(other.nameStore, nameStore) ||
                other.nameStore == nameStore) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      operator,
      salesCash,
      salesDebt,
      salesCreditCard,
      salesDebitCard,
      gopay,
      ovo,
      dana,
      subTotal,
      nameStore,
      date);

  /// Create a copy of Daily
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyImplCopyWith<_$DailyImpl> get copyWith =>
      __$$DailyImplCopyWithImpl<_$DailyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyImplToJson(
      this,
    );
  }
}

abstract class _Daily implements Daily {
  const factory _Daily(
      {final String? operator,
      @JsonKey(name: 'sales_cash') final String? salesCash,
      @JsonKey(name: 'sales_debt') final String? salesDebt,
      @JsonKey(name: 'sales_credit_card') final String? salesCreditCard,
      @JsonKey(name: 'sales_debit_card') final String? salesDebitCard,
      final String? gopay,
      final String? ovo,
      final String? dana,
      @JsonKey(name: 'sub_total') final String? subTotal,
      @JsonKey(name: 'name_store') final String? nameStore,
      final String? date}) = _$DailyImpl;

  factory _Daily.fromJson(Map<String, dynamic> json) = _$DailyImpl.fromJson;

  @override
  String? get operator;
  @override
  @JsonKey(name: 'sales_cash')
  String? get salesCash;
  @override
  @JsonKey(name: 'sales_debt')
  String? get salesDebt;
  @override
  @JsonKey(name: 'sales_credit_card')
  String? get salesCreditCard;
  @override
  @JsonKey(name: 'sales_debit_card')
  String? get salesDebitCard;
  @override
  String? get gopay;
  @override
  String? get ovo;
  @override
  String? get dana;
  @override
  @JsonKey(name: 'sub_total')
  String? get subTotal;
  @override
  @JsonKey(name: 'name_store')
  String? get nameStore;
  @override
  String? get date;

  /// Create a copy of Daily
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyImplCopyWith<_$DailyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
