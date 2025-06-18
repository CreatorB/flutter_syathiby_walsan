// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_transfer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailTransfer _$DetailTransferFromJson(Map<String, dynamic> json) {
  return _DetailTransfer.fromJson(json);
}

/// @nodoc
mixin _$DetailTransfer {
  Struk? get struk => throw _privateConstructorUsedError;
  List<Data>? get data => throw _privateConstructorUsedError;

  /// Serializes this DetailTransfer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailTransfer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailTransferCopyWith<DetailTransfer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailTransferCopyWith<$Res> {
  factory $DetailTransferCopyWith(
          DetailTransfer value, $Res Function(DetailTransfer) then) =
      _$DetailTransferCopyWithImpl<$Res, DetailTransfer>;
  @useResult
  $Res call({Struk? struk, List<Data>? data});

  $StrukCopyWith<$Res>? get struk;
}

/// @nodoc
class _$DetailTransferCopyWithImpl<$Res, $Val extends DetailTransfer>
    implements $DetailTransferCopyWith<$Res> {
  _$DetailTransferCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailTransfer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? struk = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      struk: freezed == struk
          ? _value.struk
          : struk // ignore: cast_nullable_to_non_nullable
              as Struk?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
    ) as $Val);
  }

  /// Create a copy of DetailTransfer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StrukCopyWith<$Res>? get struk {
    if (_value.struk == null) {
      return null;
    }

    return $StrukCopyWith<$Res>(_value.struk!, (value) {
      return _then(_value.copyWith(struk: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailTransferImplCopyWith<$Res>
    implements $DetailTransferCopyWith<$Res> {
  factory _$$DetailTransferImplCopyWith(_$DetailTransferImpl value,
          $Res Function(_$DetailTransferImpl) then) =
      __$$DetailTransferImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Struk? struk, List<Data>? data});

  @override
  $StrukCopyWith<$Res>? get struk;
}

/// @nodoc
class __$$DetailTransferImplCopyWithImpl<$Res>
    extends _$DetailTransferCopyWithImpl<$Res, _$DetailTransferImpl>
    implements _$$DetailTransferImplCopyWith<$Res> {
  __$$DetailTransferImplCopyWithImpl(
      _$DetailTransferImpl _value, $Res Function(_$DetailTransferImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailTransfer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? struk = freezed,
    Object? data = freezed,
  }) {
    return _then(_$DetailTransferImpl(
      struk: freezed == struk
          ? _value.struk
          : struk // ignore: cast_nullable_to_non_nullable
              as Struk?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailTransferImpl implements _DetailTransfer {
  const _$DetailTransferImpl({this.struk, final List<Data>? data})
      : _data = data;

  factory _$DetailTransferImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailTransferImplFromJson(json);

  @override
  final Struk? struk;
  final List<Data>? _data;
  @override
  List<Data>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DetailTransfer(struk: $struk, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailTransferImpl &&
            (identical(other.struk, struk) || other.struk == struk) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, struk, const DeepCollectionEquality().hash(_data));

  /// Create a copy of DetailTransfer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailTransferImplCopyWith<_$DetailTransferImpl> get copyWith =>
      __$$DetailTransferImplCopyWithImpl<_$DetailTransferImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailTransferImplToJson(
      this,
    );
  }
}

abstract class _DetailTransfer implements DetailTransfer {
  const factory _DetailTransfer({final Struk? struk, final List<Data>? data}) =
      _$DetailTransferImpl;

  factory _DetailTransfer.fromJson(Map<String, dynamic> json) =
      _$DetailTransferImpl.fromJson;

  @override
  Struk? get struk;
  @override
  List<Data>? get data;

  /// Create a copy of DetailTransfer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailTransferImplCopyWith<_$DetailTransferImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Struk _$StrukFromJson(Map<String, dynamic> json) {
  return _Struk.fromJson(json);
}

/// @nodoc
mixin _$Struk {
  String? get nameStore => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get nohp => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get noInvoice => throw _privateConstructorUsedError;
  String? get operator => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get payment => throw _privateConstructorUsedError;
  String? get totalorder => throw _privateConstructorUsedError;
  String? get totalpay => throw _privateConstructorUsedError;
  String? get totallast => throw _privateConstructorUsedError;
  String? get changepay => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  String? get img => throw _privateConstructorUsedError;
  String? get storeDestination => throw _privateConstructorUsedError;
  int? get paper => throw _privateConstructorUsedError;

  /// Serializes this Struk to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Struk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StrukCopyWith<Struk> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StrukCopyWith<$Res> {
  factory $StrukCopyWith(Struk value, $Res Function(Struk) then) =
      _$StrukCopyWithImpl<$Res, Struk>;
  @useResult
  $Res call(
      {String? nameStore,
      String? email,
      String? nohp,
      String? address,
      String? noInvoice,
      String? operator,
      String? date,
      String? payment,
      String? totalorder,
      String? totalpay,
      String? totallast,
      String? changepay,
      String? status,
      String? note,
      String? img,
      String? storeDestination,
      int? paper});
}

/// @nodoc
class _$StrukCopyWithImpl<$Res, $Val extends Struk>
    implements $StrukCopyWith<$Res> {
  _$StrukCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Struk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameStore = freezed,
    Object? email = freezed,
    Object? nohp = freezed,
    Object? address = freezed,
    Object? noInvoice = freezed,
    Object? operator = freezed,
    Object? date = freezed,
    Object? payment = freezed,
    Object? totalorder = freezed,
    Object? totalpay = freezed,
    Object? totallast = freezed,
    Object? changepay = freezed,
    Object? status = freezed,
    Object? note = freezed,
    Object? img = freezed,
    Object? storeDestination = freezed,
    Object? paper = freezed,
  }) {
    return _then(_value.copyWith(
      nameStore: freezed == nameStore
          ? _value.nameStore
          : nameStore // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      nohp: freezed == nohp
          ? _value.nohp
          : nohp // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      noInvoice: freezed == noInvoice
          ? _value.noInvoice
          : noInvoice // ignore: cast_nullable_to_non_nullable
              as String?,
      operator: freezed == operator
          ? _value.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as String?,
      totalorder: freezed == totalorder
          ? _value.totalorder
          : totalorder // ignore: cast_nullable_to_non_nullable
              as String?,
      totalpay: freezed == totalpay
          ? _value.totalpay
          : totalpay // ignore: cast_nullable_to_non_nullable
              as String?,
      totallast: freezed == totallast
          ? _value.totallast
          : totallast // ignore: cast_nullable_to_non_nullable
              as String?,
      changepay: freezed == changepay
          ? _value.changepay
          : changepay // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      storeDestination: freezed == storeDestination
          ? _value.storeDestination
          : storeDestination // ignore: cast_nullable_to_non_nullable
              as String?,
      paper: freezed == paper
          ? _value.paper
          : paper // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StrukImplCopyWith<$Res> implements $StrukCopyWith<$Res> {
  factory _$$StrukImplCopyWith(
          _$StrukImpl value, $Res Function(_$StrukImpl) then) =
      __$$StrukImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? nameStore,
      String? email,
      String? nohp,
      String? address,
      String? noInvoice,
      String? operator,
      String? date,
      String? payment,
      String? totalorder,
      String? totalpay,
      String? totallast,
      String? changepay,
      String? status,
      String? note,
      String? img,
      String? storeDestination,
      int? paper});
}

/// @nodoc
class __$$StrukImplCopyWithImpl<$Res>
    extends _$StrukCopyWithImpl<$Res, _$StrukImpl>
    implements _$$StrukImplCopyWith<$Res> {
  __$$StrukImplCopyWithImpl(
      _$StrukImpl _value, $Res Function(_$StrukImpl) _then)
      : super(_value, _then);

  /// Create a copy of Struk
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameStore = freezed,
    Object? email = freezed,
    Object? nohp = freezed,
    Object? address = freezed,
    Object? noInvoice = freezed,
    Object? operator = freezed,
    Object? date = freezed,
    Object? payment = freezed,
    Object? totalorder = freezed,
    Object? totalpay = freezed,
    Object? totallast = freezed,
    Object? changepay = freezed,
    Object? status = freezed,
    Object? note = freezed,
    Object? img = freezed,
    Object? storeDestination = freezed,
    Object? paper = freezed,
  }) {
    return _then(_$StrukImpl(
      nameStore: freezed == nameStore
          ? _value.nameStore
          : nameStore // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      nohp: freezed == nohp
          ? _value.nohp
          : nohp // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      noInvoice: freezed == noInvoice
          ? _value.noInvoice
          : noInvoice // ignore: cast_nullable_to_non_nullable
              as String?,
      operator: freezed == operator
          ? _value.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      payment: freezed == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as String?,
      totalorder: freezed == totalorder
          ? _value.totalorder
          : totalorder // ignore: cast_nullable_to_non_nullable
              as String?,
      totalpay: freezed == totalpay
          ? _value.totalpay
          : totalpay // ignore: cast_nullable_to_non_nullable
              as String?,
      totallast: freezed == totallast
          ? _value.totallast
          : totallast // ignore: cast_nullable_to_non_nullable
              as String?,
      changepay: freezed == changepay
          ? _value.changepay
          : changepay // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      storeDestination: freezed == storeDestination
          ? _value.storeDestination
          : storeDestination // ignore: cast_nullable_to_non_nullable
              as String?,
      paper: freezed == paper
          ? _value.paper
          : paper // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StrukImpl implements _Struk {
  const _$StrukImpl(
      {this.nameStore,
      this.email,
      this.nohp,
      this.address,
      this.noInvoice,
      this.operator,
      this.date,
      this.payment,
      this.totalorder,
      this.totalpay,
      this.totallast,
      this.changepay,
      this.status,
      this.note,
      this.img,
      this.storeDestination,
      this.paper});

  factory _$StrukImpl.fromJson(Map<String, dynamic> json) =>
      _$$StrukImplFromJson(json);

  @override
  final String? nameStore;
  @override
  final String? email;
  @override
  final String? nohp;
  @override
  final String? address;
  @override
  final String? noInvoice;
  @override
  final String? operator;
  @override
  final String? date;
  @override
  final String? payment;
  @override
  final String? totalorder;
  @override
  final String? totalpay;
  @override
  final String? totallast;
  @override
  final String? changepay;
  @override
  final String? status;
  @override
  final String? note;
  @override
  final String? img;
  @override
  final String? storeDestination;
  @override
  final int? paper;

  @override
  String toString() {
    return 'Struk(nameStore: $nameStore, email: $email, nohp: $nohp, address: $address, noInvoice: $noInvoice, operator: $operator, date: $date, payment: $payment, totalorder: $totalorder, totalpay: $totalpay, totallast: $totallast, changepay: $changepay, status: $status, note: $note, img: $img, storeDestination: $storeDestination, paper: $paper)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StrukImpl &&
            (identical(other.nameStore, nameStore) ||
                other.nameStore == nameStore) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.nohp, nohp) || other.nohp == nohp) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.noInvoice, noInvoice) ||
                other.noInvoice == noInvoice) &&
            (identical(other.operator, operator) ||
                other.operator == operator) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.payment, payment) || other.payment == payment) &&
            (identical(other.totalorder, totalorder) ||
                other.totalorder == totalorder) &&
            (identical(other.totalpay, totalpay) ||
                other.totalpay == totalpay) &&
            (identical(other.totallast, totallast) ||
                other.totallast == totallast) &&
            (identical(other.changepay, changepay) ||
                other.changepay == changepay) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.storeDestination, storeDestination) ||
                other.storeDestination == storeDestination) &&
            (identical(other.paper, paper) || other.paper == paper));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      nameStore,
      email,
      nohp,
      address,
      noInvoice,
      operator,
      date,
      payment,
      totalorder,
      totalpay,
      totallast,
      changepay,
      status,
      note,
      img,
      storeDestination,
      paper);

  /// Create a copy of Struk
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StrukImplCopyWith<_$StrukImpl> get copyWith =>
      __$$StrukImplCopyWithImpl<_$StrukImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StrukImplToJson(
      this,
    );
  }
}

