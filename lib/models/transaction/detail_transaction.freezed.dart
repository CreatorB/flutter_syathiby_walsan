// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailTransaction _$DetailTransactionFromJson(Map<String, dynamic> json) {
  return _DetailTransaction.fromJson(json);
}

/// @nodoc
mixin _$DetailTransaction {
  Struk? get struk => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<TransactionData>? get data => throw _privateConstructorUsedError;

  /// Serializes this DetailTransaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailTransactionCopyWith<DetailTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailTransactionCopyWith<$Res> {
  factory $DetailTransactionCopyWith(
          DetailTransaction value, $Res Function(DetailTransaction) then) =
      _$DetailTransactionCopyWithImpl<$Res, DetailTransaction>;
  @useResult
  $Res call({Struk? struk, @JsonKey(name: 'data') List<TransactionData>? data});

  $StrukCopyWith<$Res>? get struk;
}

/// @nodoc
class _$DetailTransactionCopyWithImpl<$Res, $Val extends DetailTransaction>
    implements $DetailTransactionCopyWith<$Res> {
  _$DetailTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailTransaction
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
              as List<TransactionData>?,
    ) as $Val);
  }

  /// Create a copy of DetailTransaction
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
abstract class _$$DetailTransactionImplCopyWith<$Res>
    implements $DetailTransactionCopyWith<$Res> {
  factory _$$DetailTransactionImplCopyWith(_$DetailTransactionImpl value,
          $Res Function(_$DetailTransactionImpl) then) =
      __$$DetailTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Struk? struk, @JsonKey(name: 'data') List<TransactionData>? data});

  @override
  $StrukCopyWith<$Res>? get struk;
}