abstract class _Struk implements Struk {
  const factory _Struk(
      {final String? nameStore,
      final String? email,
      final String? nohp,
      final String? address,
      final String? noInvoice,
      final String? operator,
      final String? date,
      final String? payment,
      final String? totalorder,
      final String? totalpay,
      final String? totallast,
      final String? changepay,
      final String? status,
      final String? note,
      final String? img,
      final String? storeDestination,
      final int? paper}) = _$StrukImpl;

  factory _Struk.fromJson(Map<String, dynamic> json) = _$StrukImpl.fromJson;

  @override
  String? get nameStore;
  @override
  String? get email;
  @override
  String? get nohp;
  @override
  String? get address;
  @override
  String? get noInvoice;
  @override
  String? get operator;
  @override
  String? get date;
  @override
  String? get payment;
  @override
  String? get totalorder;
  @override
  String? get totalpay;
  @override
  String? get totallast;
  @override
  String? get changepay;
  @override
  String? get status;
  @override
  String? get note;
  @override
  String? get img;
  @override
  String? get storeDestination;
  @override
  int? get paper;

  /// Create a copy of Struk
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StrukImplCopyWith<_$StrukImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String? get codeproduct => throw _privateConstructorUsedError;
  String? get nameProduct => throw _privateConstructorUsedError;
  String? get noInvoice => throw _privateConstructorUsedError;
  String? get idProduct => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get amount => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  String? get totalprice => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get haveStock => throw _privateConstructorUsedError;
  String? get stock => throw _privateConstructorUsedError;
  String? get img => throw _privateConstructorUsedError;