/// @nodoc
class __$$DetailTransactionImplCopyWithImpl<$Res>
    extends _$DetailTransactionCopyWithImpl<$Res, _$DetailTransactionImpl>
    implements _$$DetailTransactionImplCopyWith<$Res> {
  __$$DetailTransactionImplCopyWithImpl(_$DetailTransactionImpl _value,
      $Res Function(_$DetailTransactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? struk = freezed,
    Object? data = freezed,
  }) {
    return _then(_$DetailTransactionImpl(
      struk: freezed == struk
          ? _value.struk
          : struk // ignore: cast_nullable_to_non_nullable
              as Struk?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<TransactionData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailTransactionImpl implements _DetailTransaction {
  const _$DetailTransactionImpl(
      {this.struk, @JsonKey(name: 'data') final List<TransactionData>? data})
      : _data = data;

  factory _$DetailTransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailTransactionImplFromJson(json);

  @override
  final Struk? struk;
  final List<TransactionData>? _data;
  @override
  @JsonKey(name: 'data')
  List<TransactionData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DetailTransaction(struk: $struk, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailTransactionImpl &&
            (identical(other.struk, struk) || other.struk == struk) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, struk, const DeepCollectionEquality().hash(_data));

  /// Create a copy of DetailTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailTransactionImplCopyWith<_$DetailTransactionImpl> get copyWith =>
      __$$DetailTransactionImplCopyWithImpl<_$DetailTransactionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailTransactionImplToJson(
      this,
    );
  }
}

abstract class _DetailTransaction implements DetailTransaction {
  const factory _DetailTransaction(
          {final Struk? struk,
          @JsonKey(name: 'data') final List<TransactionData>? data}) =
      _$DetailTransactionImpl;

  factory _DetailTransaction.fromJson(Map<String, dynamic> json) =
      _$DetailTransactionImpl.fromJson;

  @override
  Struk? get struk;
  @override
  @JsonKey(name: 'data')
  List<TransactionData>? get data;

  /// Create a copy of DetailTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailTransactionImplCopyWith<_$DetailTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Struk _$StrukFromJson(Map<String, dynamic> json) {
  return _Struk.fromJson(json);
}

/// @nodoc
mixin _$Struk {
  @JsonKey(name: 'name_store')
  String? get nameStore => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'nohp')
  String? get noHp => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_invoice')
  String? get noInvoice => throw _privateConstructorUsedError;
  @JsonKey(name: 'operator')
  String? get operator => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_customer')
  String? get idCustomer => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_customer')
  String? get nameCustomer => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_table')
  String? get idTable => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_table')
  String? get nameTable => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_supplier')
  String? get idSupplier => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_supplier')
  String? get nameSupplier => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment')
  String? get payment => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalorder')
  int? get totalOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalpay')
  int? get totalPay => throw _privateConstructorUsedError;
  @JsonKey(name: 'totallast')
  int? get totalLast => throw _privateConstructorUsedError;
  @JsonKey(name: 'changepay')
  String? get changePay => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'note')
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: 'due_date')
  String? get dueDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_charge')
  String? get serviceCharge => throw _privateConstructorUsedError;
  @JsonKey(name: 'discount')
  String? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax')
  String? get tax => throw _privateConstructorUsedError;
  @JsonKey(name: 'footer')
  String? get footer => throw _privateConstructorUsedError;
  @JsonKey(name: 'img')
  String? get img => throw _privateConstructorUsedError;
  @JsonKey(name: 'paper')
  int? get paper => throw _privateConstructorUsedError;
  @JsonKey(name: 'link_order')
  String? get linkOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama_kegiatan')
  String? get namaKegiatan => throw _privateConstructorUsedError;
  @JsonKey(name: 'subkegiatan')
  String? get subKegiatan => throw _privateConstructorUsedError;
  @JsonKey(name: 'alokasi')
  String? get alokasi => throw _privateConstructorUsedError;
  @JsonKey(name: 'jeniskegiatan')
  String? get jenisKegiatan => throw _privateConstructorUsedError;
  @JsonKey(name: 'keterangan')
  String? get keterangan => throw _privateConstructorUsedError;
  @JsonKey(name: 'namabidang')
  String? get namaBidang => throw _privateConstructorUsedError;
  @JsonKey(name: 'level')
  String? get level => throw _privateConstructorUsedError;
  @JsonKey(name: 'waktu')
  String? get waktu => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'name_store') String? nameStore,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'nohp') String? noHp,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'no_invoice') String? noInvoice,
      @JsonKey(name: 'operator') String? operator,
      @JsonKey(name: 'id_customer') String? idCustomer,
      @JsonKey(name: 'name_customer') String? nameCustomer,
      @JsonKey(name: 'id_table') String? idTable,
      @JsonKey(name: 'name_table') String? nameTable,
      @JsonKey(name: 'id_supplier') String? idSupplier,
      @JsonKey(name: 'name_supplier') String? nameSupplier,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'payment') String? payment,
      @JsonKey(name: 'totalorder') int? totalOrder,
      @JsonKey(name: 'totalpay') int? totalPay,
      @JsonKey(name: 'totallast') int? totalLast,
      @JsonKey(name: 'changepay') String? changePay,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'note') String? note,
      @JsonKey(name: 'due_date') String? dueDate,
      @JsonKey(name: 'service_charge') String? serviceCharge,
      @JsonKey(name: 'discount') String? discount,
      @JsonKey(name: 'tax') String? tax,
      @JsonKey(name: 'footer') String? footer,
      @JsonKey(name: 'img') String? img,
      @JsonKey(name: 'paper') int? paper,
      @JsonKey(name: 'link_order') String? linkOrder,
      @JsonKey(name: 'nama_kegiatan') String? namaKegiatan,
      @JsonKey(name: 'subkegiatan') String? subKegiatan,
      @JsonKey(name: 'alokasi') String? alokasi,
      @JsonKey(name: 'jeniskegiatan') String? jenisKegiatan,
      @JsonKey(name: 'keterangan') String? keterangan,
      @JsonKey(name: 'namabidang') String? namaBidang,
      @JsonKey(name: 'level') String? level,
      @JsonKey(name: 'waktu') String? waktu});
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
    Object? noHp = freezed,
    Object? address = freezed,
    Object? noInvoice = freezed,
    Object? operator = freezed,
    Object? idCustomer = freezed,
    Object? nameCustomer = freezed,
    Object? idTable = freezed,
    Object? nameTable = freezed,
    Object? idSupplier = freezed,
    Object? nameSupplier = freezed,
    Object? date = freezed,
    Object? payment = freezed,
    Object? totalOrder = freezed,
    Object? totalPay = freezed,
    Object? totalLast = freezed,
    Object? changePay = freezed,
    Object? status = freezed,
    Object? note = freezed,
    Object? dueDate = freezed,
    Object? serviceCharge = freezed,
    Object? discount = freezed,
    Object? tax = freezed,
    Object? footer = freezed,
    Object? img = freezed,
    Object? paper = freezed,
    Object? linkOrder = freezed,
    Object? namaKegiatan = freezed,
    Object? subKegiatan = freezed,
    Object? alokasi = freezed,
    Object? jenisKegiatan = freezed,
    Object? keterangan = freezed,
    Object? namaBidang = freezed,
    Object? level = freezed,
    Object? waktu = freezed,
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
      noHp: freezed == noHp
          ? _value.noHp
          : noHp // ignore: cast_nullable_to_non_nullable
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
      idCustomer: freezed == idCustomer
          ? _value.idCustomer
          : idCustomer // ignore: cast_nullable_to_non_nullable
              as String?,
      nameCustomer: freezed == nameCustomer
          ? _value.nameCustomer
          : nameCustomer // ignore: cast_nullable_to_non_nullable
              as String?,
      idTable: freezed == idTable
          ? _value.idTable
          : idTable // ignore: cast_nullable_to_non_nullable
              as String?,
      nameTable: freezed == nameTable
          ? _value.nameTable
          : nameTable // ignore: cast_nullable_to_non_nullable
              as String?,
      idSupplier: freezed == idSupplier
          ? _value.idSupplier
          : idSupplier // ignore: cast_nullable_to_non_nullable
              as String?,
      nameSupplier: freezed == nameSupplier
          ? _value.nameSupplier
          : nameSupplier // ignore: cast_nullable_to_non_nullable
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
              as int?,
      totalPay: freezed == totalPay
          ? _value.totalPay
          : totalPay // ignore: cast_nullable_to_non_nullable
              as int?,
      totalLast: freezed == totalLast
          ? _value.totalLast
          : totalLast // ignore: cast_nullable_to_non_nullable
              as int?,
      changePay: freezed == changePay
          ? _value.changePay
          : changePay // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceCharge: freezed == serviceCharge
          ? _value.serviceCharge
          : serviceCharge // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as String?,
      footer: freezed == footer
          ? _value.footer
          : footer // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      paper: freezed == paper
          ? _value.paper
          : paper // ignore: cast_nullable_to_non_nullable
              as int?,
      linkOrder: freezed == linkOrder
          ? _value.linkOrder
          : linkOrder // ignore: cast_nullable_to_non_nullable
              as String?,
      namaKegiatan: freezed == namaKegiatan
          ? _value.namaKegiatan
          : namaKegiatan // ignore: cast_nullable_to_non_nullable
              as String?,
      subKegiatan: freezed == subKegiatan
          ? _value.subKegiatan
          : subKegiatan // ignore: cast_nullable_to_non_nullable
              as String?,
      alokasi: freezed == alokasi
          ? _value.alokasi
          : alokasi // ignore: cast_nullable_to_non_nullable
              as String?,
      jenisKegiatan: freezed == jenisKegiatan
          ? _value.jenisKegiatan
          : jenisKegiatan // ignore: cast_nullable_to_non_nullable
              as String?,
      keterangan: freezed == keterangan
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String?,
      namaBidang: freezed == namaBidang
          ? _value.namaBidang
          : namaBidang // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      waktu: freezed == waktu
          ? _value.waktu
          : waktu // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {@JsonKey(name: 'name_store') String? nameStore,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'nohp') String? noHp,
      @JsonKey(name: 'address') String? address,
      @JsonKey(name: 'no_invoice') String? noInvoice,
      @JsonKey(name: 'operator') String? operator,
      @JsonKey(name: 'id_customer') String? idCustomer,
      @JsonKey(name: 'name_customer') String? nameCustomer,
      @JsonKey(name: 'id_table') String? idTable,
      @JsonKey(name: 'name_table') String? nameTable,
      @JsonKey(name: 'id_supplier') String? idSupplier,
      @JsonKey(name: 'name_supplier') String? nameSupplier,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'payment') String? payment,
      @JsonKey(name: 'totalorder') int? totalOrder,
      @JsonKey(name: 'totalpay') int? totalPay,
      @JsonKey(name: 'totallast') int? totalLast,
      @JsonKey(name: 'changepay') String? changePay,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'note') String? note,
      @JsonKey(name: 'due_date') String? dueDate,
      @JsonKey(name: 'service_charge') String? serviceCharge,
      @JsonKey(name: 'discount') String? discount,
      @JsonKey(name: 'tax') String? tax,
      @JsonKey(name: 'footer') String? footer,
      @JsonKey(name: 'img') String? img,
      @JsonKey(name: 'paper') int? paper,
      @JsonKey(name: 'link_order') String? linkOrder,
      @JsonKey(name: 'nama_kegiatan') String? namaKegiatan,
      @JsonKey(name: 'subkegiatan') String? subKegiatan,
      @JsonKey(name: 'alokasi') String? alokasi,
      @JsonKey(name: 'jeniskegiatan') String? jenisKegiatan,
      @JsonKey(name: 'keterangan') String? keterangan,
      @JsonKey(name: 'namabidang') String? namaBidang,
      @JsonKey(name: 'level') String? level,
      @JsonKey(name: 'waktu') String? waktu});
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
    Object? noHp = freezed,
    Object? address = freezed,
    Object? noInvoice = freezed,
    Object? operator = freezed,
    Object? idCustomer = freezed,
    Object? nameCustomer = freezed,
    Object? idTable = freezed,
    Object? nameTable = freezed,
    Object? idSupplier = freezed,
    Object? nameSupplier = freezed,
    Object? date = freezed,
    Object? payment = freezed,
    Object? totalOrder = freezed,
    Object? totalPay = freezed,
    Object? totalLast = freezed,
    Object? changePay = freezed,
    Object? status = freezed,
    Object? note = freezed,
    Object? dueDate = freezed,
    Object? serviceCharge = freezed,
    Object? discount = freezed,
    Object? tax = freezed,
    Object? footer = freezed,
    Object? img = freezed,
    Object? paper = freezed,
    Object? linkOrder = freezed,
    Object? namaKegiatan = freezed,
    Object? subKegiatan = freezed,
    Object? alokasi = freezed,
    Object? jenisKegiatan = freezed,
    Object? keterangan = freezed,
    Object? namaBidang = freezed,
    Object? level = freezed,
    Object? waktu = freezed,
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
      noHp: freezed == noHp
          ? _value.noHp
          : noHp // ignore: cast_nullable_to_non_nullable
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
      idCustomer: freezed == idCustomer
          ? _value.idCustomer
          : idCustomer // ignore: cast_nullable_to_non_nullable
              as String?,
      nameCustomer: freezed == nameCustomer
          ? _value.nameCustomer
          : nameCustomer // ignore: cast_nullable_to_non_nullable
              as String?,
      idTable: freezed == idTable
          ? _value.idTable
          : idTable // ignore: cast_nullable_to_non_nullable
              as String?,
      nameTable: freezed == nameTable
          ? _value.nameTable
          : nameTable // ignore: cast_nullable_to_non_nullable
              as String?,
      idSupplier: freezed == idSupplier
          ? _value.idSupplier
          : idSupplier // ignore: cast_nullable_to_non_nullable
              as String?,
      nameSupplier: freezed == nameSupplier
          ? _value.nameSupplier
          : nameSupplier // ignore: cast_nullable_to_non_nullable
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
              as int?,
      totalPay: freezed == totalPay
          ? _value.totalPay
          : totalPay // ignore: cast_nullable_to_non_nullable
              as int?,
      totalLast: freezed == totalLast
          ? _value.totalLast
          : totalLast // ignore: cast_nullable_to_non_nullable
              as int?,
      changePay: freezed == changePay
          ? _value.changePay
          : changePay // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceCharge: freezed == serviceCharge
          ? _value.serviceCharge
          : serviceCharge // ignore: cast_nullable_to_non_nullable
              as String?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String?,
      tax: freezed == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as String?,
      footer: freezed == footer
          ? _value.footer
          : footer // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      paper: freezed == paper
          ? _value.paper
          : paper // ignore: cast_nullable_to_non_nullable
              as int?,
      linkOrder: freezed == linkOrder
          ? _value.linkOrder
          : linkOrder // ignore: cast_nullable_to_non_nullable
              as String?,
      namaKegiatan: freezed == namaKegiatan
          ? _value.namaKegiatan
          : namaKegiatan // ignore: cast_nullable_to_non_nullable
              as String?,
      subKegiatan: freezed == subKegiatan
          ? _value.subKegiatan
          : subKegiatan // ignore: cast_nullable_to_non_nullable
              as String?,
      alokasi: freezed == alokasi
          ? _value.alokasi
          : alokasi // ignore: cast_nullable_to_non_nullable
              as String?,
      jenisKegiatan: freezed == jenisKegiatan
          ? _value.jenisKegiatan
          : jenisKegiatan // ignore: cast_nullable_to_non_nullable
              as String?,
      keterangan: freezed == keterangan
          ? _value.keterangan
          : keterangan // ignore: cast_nullable_to_non_nullable
              as String?,
      namaBidang: freezed == namaBidang
          ? _value.namaBidang
          : namaBidang // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      waktu: freezed == waktu
          ? _value.waktu
          : waktu // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StrukImpl implements _Struk {
  const _$StrukImpl(
      {@JsonKey(name: 'name_store') this.nameStore,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'nohp') this.noHp,
      @JsonKey(name: 'address') this.address,
      @JsonKey(name: 'no_invoice') this.noInvoice,
      @JsonKey(name: 'operator') this.operator,
      @JsonKey(name: 'id_customer') this.idCustomer,
      @JsonKey(name: 'name_customer') this.nameCustomer,
      @JsonKey(name: 'id_table') this.idTable,
      @JsonKey(name: 'name_table') this.nameTable,
      @JsonKey(name: 'id_supplier') this.idSupplier,
      @JsonKey(name: 'name_supplier') this.nameSupplier,
      @JsonKey(name: 'date') this.date,
      @JsonKey(name: 'payment') this.payment,
      @JsonKey(name: 'totalorder') this.totalOrder,
      @JsonKey(name: 'totalpay') this.totalPay,
      @JsonKey(name: 'totallast') this.totalLast,
      @JsonKey(name: 'changepay') this.changePay,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'note') this.note,
      @JsonKey(name: 'due_date') this.dueDate,
      @JsonKey(name: 'service_charge') this.serviceCharge,
      @JsonKey(name: 'discount') this.discount,
      @JsonKey(name: 'tax') this.tax,
      @JsonKey(name: 'footer') this.footer,
      @JsonKey(name: 'img') this.img,
      @JsonKey(name: 'paper') this.paper,
      @JsonKey(name: 'link_order') this.linkOrder,
      @JsonKey(name: 'nama_kegiatan') this.namaKegiatan,
      @JsonKey(name: 'subkegiatan') this.subKegiatan,
      @JsonKey(name: 'alokasi') this.alokasi,
      @JsonKey(name: 'jeniskegiatan') this.jenisKegiatan,
      @JsonKey(name: 'keterangan') this.keterangan,
      @JsonKey(name: 'namabidang') this.namaBidang,
      @JsonKey(name: 'level') this.level,
      @JsonKey(name: 'waktu') this.waktu});

  factory _$StrukImpl.fromJson(Map<String, dynamic> json) =>
      _$$StrukImplFromJson(json);

  @override
  @JsonKey(name: 'name_store')
  final String? nameStore;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'nohp')
  final String? noHp;
  @override
  @JsonKey(name: 'address')
  final String? address;
  @override
  @JsonKey(name: 'no_invoice')
  final String? noInvoice;
  @override
  @JsonKey(name: 'operator')
  final String? operator;
  @override
  @JsonKey(name: 'id_customer')
  final String? idCustomer;
  @override
  @JsonKey(name: 'name_customer')
  final String? nameCustomer;
  @override
  @JsonKey(name: 'id_table')
  final String? idTable;
  @override
  @JsonKey(name: 'name_table')
  final String? nameTable;
  @override
  @JsonKey(name: 'id_supplier')
  final String? idSupplier;
  @override
  @JsonKey(name: 'name_supplier')
  final String? nameSupplier;
  @override
  @JsonKey(name: 'date')
  final String? date;
  @override
  @JsonKey(name: 'payment')
  final String? payment;
  @override
  @JsonKey(name: 'totalorder')
  final int? totalOrder;
  @override
  @JsonKey(name: 'totalpay')
  final int? totalPay;
  @override
  @JsonKey(name: 'totallast')
  final int? totalLast;
  @override
  @JsonKey(name: 'changepay')
  final String? changePay;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'note')
  final String? note;
  @override
  @JsonKey(name: 'due_date')
  final String? dueDate;
  @override
  @JsonKey(name: 'service_charge')
  final String? serviceCharge;
  @override
  @JsonKey(name: 'discount')
  final String? discount;
  @override
  @JsonKey(name: 'tax')
  final String? tax;
  @override
  @JsonKey(name: 'footer')
  final String? footer;
  @override
  @JsonKey(name: 'img')
  final String? img;
  @override
  @JsonKey(name: 'paper')
  final int? paper;
  @override
  @JsonKey(name: 'link_order')
  final String? linkOrder;
  @override
  @JsonKey(name: 'nama_kegiatan')
  final String? namaKegiatan;
  @override
  @JsonKey(name: 'subkegiatan')
  final String? subKegiatan;
  @override
  @JsonKey(name: 'alokasi')
  final String? alokasi;
  @override
  @JsonKey(name: 'jeniskegiatan')
  final String? jenisKegiatan;
  @override
  @JsonKey(name: 'keterangan')
  final String? keterangan;
  @override
  @JsonKey(name: 'namabidang')
  final String? namaBidang;
  @override
  @JsonKey(name: 'level')
  final String? level;
  @override
  @JsonKey(name: 'waktu')
  final String? waktu;

  @override
  String toString() {
    return 'Struk(nameStore: $nameStore, email: $email, noHp: $noHp, address: $address, noInvoice: $noInvoice, operator: $operator, idCustomer: $idCustomer, nameCustomer: $nameCustomer, idTable: $idTable, nameTable: $nameTable, idSupplier: $idSupplier, nameSupplier: $nameSupplier, date: $date, payment: $payment, totalOrder: $totalOrder, totalPay: $totalPay, totalLast: $totalLast, changePay: $changePay, status: $status, note: $note, dueDate: $dueDate, serviceCharge: $serviceCharge, discount: $discount, tax: $tax, footer: $footer, img: $img, paper: $paper, linkOrder: $linkOrder, namaKegiatan: $namaKegiatan, subKegiatan: $subKegiatan, alokasi: $alokasi, jenisKegiatan: $jenisKegiatan, keterangan: $keterangan, namaBidang: $namaBidang, level: $level, waktu: $waktu)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StrukImpl &&
            (identical(other.nameStore, nameStore) ||
                other.nameStore == nameStore) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.noHp, noHp) || other.noHp == noHp) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.noInvoice, noInvoice) ||
                other.noInvoice == noInvoice) &&
            (identical(other.operator, operator) ||
                other.operator == operator) &&
            (identical(other.idCustomer, idCustomer) ||
                other.idCustomer == idCustomer) &&
            (identical(other.nameCustomer, nameCustomer) ||
                other.nameCustomer == nameCustomer) &&
            (identical(other.idTable, idTable) || other.idTable == idTable) &&
            (identical(other.nameTable, nameTable) ||
                other.nameTable == nameTable) &&
            (identical(other.idSupplier, idSupplier) ||
                other.idSupplier == idSupplier) &&
            (identical(other.nameSupplier, nameSupplier) ||
                other.nameSupplier == nameSupplier) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.payment, payment) || other.payment == payment) &&
            (identical(other.totalOrder, totalOrder) ||
                other.totalOrder == totalOrder) &&
            (identical(other.totalPay, totalPay) ||
                other.totalPay == totalPay) &&
            (identical(other.totalLast, totalLast) ||
                other.totalLast == totalLast) &&
            (identical(other.changePay, changePay) ||
                other.changePay == changePay) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.serviceCharge, serviceCharge) ||
                other.serviceCharge == serviceCharge) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.footer, footer) || other.footer == footer) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.paper, paper) || other.paper == paper) &&
            (identical(other.linkOrder, linkOrder) ||
                other.linkOrder == linkOrder) &&
            (identical(other.namaKegiatan, namaKegiatan) ||
                other.namaKegiatan == namaKegiatan) &&
            (identical(other.subKegiatan, subKegiatan) ||
                other.subKegiatan == subKegiatan) &&
            (identical(other.alokasi, alokasi) || other.alokasi == alokasi) &&
            (identical(other.jenisKegiatan, jenisKegiatan) ||
                other.jenisKegiatan == jenisKegiatan) &&
            (identical(other.keterangan, keterangan) ||
                other.keterangan == keterangan) &&
            (identical(other.namaBidang, namaBidang) ||
                other.namaBidang == namaBidang) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.waktu, waktu) || other.waktu == waktu));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        nameStore,
        email,
        noHp,
        address,
        noInvoice,
        operator,
        idCustomer,
        nameCustomer,
        idTable,
        nameTable,
        idSupplier,
        nameSupplier,
        date,
        payment,
        totalOrder,
        totalPay,
        totalLast,
        changePay,
        status,
        note,
        dueDate,
        serviceCharge,
        discount,
        tax,
        footer,
        img,
        paper,
        linkOrder,
        namaKegiatan,
        subKegiatan,
        alokasi,
        jenisKegiatan,
        keterangan,
        namaBidang,
        level,
        waktu
      ]);

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
      {@JsonKey(name: 'name_store') final String? nameStore,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'nohp') final String? noHp,
      @JsonKey(name: 'address') final String? address,
      @JsonKey(name: 'no_invoice') final String? noInvoice,
      @JsonKey(name: 'operator') final String? operator,
      @JsonKey(name: 'id_customer') final String? idCustomer,
      @JsonKey(name: 'name_customer') final String? nameCustomer,
      @JsonKey(name: 'id_table') final String? idTable,
      @JsonKey(name: 'name_table') final String? nameTable,
      @JsonKey(name: 'id_supplier') final String? idSupplier,
      @JsonKey(name: 'name_supplier') final String? nameSupplier,
      @JsonKey(name: 'date') final String? date,
      @JsonKey(name: 'payment') final String? payment,
      @JsonKey(name: 'totalorder') final int? totalOrder,
      @JsonKey(name: 'totalpay') final int? totalPay,
      @JsonKey(name: 'totallast') final int? totalLast,
      @JsonKey(name: 'changepay') final String? changePay,
      @JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'note') final String? note,
      @JsonKey(name: 'due_date') final String? dueDate,
      @JsonKey(name: 'service_charge') final String? serviceCharge,
      @JsonKey(name: 'discount') final String? discount,
      @JsonKey(name: 'tax') final String? tax,
      @JsonKey(name: 'footer') final String? footer,
      @JsonKey(name: 'img') final String? img,
      @JsonKey(name: 'paper') final int? paper,
      @JsonKey(name: 'link_order') final String? linkOrder,
      @JsonKey(name: 'nama_kegiatan') final String? namaKegiatan,
      @JsonKey(name: 'subkegiatan') final String? subKegiatan,
      @JsonKey(name: 'alokasi') final String? alokasi,
      @JsonKey(name: 'jeniskegiatan') final String? jenisKegiatan,
      @JsonKey(name: 'keterangan') final String? keterangan,
      @JsonKey(name: 'namabidang') final String? namaBidang,
      @JsonKey(name: 'level') final String? level,
      @JsonKey(name: 'waktu') final String? waktu}) = _$StrukImpl;

  factory _Struk.fromJson(Map<String, dynamic> json) = _$StrukImpl.fromJson;

  @override
  @JsonKey(name: 'name_store')
  String? get nameStore;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'nohp')
  String? get noHp;
  @override
  @JsonKey(name: 'address')
  String? get address;
  @override
  @JsonKey(name: 'no_invoice')
  String? get noInvoice;
  @override
  @JsonKey(name: 'operator')
  String? get operator;
  @override
  @JsonKey(name: 'id_customer')
  String? get idCustomer;
  @override
  @JsonKey(name: 'name_customer')
  String? get nameCustomer;
  @override
  @JsonKey(name: 'id_table')
  String? get idTable;
  @override
  @JsonKey(name: 'name_table')
  String? get nameTable;
  @override
  @JsonKey(name: 'id_supplier')
  String? get idSupplier;
  @override
  @JsonKey(name: 'name_supplier')
  String? get nameSupplier;
  @override
  @JsonKey(name: 'date')
  String? get date;
  @override
  @JsonKey(name: 'payment')
  String? get payment;
  @override
  @JsonKey(name: 'totalorder')
  int? get totalOrder;
  @override
  @JsonKey(name: 'totalpay')
  int? get totalPay;
  @override
  @JsonKey(name: 'totallast')
  int? get totalLast;
  @override
  @JsonKey(name: 'changepay')
  String? get changePay;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'note')
  String? get note;
  @override
  @JsonKey(name: 'due_date')
  String? get dueDate;
  @override
  @JsonKey(name: 'service_charge')
  String? get serviceCharge;
  @override
  @JsonKey(name: 'discount')
  String? get discount;
  @override
  @JsonKey(name: 'tax')
  String? get tax;
  @override
  @JsonKey(name: 'footer')
  String? get footer;
  @override
  @JsonKey(name: 'img')
  String? get img;
  @override
  @JsonKey(name: 'paper')
  int? get paper;
  @override
  @JsonKey(name: 'link_order')
  String? get linkOrder;
  @override
  @JsonKey(name: 'nama_kegiatan')
  String? get namaKegiatan;
  @override
  @JsonKey(name: 'subkegiatan')
  String? get subKegiatan;
  @override
  @JsonKey(name: 'alokasi')
  String? get alokasi;
  @override
  @JsonKey(name: 'jeniskegiatan')
  String? get jenisKegiatan;
  @override
  @JsonKey(name: 'keterangan')
  String? get keterangan;
  @override
  @JsonKey(name: 'namabidang')
  String? get namaBidang;
  @override
  @JsonKey(name: 'level')
  String? get level;
  @override
  @JsonKey(name: 'waktu')
  String? get waktu;

  /// Create a copy of Struk
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StrukImplCopyWith<_$StrukImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TransactionData _$TransactionDataFromJson(Map<String, dynamic> json) {
  return _TransactionData.fromJson(json);
}

/// @nodoc
mixin _$TransactionData {
  @JsonKey(name: 'codeproduct')
  String? get codeProduct => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_product')
  String? get nameProduct => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_invoice')
  String? get noInvoice => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_product')
  String? get idProduct => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount')
  dynamic get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  dynamic get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalprice')
  dynamic get totalPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'have_stock')
  String? get haveStock => throw _privateConstructorUsedError;
  @JsonKey(name: 'stock')
  String? get stock => throw _privateConstructorUsedError;
  @JsonKey(name: 'img')
  String? get img => throw _privateConstructorUsedError;
  @JsonKey(name: 'note')
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit')
  String? get unit => throw _privateConstructorUsedError;

  /// Serializes this TransactionData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransactionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionDataCopyWith<TransactionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionDataCopyWith<$Res> {
  factory $TransactionDataCopyWith(
          TransactionData value, $Res Function(TransactionData) then) =
      _$TransactionDataCopyWithImpl<$Res, TransactionData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'codeproduct') String? codeProduct,
      @JsonKey(name: 'name_product') String? nameProduct,
      @JsonKey(name: 'no_invoice') String? noInvoice,
      @JsonKey(name: 'id_product') String? idProduct,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'amount') dynamic amount,
      @JsonKey(name: 'price') dynamic price,
      @JsonKey(name: 'totalprice') dynamic totalPrice,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'have_stock') String? haveStock,
      @JsonKey(name: 'stock') String? stock,
      @JsonKey(name: 'img') String? img,
      @JsonKey(name: 'note') String? note,
      @JsonKey(name: 'unit') String? unit});
}