  /// Serializes this Data to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call(
      {String? codeproduct,
      String? nameProduct,
      String? noInvoice,
      String? idProduct,
      String? date,
      String? amount,
      String? price,
      String? totalprice,
      String? status,
      String? haveStock,
      String? stock,
      String? img});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codeproduct = freezed,
    Object? nameProduct = freezed,
    Object? noInvoice = freezed,
    Object? idProduct = freezed,
    Object? date = freezed,
    Object? amount = freezed,
    Object? price = freezed,
    Object? totalprice = freezed,
    Object? status = freezed,
    Object? haveStock = freezed,
    Object? stock = freezed,
    Object? img = freezed,
  }) {
    return _then(_value.copyWith(
      codeproduct: freezed == codeproduct
          ? _value.codeproduct
          : codeproduct // ignore: cast_nullable_to_non_nullable
              as String?,
      nameProduct: freezed == nameProduct
          ? _value.nameProduct
          : nameProduct // ignore: cast_nullable_to_non_nullable
              as String?,
      noInvoice: freezed == noInvoice
          ? _value.noInvoice
          : noInvoice // ignore: cast_nullable_to_non_nullable
              as String?,
      idProduct: freezed == idProduct
          ? _value.idProduct
          : idProduct // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      totalprice: freezed == totalprice
          ? _value.totalprice
          : totalprice // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      haveStock: freezed == haveStock
          ? _value.haveStock
          : haveStock // ignore: cast_nullable_to_non_nullable
              as String?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? codeproduct,
      String? nameProduct,
      String? noInvoice,
      String? idProduct,
      String? date,
      String? amount,
      String? price,
      String? totalprice,
      String? status,
      String? haveStock,
      String? stock,
      String? img});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codeproduct = freezed,
    Object? nameProduct = freezed,
    Object? noInvoice = freezed,
    Object? idProduct = freezed,
    Object? date = freezed,
    Object? amount = freezed,
    Object? price = freezed,
    Object? totalprice = freezed,
    Object? status = freezed,
    Object? haveStock = freezed,
    Object? stock = freezed,
    Object? img = freezed,
  }) {
    return _then(_$DataImpl(
      codeproduct: freezed == codeproduct
          ? _value.codeproduct
          : codeproduct // ignore: cast_nullable_to_non_nullable
              as String?,
      nameProduct: freezed == nameProduct
          ? _value.nameProduct
          : nameProduct // ignore: cast_nullable_to_non_nullable
              as String?,
      noInvoice: freezed == noInvoice
          ? _value.noInvoice
          : noInvoice // ignore: cast_nullable_to_non_nullable
              as String?,
      idProduct: freezed == idProduct
          ? _value.idProduct
          : idProduct // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      totalprice: freezed == totalprice
          ? _value.totalprice
          : totalprice // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      haveStock: freezed == haveStock
          ? _value.haveStock
          : haveStock // ignore: cast_nullable_to_non_nullable
              as String?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {this.codeproduct,
      this.nameProduct,
      this.noInvoice,
      this.idProduct,
      this.date,
      this.amount,
      this.price,
      this.totalprice,
      this.status,
      this.haveStock,
      this.stock,
      this.img});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final String? codeproduct;
  @override
  final String? nameProduct;
  @override
  final String? noInvoice;
  @override
  final String? idProduct;
  @override
  final String? date;
  @override
  final String? amount;
  @override
  final String? price;
  @override
  final String? totalprice;
  @override
  final String? status;
  @override
  final String? haveStock;
  @override
  final String? stock;
  @override
  final String? img;

  @override
  String toString() {
    return 'Data(codeproduct: $codeproduct, nameProduct: $nameProduct, noInvoice: $noInvoice, idProduct: $idProduct, date: $date, amount: $amount, price: $price, totalprice: $totalprice, status: $status, haveStock: $haveStock, stock: $stock, img: $img)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.codeproduct, codeproduct) ||
                other.codeproduct == codeproduct) &&
            (identical(other.nameProduct, nameProduct) ||
                other.nameProduct == nameProduct) &&
            (identical(other.noInvoice, noInvoice) ||
                other.noInvoice == noInvoice) &&
            (identical(other.idProduct, idProduct) ||
                other.idProduct == idProduct) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.totalprice, totalprice) ||
                other.totalprice == totalprice) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.haveStock, haveStock) ||
                other.haveStock == haveStock) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.img, img) || other.img == img));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      codeproduct,
      nameProduct,
      noInvoice,
      idProduct,
      date,
      amount,
      price,
      totalprice,
      status,
      haveStock,
      stock,
      img);

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(
      {final String? codeproduct,
      final String? nameProduct,
      final String? noInvoice,
      final String? idProduct,
      final String? date,
      final String? amount,
      final String? price,
      final String? totalprice,
      final String? status,
      final String? haveStock,
      final String? stock,
      final String? img}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  String? get codeproduct;
  @override
  String? get nameProduct;
  @override
  String? get noInvoice;
  @override
  String? get idProduct;
  @override
  String? get date;
  @override
  String? get amount;
  @override
  String? get price;
  @override
  String? get totalprice;
  @override
  String? get status;
  @override
  String? get haveStock;
  @override
  String? get stock;
  @override
  String? get img;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