/// @nodoc
class _$TransactionDataCopyWithImpl<$Res, $Val extends TransactionData>
    implements $TransactionDataCopyWith<$Res> {
  _$TransactionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codeProduct = freezed,
    Object? nameProduct = freezed,
    Object? noInvoice = freezed,
    Object? idProduct = freezed,
    Object? date = freezed,
    Object? amount = freezed,
    Object? price = freezed,
    Object? totalPrice = freezed,
    Object? status = freezed,
    Object? haveStock = freezed,
    Object? stock = freezed,
    Object? img = freezed,
    Object? note = freezed,
    Object? unit = freezed,
  }) {
    return _then(_value.copyWith(
      codeProduct: freezed == codeProduct
          ? _value.codeProduct
          : codeProduct // ignore: cast_nullable_to_non_nullable
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
              as dynamic,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionDataImplCopyWith<$Res>
    implements $TransactionDataCopyWith<$Res> {
  factory _$$TransactionDataImplCopyWith(_$TransactionDataImpl value,
          $Res Function(_$TransactionDataImpl) then) =
      __$$TransactionDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'codeproduct') String? codeProduct,
      @JsonKey(name: 'name_product') String? nameProduct,
      @JsonKey(name: 'no_invoice') String? noInvoice,
      @JsonKey(name: 'id_product') String? idProduct,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'amount') dynamic amount,
      @JsonKey(name: 'price') dynamic price,
      @JsonKey(name: 'totalprice') dynamic totalPrice,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'have_stock') String? haveStock,
      @JsonKey(name: 'stock') String? stock,
      @JsonKey(name: 'img') String? img,
      @JsonKey(name: 'note') String? note,
      @JsonKey(name: 'unit') String? unit});
}

/// @nodoc
class __$$TransactionDataImplCopyWithImpl<$Res>
    extends _$TransactionDataCopyWithImpl<$Res, _$TransactionDataImpl>
    implements _$$TransactionDataImplCopyWith<$Res> {
  __$$TransactionDataImplCopyWithImpl(
      _$TransactionDataImpl _value, $Res Function(_$TransactionDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? codeProduct = freezed,
    Object? nameProduct = freezed,
    Object? noInvoice = freezed,
    Object? idProduct = freezed,
    Object? date = freezed,
    Object? amount = freezed,
    Object? price = freezed,
    Object? totalPrice = freezed,
    Object? status = freezed,
    Object? haveStock = freezed,
    Object? stock = freezed,
    Object? img = freezed,
    Object? note = freezed,
    Object? unit = freezed,
  }) {
    return _then(_$TransactionDataImpl(
      codeProduct: freezed == codeProduct
          ? _value.codeProduct
          : codeProduct // ignore: cast_nullable_to_non_nullable
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
              as dynamic,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalPrice: freezed == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
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
class _$TransactionDataImpl implements _TransactionData {
  const _$TransactionDataImpl(
      {@JsonKey(name: 'codeproduct') this.codeProduct,
      @JsonKey(name: 'name_product') this.nameProduct,
      @JsonKey(name: 'no_invoice') this.noInvoice,
      @JsonKey(name: 'id_product') this.idProduct,
      @JsonKey(name: 'date') this.date,
      @JsonKey(name: 'amount') this.amount,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'totalprice') this.totalPrice,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'have_stock') this.haveStock,
      @JsonKey(name: 'stock') this.stock,
      @JsonKey(name: 'img') this.img,
      @JsonKey(name: 'note') this.note,
      @JsonKey(name: 'unit') this.unit});

  factory _$TransactionDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionDataImplFromJson(json);

  @override
  @JsonKey(name: 'codeproduct')
  final String? codeProduct;
  @override
  @JsonKey(name: 'name_product')
  final String? nameProduct;
  @override
  @JsonKey(name: 'no_invoice')
  final String? noInvoice;
  @override
  @JsonKey(name: 'id_product')
  final String? idProduct;
  @override
  @JsonKey(name: 'date')
  final String? date;
  @override
  @JsonKey(name: 'amount')
  final dynamic amount;
  @override
  @JsonKey(name: 'price')
  final dynamic price;
  @override
  @JsonKey(name: 'totalprice')
  final dynamic totalPrice;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'have_stock')
  final String? haveStock;
  @override
  @JsonKey(name: 'stock')
  final String? stock;
  @override
  @JsonKey(name: 'img')
  final String? img;
  @override
  @JsonKey(name: 'note')
  final String? note;
  @override
  @JsonKey(name: 'unit')
  final String? unit;

  @override
  String toString() {
    return 'TransactionData(codeProduct: $codeProduct, nameProduct: $nameProduct, noInvoice: $noInvoice, idProduct: $idProduct, date: $date, amount: $amount, price: $price, totalPrice: $totalPrice, status: $status, haveStock: $haveStock, stock: $stock, img: $img, note: $note, unit: $unit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionDataImpl &&
            (identical(other.codeProduct, codeProduct) ||
                other.codeProduct == codeProduct) &&
            (identical(other.nameProduct, nameProduct) ||
                other.nameProduct == nameProduct) &&
            (identical(other.noInvoice, noInvoice) ||
                other.noInvoice == noInvoice) &&
            (identical(other.idProduct, idProduct) ||
                other.idProduct == idProduct) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other.totalPrice, totalPrice) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.haveStock, haveStock) ||
                other.haveStock == haveStock) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      codeProduct,
      nameProduct,
      noInvoice,
      idProduct,
      date,
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(totalPrice),
      status,
      haveStock,
      stock,
      img,
      note,
      unit);

  /// Create a copy of TransactionData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionDataImplCopyWith<_$TransactionDataImpl> get copyWith =>
      __$$TransactionDataImplCopyWithImpl<_$TransactionDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionDataImplToJson(
      this,
    );
  }
}

abstract class _TransactionData implements TransactionData {
  const factory _TransactionData(
      {@JsonKey(name: 'codeproduct') final String? codeProduct,
      @JsonKey(name: 'name_product') final String? nameProduct,
      @JsonKey(name: 'no_invoice') final String? noInvoice,
      @JsonKey(name: 'id_product') final String? idProduct,
      @JsonKey(name: 'date') final String? date,
      @JsonKey(name: 'amount') final dynamic amount,
      @JsonKey(name: 'price') final dynamic price,
      @JsonKey(name: 'totalprice') final dynamic totalPrice,
      @JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'have_stock') final String? haveStock,
      @JsonKey(name: 'stock') final String? stock,
      @JsonKey(name: 'img') final String? img,
      @JsonKey(name: 'note') final String? note,
      @JsonKey(name: 'unit') final String? unit}) = _$TransactionDataImpl;

  factory _TransactionData.fromJson(Map<String, dynamic> json) =
      _$TransactionDataImpl.fromJson;

  @override
  @JsonKey(name: 'codeproduct')
  String? get codeProduct;
  @override
  @JsonKey(name: 'name_product')
  String? get nameProduct;
  @override
  @JsonKey(name: 'no_invoice')
  String? get noInvoice;
  @override
  @JsonKey(name: 'id_product')
  String? get idProduct;
  @override
  @JsonKey(name: 'date')
  String? get date;
  @override
  @JsonKey(name: 'amount')
  dynamic get amount;
  @override
  @JsonKey(name: 'price')
  dynamic get price;
  @override
  @JsonKey(name: 'totalprice')
  dynamic get totalPrice;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'have_stock')
  String? get haveStock;
  @override
  @JsonKey(name: 'stock')
  String? get stock;
  @override
  @JsonKey(name: 'img')
  String? get img;
  @override
  @JsonKey(name: 'note')
  String? get note;
  @override
  @JsonKey(name: 'unit')
  String? get unit;

  /// Create a copy of TransactionData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionDataImplCopyWith<_$TransactionDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
