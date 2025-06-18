// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'request_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RequestTransaction _$RequestTransactionFromJson(Map<String, dynamic> json) {
  return _RequestTransaction.fromJson(json);
}

/// @nodoc
mixin _$RequestTransaction {
  @JsonKey(name: 'key')
  String? get key => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_type')
  int? get paymentType => throw _privateConstructorUsedError;
  @JsonKey(name: 'payment_amount')
  int? get paymentAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_order')
  double? get totalOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_customer')
  String? get idCustomer => throw _privateConstructorUsedError;
  @JsonKey(name: 'kurir')
  String? get kurir => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_customer')
  String? get nameCustomer => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_store')
  String? get nameStore => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_store')
  String? get emailStore => throw _privateConstructorUsedError;
  @JsonKey(name: 'nohp_store')
  String? get nohpStore => throw _privateConstructorUsedError;
  @JsonKey(name: 'footer')
  String? get footer => throw _privateConstructorUsedError;
  @JsonKey(name: 'address_store')
  String? get addressStore => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_supplier')
  String? get idSupplier => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_supplier')
  String? get nameSupplier => throw _privateConstructorUsedError;
  @JsonKey(name: 'point')
  String? get point => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_discount')
  String? get idDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'card')
  String? get card => throw _privateConstructorUsedError;
  @JsonKey(name: 'note')
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: 'waktu')
  String? get waktu => throw _privateConstructorUsedError;
  @JsonKey(name: 'due_date')
  String? get dueDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'product')
  List<Barang>? get product => throw _privateConstructorUsedError;
  @JsonKey(name: 'latitude')
  double? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude')
  double? get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_table')
  String? get idTable => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'complaint')
  String? get complaint => throw _privateConstructorUsedError;
  @JsonKey(name: 'advice')
  String? get advice => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_kegiatan')
  String? get nameKegiatan => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_subkegiatan')
  String? get nameSubkegiatan => throw _privateConstructorUsedError;
  @JsonKey(name: 'jeniskegiatan')
  String? get jenisKegiatan => throw _privateConstructorUsedError;

  /// Serializes this RequestTransaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestTransactionCopyWith<RequestTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestTransactionCopyWith<$Res> {
  factory $RequestTransactionCopyWith(
          RequestTransaction value, $Res Function(RequestTransaction) then) =
      _$RequestTransactionCopyWithImpl<$Res, RequestTransaction>;
  @useResult
  $Res call(
      {@JsonKey(name: 'key') String? key,
      @JsonKey(name: 'payment_type') int? paymentType,
      @JsonKey(name: 'payment_amount') int? paymentAmount,
      @JsonKey(name: 'total_order') double? totalOrder,
      @JsonKey(name: 'id_customer') String? idCustomer,
      @JsonKey(name: 'kurir') String? kurir,
      @JsonKey(name: 'name_customer') String? nameCustomer,
      @JsonKey(name: 'name_store') String? nameStore,
      @JsonKey(name: 'email_store') String? emailStore,
      @JsonKey(name: 'nohp_store') String? nohpStore,
      @JsonKey(name: 'footer') String? footer,
      @JsonKey(name: 'address_store') String? addressStore,
      @JsonKey(name: 'id_supplier') String? idSupplier,
      @JsonKey(name: 'name_supplier') String? nameSupplier,
      @JsonKey(name: 'point') String? point,
      @JsonKey(name: 'id_discount') String? idDiscount,
      @JsonKey(name: 'card') String? card,
      @JsonKey(name: 'note') String? note,
      @JsonKey(name: 'waktu') String? waktu,
      @JsonKey(name: 'due_date') String? dueDate,
      @JsonKey(name: 'product') List<Barang>? product,
      @JsonKey(name: 'latitude') double? latitude,
      @JsonKey(name: 'longitude') double? longitude,
      @JsonKey(name: 'id_table') String? idTable,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'complaint') String? complaint,
      @JsonKey(name: 'advice') String? advice,
      @JsonKey(name: 'name_kegiatan') String? nameKegiatan,
      @JsonKey(name: 'name_subkegiatan') String? nameSubkegiatan,
      @JsonKey(name: 'jeniskegiatan') String? jenisKegiatan});
}

/// @nodoc
class _$RequestTransactionCopyWithImpl<$Res, $Val extends RequestTransaction>
    implements $RequestTransactionCopyWith<$Res> {
  _$RequestTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? paymentType = freezed,
    Object? paymentAmount = freezed,
    Object? totalOrder = freezed,
    Object? idCustomer = freezed,
    Object? kurir = freezed,
    Object? nameCustomer = freezed,
    Object? nameStore = freezed,
    Object? emailStore = freezed,
    Object? nohpStore = freezed,
    Object? footer = freezed,
    Object? addressStore = freezed,
    Object? idSupplier = freezed,
    Object? nameSupplier = freezed,
    Object? point = freezed,
    Object? idDiscount = freezed,
    Object? card = freezed,
    Object? note = freezed,
    Object? waktu = freezed,
    Object? dueDate = freezed,
    Object? product = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? idTable = freezed,
    Object? id = freezed,
    Object? complaint = freezed,
    Object? advice = freezed,
    Object? nameKegiatan = freezed,
    Object? nameSubkegiatan = freezed,
    Object? jenisKegiatan = freezed,
  }) {
    return _then(_value.copyWith(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentAmount: freezed == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalOrder: freezed == totalOrder
          ? _value.totalOrder
          : totalOrder // ignore: cast_nullable_to_non_nullable
              as double?,
      idCustomer: freezed == idCustomer
          ? _value.idCustomer
          : idCustomer // ignore: cast_nullable_to_non_nullable
              as String?,
      kurir: freezed == kurir
          ? _value.kurir
          : kurir // ignore: cast_nullable_to_non_nullable
              as String?,
      nameCustomer: freezed == nameCustomer
          ? _value.nameCustomer
          : nameCustomer // ignore: cast_nullable_to_non_nullable
              as String?,
      nameStore: freezed == nameStore
          ? _value.nameStore
          : nameStore // ignore: cast_nullable_to_non_nullable
              as String?,
      emailStore: freezed == emailStore
          ? _value.emailStore
          : emailStore // ignore: cast_nullable_to_non_nullable
              as String?,
      nohpStore: freezed == nohpStore
          ? _value.nohpStore
          : nohpStore // ignore: cast_nullable_to_non_nullable
              as String?,
      footer: freezed == footer
          ? _value.footer
          : footer // ignore: cast_nullable_to_non_nullable
              as String?,
      addressStore: freezed == addressStore
          ? _value.addressStore
          : addressStore // ignore: cast_nullable_to_non_nullable
              as String?,
      idSupplier: freezed == idSupplier
          ? _value.idSupplier
          : idSupplier // ignore: cast_nullable_to_non_nullable
              as String?,
      nameSupplier: freezed == nameSupplier
          ? _value.nameSupplier
          : nameSupplier // ignore: cast_nullable_to_non_nullable
              as String?,
      point: freezed == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as String?,
      idDiscount: freezed == idDiscount
          ? _value.idDiscount
          : idDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      card: freezed == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      waktu: freezed == waktu
          ? _value.waktu
          : waktu // ignore: cast_nullable_to_non_nullable
              as String?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as List<Barang>?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      idTable: freezed == idTable
          ? _value.idTable
          : idTable // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      complaint: freezed == complaint
          ? _value.complaint
          : complaint // ignore: cast_nullable_to_non_nullable
              as String?,
      advice: freezed == advice
          ? _value.advice
          : advice // ignore: cast_nullable_to_non_nullable
              as String?,
      nameKegiatan: freezed == nameKegiatan
          ? _value.nameKegiatan
          : nameKegiatan // ignore: cast_nullable_to_non_nullable
              as String?,
      nameSubkegiatan: freezed == nameSubkegiatan
          ? _value.nameSubkegiatan
          : nameSubkegiatan // ignore: cast_nullable_to_non_nullable
              as String?,
      jenisKegiatan: freezed == jenisKegiatan
          ? _value.jenisKegiatan
          : jenisKegiatan // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RequestTransactionImplCopyWith<$Res>
    implements $RequestTransactionCopyWith<$Res> {
  factory _$$RequestTransactionImplCopyWith(_$RequestTransactionImpl value,
          $Res Function(_$RequestTransactionImpl) then) =
      __$$RequestTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'key') String? key,
      @JsonKey(name: 'payment_type') int? paymentType,
      @JsonKey(name: 'payment_amount') int? paymentAmount,
      @JsonKey(name: 'total_order') double? totalOrder,
      @JsonKey(name: 'id_customer') String? idCustomer,
      @JsonKey(name: 'kurir') String? kurir,
      @JsonKey(name: 'name_customer') String? nameCustomer,
      @JsonKey(name: 'name_store') String? nameStore,
      @JsonKey(name: 'email_store') String? emailStore,
      @JsonKey(name: 'nohp_store') String? nohpStore,
      @JsonKey(name: 'footer') String? footer,
      @JsonKey(name: 'address_store') String? addressStore,
      @JsonKey(name: 'id_supplier') String? idSupplier,
      @JsonKey(name: 'name_supplier') String? nameSupplier,
      @JsonKey(name: 'point') String? point,
      @JsonKey(name: 'id_discount') String? idDiscount,
      @JsonKey(name: 'card') String? card,
      @JsonKey(name: 'note') String? note,
      @JsonKey(name: 'waktu') String? waktu,
      @JsonKey(name: 'due_date') String? dueDate,
      @JsonKey(name: 'product') List<Barang>? product,
      @JsonKey(name: 'latitude') double? latitude,
      @JsonKey(name: 'longitude') double? longitude,
      @JsonKey(name: 'id_table') String? idTable,
      @JsonKey(name: 'id') String? id,
      @JsonKey(name: 'complaint') String? complaint,
      @JsonKey(name: 'advice') String? advice,
      @JsonKey(name: 'name_kegiatan') String? nameKegiatan,
      @JsonKey(name: 'name_subkegiatan') String? nameSubkegiatan,
      @JsonKey(name: 'jeniskegiatan') String? jenisKegiatan});
}

/// @nodoc
class __$$RequestTransactionImplCopyWithImpl<$Res>
    extends _$RequestTransactionCopyWithImpl<$Res, _$RequestTransactionImpl>
    implements _$$RequestTransactionImplCopyWith<$Res> {
  __$$RequestTransactionImplCopyWithImpl(_$RequestTransactionImpl _value,
      $Res Function(_$RequestTransactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of RequestTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = freezed,
    Object? paymentType = freezed,
    Object? paymentAmount = freezed,
    Object? totalOrder = freezed,
    Object? idCustomer = freezed,
    Object? kurir = freezed,
    Object? nameCustomer = freezed,
    Object? nameStore = freezed,
    Object? emailStore = freezed,
    Object? nohpStore = freezed,
    Object? footer = freezed,
    Object? addressStore = freezed,
    Object? idSupplier = freezed,
    Object? nameSupplier = freezed,
    Object? point = freezed,
    Object? idDiscount = freezed,
    Object? card = freezed,
    Object? note = freezed,
    Object? waktu = freezed,
    Object? dueDate = freezed,
    Object? product = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? idTable = freezed,
    Object? id = freezed,
    Object? complaint = freezed,
    Object? advice = freezed,
    Object? nameKegiatan = freezed,
    Object? nameSubkegiatan = freezed,
    Object? jenisKegiatan = freezed,
  }) {
    return _then(_$RequestTransactionImpl(
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      paymentType: freezed == paymentType
          ? _value.paymentType
          : paymentType // ignore: cast_nullable_to_non_nullable
              as int?,
      paymentAmount: freezed == paymentAmount
          ? _value.paymentAmount
          : paymentAmount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalOrder: freezed == totalOrder
          ? _value.totalOrder
          : totalOrder // ignore: cast_nullable_to_non_nullable
              as double?,
      idCustomer: freezed == idCustomer
          ? _value.idCustomer
          : idCustomer // ignore: cast_nullable_to_non_nullable
              as String?,
      kurir: freezed == kurir
          ? _value.kurir
          : kurir // ignore: cast_nullable_to_non_nullable
              as String?,
      nameCustomer: freezed == nameCustomer
          ? _value.nameCustomer
          : nameCustomer // ignore: cast_nullable_to_non_nullable
              as String?,
      nameStore: freezed == nameStore
          ? _value.nameStore
          : nameStore // ignore: cast_nullable_to_non_nullable
              as String?,
      emailStore: freezed == emailStore
          ? _value.emailStore
          : emailStore // ignore: cast_nullable_to_non_nullable
              as String?,
      nohpStore: freezed == nohpStore
          ? _value.nohpStore
          : nohpStore // ignore: cast_nullable_to_non_nullable
              as String?,
      footer: freezed == footer
          ? _value.footer
          : footer // ignore: cast_nullable_to_non_nullable
              as String?,
      addressStore: freezed == addressStore
          ? _value.addressStore
          : addressStore // ignore: cast_nullable_to_non_nullable
              as String?,
      idSupplier: freezed == idSupplier
          ? _value.idSupplier
          : idSupplier // ignore: cast_nullable_to_non_nullable
              as String?,
      nameSupplier: freezed == nameSupplier
          ? _value.nameSupplier
          : nameSupplier // ignore: cast_nullable_to_non_nullable
              as String?,
      point: freezed == point
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as String?,
      idDiscount: freezed == idDiscount
          ? _value.idDiscount
          : idDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      card: freezed == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      waktu: freezed == waktu
          ? _value.waktu
          : waktu // ignore: cast_nullable_to_non_nullable
              as String?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String?,
      product: freezed == product
          ? _value._product
          : product // ignore: cast_nullable_to_non_nullable
              as List<Barang>?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      idTable: freezed == idTable
          ? _value.idTable
          : idTable // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      complaint: freezed == complaint
          ? _value.complaint
          : complaint // ignore: cast_nullable_to_non_nullable
              as String?,
      advice: freezed == advice
          ? _value.advice
          : advice // ignore: cast_nullable_to_non_nullable
              as String?,
      nameKegiatan: freezed == nameKegiatan
          ? _value.nameKegiatan
          : nameKegiatan // ignore: cast_nullable_to_non_nullable
              as String?,
      nameSubkegiatan: freezed == nameSubkegiatan
          ? _value.nameSubkegiatan
          : nameSubkegiatan // ignore: cast_nullable_to_non_nullable
              as String?,
      jenisKegiatan: freezed == jenisKegiatan
          ? _value.jenisKegiatan
          : jenisKegiatan // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$RequestTransactionImpl implements _RequestTransaction {
  const _$RequestTransactionImpl(
      {@JsonKey(name: 'key') this.key,
      @JsonKey(name: 'payment_type') this.paymentType,
      @JsonKey(name: 'payment_amount') this.paymentAmount,
      @JsonKey(name: 'total_order') this.totalOrder,
      @JsonKey(name: 'id_customer') this.idCustomer,
      @JsonKey(name: 'kurir') this.kurir,
      @JsonKey(name: 'name_customer') this.nameCustomer,
      @JsonKey(name: 'name_store') this.nameStore,
      @JsonKey(name: 'email_store') this.emailStore,
      @JsonKey(name: 'nohp_store') this.nohpStore,
      @JsonKey(name: 'footer') this.footer,
      @JsonKey(name: 'address_store') this.addressStore,
      @JsonKey(name: 'id_supplier') this.idSupplier,
      @JsonKey(name: 'name_supplier') this.nameSupplier,
      @JsonKey(name: 'point') this.point,
      @JsonKey(name: 'id_discount') this.idDiscount,
      @JsonKey(name: 'card') this.card,
      @JsonKey(name: 'note') this.note,
      @JsonKey(name: 'waktu') this.waktu,
      @JsonKey(name: 'due_date') this.dueDate,
      @JsonKey(name: 'product') final List<Barang>? product,
      @JsonKey(name: 'latitude') this.latitude,
      @JsonKey(name: 'longitude') this.longitude,
      @JsonKey(name: 'id_table') this.idTable,
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'complaint') this.complaint,
      @JsonKey(name: 'advice') this.advice,
      @JsonKey(name: 'name_kegiatan') this.nameKegiatan,
      @JsonKey(name: 'name_subkegiatan') this.nameSubkegiatan,
      @JsonKey(name: 'jeniskegiatan') this.jenisKegiatan})
      : _product = product;

  factory _$RequestTransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestTransactionImplFromJson(json);

  @override
  @JsonKey(name: 'key')
  final String? key;
  @override
  @JsonKey(name: 'payment_type')
  final int? paymentType;
  @override
  @JsonKey(name: 'payment_amount')
  final int? paymentAmount;
  @override
  @JsonKey(name: 'total_order')
  final double? totalOrder;
  @override
  @JsonKey(name: 'id_customer')
  final String? idCustomer;
  @override
  @JsonKey(name: 'kurir')
  final String? kurir;
  @override
  @JsonKey(name: 'name_customer')
  final String? nameCustomer;
  @override
  @JsonKey(name: 'name_store')
  final String? nameStore;
  @override
  @JsonKey(name: 'email_store')
  final String? emailStore;
  @override
  @JsonKey(name: 'nohp_store')
  final String? nohpStore;
  @override
  @JsonKey(name: 'footer')
  final String? footer;
  @override
  @JsonKey(name: 'address_store')
  final String? addressStore;
  @override
  @JsonKey(name: 'id_supplier')
  final String? idSupplier;
  @override
  @JsonKey(name: 'name_supplier')
  final String? nameSupplier;
  @override
  @JsonKey(name: 'point')
  final String? point;
  @override
  @JsonKey(name: 'id_discount')
  final String? idDiscount;
  @override
  @JsonKey(name: 'card')
  final String? card;
  @override
  @JsonKey(name: 'note')
  final String? note;
  @override
  @JsonKey(name: 'waktu')
  final String? waktu;
  @override
  @JsonKey(name: 'due_date')
  final String? dueDate;
  final List<Barang>? _product;
  @override
  @JsonKey(name: 'product')
  List<Barang>? get product {
    final value = _product;
    if (value == null) return null;
    if (_product is EqualUnmodifiableListView) return _product;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'latitude')
  final double? latitude;
  @override
  @JsonKey(name: 'longitude')
  final double? longitude;
  @override
  @JsonKey(name: 'id_table')
  final String? idTable;
  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'complaint')
  final String? complaint;
  @override
  @JsonKey(name: 'advice')
  final String? advice;
  @override
  @JsonKey(name: 'name_kegiatan')
  final String? nameKegiatan;
  @override
  @JsonKey(name: 'name_subkegiatan')
  final String? nameSubkegiatan;
  @override
  @JsonKey(name: 'jeniskegiatan')
  final String? jenisKegiatan;

  @override
  String toString() {
    return 'RequestTransaction(key: $key, paymentType: $paymentType, paymentAmount: $paymentAmount, totalOrder: $totalOrder, idCustomer: $idCustomer, kurir: $kurir, nameCustomer: $nameCustomer, nameStore: $nameStore, emailStore: $emailStore, nohpStore: $nohpStore, footer: $footer, addressStore: $addressStore, idSupplier: $idSupplier, nameSupplier: $nameSupplier, point: $point, idDiscount: $idDiscount, card: $card, note: $note, waktu: $waktu, dueDate: $dueDate, product: $product, latitude: $latitude, longitude: $longitude, idTable: $idTable, id: $id, complaint: $complaint, advice: $advice, nameKegiatan: $nameKegiatan, nameSubkegiatan: $nameSubkegiatan, jenisKegiatan: $jenisKegiatan)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestTransactionImpl &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.paymentType, paymentType) ||
                other.paymentType == paymentType) &&
            (identical(other.paymentAmount, paymentAmount) ||
                other.paymentAmount == paymentAmount) &&
            (identical(other.totalOrder, totalOrder) ||
                other.totalOrder == totalOrder) &&
            (identical(other.idCustomer, idCustomer) ||
                other.idCustomer == idCustomer) &&
            (identical(other.kurir, kurir) || other.kurir == kurir) &&
            (identical(other.nameCustomer, nameCustomer) ||
                other.nameCustomer == nameCustomer) &&
            (identical(other.nameStore, nameStore) ||
                other.nameStore == nameStore) &&
            (identical(other.emailStore, emailStore) ||
                other.emailStore == emailStore) &&
            (identical(other.nohpStore, nohpStore) ||
                other.nohpStore == nohpStore) &&
            (identical(other.footer, footer) || other.footer == footer) &&
            (identical(other.addressStore, addressStore) ||
                other.addressStore == addressStore) &&
            (identical(other.idSupplier, idSupplier) ||
                other.idSupplier == idSupplier) &&
            (identical(other.nameSupplier, nameSupplier) ||
                other.nameSupplier == nameSupplier) &&
            (identical(other.point, point) || other.point == point) &&
            (identical(other.idDiscount, idDiscount) ||
                other.idDiscount == idDiscount) &&
            (identical(other.card, card) || other.card == card) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.waktu, waktu) || other.waktu == waktu) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            const DeepCollectionEquality().equals(other._product, _product) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.idTable, idTable) || other.idTable == idTable) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.complaint, complaint) ||
                other.complaint == complaint) &&
            (identical(other.advice, advice) || other.advice == advice) &&
            (identical(other.nameKegiatan, nameKegiatan) ||
                other.nameKegiatan == nameKegiatan) &&
            (identical(other.nameSubkegiatan, nameSubkegiatan) ||
                other.nameSubkegiatan == nameSubkegiatan) &&
            (identical(other.jenisKegiatan, jenisKegiatan) ||
                other.jenisKegiatan == jenisKegiatan));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        key,
        paymentType,
        paymentAmount,
        totalOrder,
        idCustomer,
        kurir,
        nameCustomer,
        nameStore,
        emailStore,
        nohpStore,
        footer,
        addressStore,
        idSupplier,
        nameSupplier,
        point,
        idDiscount,
        card,
        note,
        waktu,
        dueDate,
        const DeepCollectionEquality().hash(_product),
        latitude,
        longitude,
        idTable,
        id,
        complaint,
        advice,
        nameKegiatan,
        nameSubkegiatan,
        jenisKegiatan
      ]);

  /// Create a copy of RequestTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestTransactionImplCopyWith<_$RequestTransactionImpl> get copyWith =>
      __$$RequestTransactionImplCopyWithImpl<_$RequestTransactionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestTransactionImplToJson(
      this,
    );
  }
}

abstract class _RequestTransaction implements RequestTransaction {
  const factory _RequestTransaction(
          {@JsonKey(name: 'key') final String? key,
          @JsonKey(name: 'payment_type') final int? paymentType,
          @JsonKey(name: 'payment_amount') final int? paymentAmount,
          @JsonKey(name: 'total_order') final double? totalOrder,
          @JsonKey(name: 'id_customer') final String? idCustomer,
          @JsonKey(name: 'kurir') final String? kurir,
          @JsonKey(name: 'name_customer') final String? nameCustomer,
          @JsonKey(name: 'name_store') final String? nameStore,
          @JsonKey(name: 'email_store') final String? emailStore,
          @JsonKey(name: 'nohp_store') final String? nohpStore,
          @JsonKey(name: 'footer') final String? footer,
          @JsonKey(name: 'address_store') final String? addressStore,
          @JsonKey(name: 'id_supplier') final String? idSupplier,
          @JsonKey(name: 'name_supplier') final String? nameSupplier,
          @JsonKey(name: 'point') final String? point,
          @JsonKey(name: 'id_discount') final String? idDiscount,
          @JsonKey(name: 'card') final String? card,
          @JsonKey(name: 'note') final String? note,
          @JsonKey(name: 'waktu') final String? waktu,
          @JsonKey(name: 'due_date') final String? dueDate,
          @JsonKey(name: 'product') final List<Barang>? product,
          @JsonKey(name: 'latitude') final double? latitude,
          @JsonKey(name: 'longitude') final double? longitude,
          @JsonKey(name: 'id_table') final String? idTable,
          @JsonKey(name: 'id') final String? id,
          @JsonKey(name: 'complaint') final String? complaint,
          @JsonKey(name: 'advice') final String? advice,
          @JsonKey(name: 'name_kegiatan') final String? nameKegiatan,
          @JsonKey(name: 'name_subkegiatan') final String? nameSubkegiatan,
          @JsonKey(name: 'jeniskegiatan') final String? jenisKegiatan}) =
      _$RequestTransactionImpl;

  factory _RequestTransaction.fromJson(Map<String, dynamic> json) =
      _$RequestTransactionImpl.fromJson;

  @override
  @JsonKey(name: 'key')
  String? get key;
  @override
  @JsonKey(name: 'payment_type')
  int? get paymentType;
  @override
  @JsonKey(name: 'payment_amount')
  int? get paymentAmount;
  @override
  @JsonKey(name: 'total_order')
  double? get totalOrder;
  @override
  @JsonKey(name: 'id_customer')
  String? get idCustomer;
  @override
  @JsonKey(name: 'kurir')
  String? get kurir;
  @override
  @JsonKey(name: 'name_customer')
  String? get nameCustomer;
  @override
  @JsonKey(name: 'name_store')
  String? get nameStore;
  @override
  @JsonKey(name: 'email_store')
  String? get emailStore;
  @override
  @JsonKey(name: 'nohp_store')
  String? get nohpStore;
  @override
  @JsonKey(name: 'footer')
  String? get footer;
  @override
  @JsonKey(name: 'address_store')
  String? get addressStore;
  @override
  @JsonKey(name: 'id_supplier')
  String? get idSupplier;
  @override
  @JsonKey(name: 'name_supplier')
  String? get nameSupplier;
  @override
  @JsonKey(name: 'point')
  String? get point;
  @override
  @JsonKey(name: 'id_discount')
  String? get idDiscount;
  @override
  @JsonKey(name: 'card')
  String? get card;
  @override
  @JsonKey(name: 'note')
  String? get note;
  @override
  @JsonKey(name: 'waktu')
  String? get waktu;
  @override
  @JsonKey(name: 'due_date')
  String? get dueDate;
  @override
  @JsonKey(name: 'product')
  List<Barang>? get product;
  @override
  @JsonKey(name: 'latitude')
  double? get latitude;
  @override
  @JsonKey(name: 'longitude')
  double? get longitude;
  @override
  @JsonKey(name: 'id_table')
  String? get idTable;
  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'complaint')
  String? get complaint;
  @override
  @JsonKey(name: 'advice')
  String? get advice;
  @override
  @JsonKey(name: 'name_kegiatan')
  String? get nameKegiatan;
  @override
  @JsonKey(name: 'name_subkegiatan')
  String? get nameSubkegiatan;
  @override
  @JsonKey(name: 'jeniskegiatan')
  String? get jenisKegiatan;

  /// Create a copy of RequestTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestTransactionImplCopyWith<_$RequestTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Barang _$BarangFromJson(Map<String, dynamic> json) {
  return _Barang.fromJson(json);
}

/// @nodoc
mixin _$Barang {
  @JsonKey(name: 'id_product')
  String? get idProduct => throw _privateConstructorUsedError;
  @JsonKey(name: 'amount_product')
  double? get amountProduct => throw _privateConstructorUsedError;
  @JsonKey(name: 'new_price')
  String? get newPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'notes')
  String? get notes => throw _privateConstructorUsedError;

  /// Serializes this Barang to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Barang
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BarangCopyWith<Barang> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BarangCopyWith<$Res> {
  factory $BarangCopyWith(Barang value, $Res Function(Barang) then) =
      _$BarangCopyWithImpl<$Res, Barang>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_product') String? idProduct,
      @JsonKey(name: 'amount_product') double? amountProduct,
      @JsonKey(name: 'new_price') String? newPrice,
      @JsonKey(name: 'notes') String? notes});
}

/// @nodoc
class _$BarangCopyWithImpl<$Res, $Val extends Barang>
    implements $BarangCopyWith<$Res> {
  _$BarangCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Barang
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idProduct = freezed,
    Object? amountProduct = freezed,
    Object? newPrice = freezed,
    Object? notes = freezed,
  }) {
    return _then(_value.copyWith(
      idProduct: freezed == idProduct
          ? _value.idProduct
          : idProduct // ignore: cast_nullable_to_non_nullable
              as String?,
      amountProduct: freezed == amountProduct
          ? _value.amountProduct
          : amountProduct // ignore: cast_nullable_to_non_nullable
              as double?,
      newPrice: freezed == newPrice
          ? _value.newPrice
          : newPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BarangImplCopyWith<$Res> implements $BarangCopyWith<$Res> {
  factory _$$BarangImplCopyWith(
          _$BarangImpl value, $Res Function(_$BarangImpl) then) =
      __$$BarangImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_product') String? idProduct,
      @JsonKey(name: 'amount_product') double? amountProduct,
      @JsonKey(name: 'new_price') String? newPrice,
      @JsonKey(name: 'notes') String? notes});
}

/// @nodoc
class __$$BarangImplCopyWithImpl<$Res>
    extends _$BarangCopyWithImpl<$Res, _$BarangImpl>
    implements _$$BarangImplCopyWith<$Res> {
  __$$BarangImplCopyWithImpl(
      _$BarangImpl _value, $Res Function(_$BarangImpl) _then)
      : super(_value, _then);

  /// Create a copy of Barang
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idProduct = freezed,
    Object? amountProduct = freezed,
    Object? newPrice = freezed,
    Object? notes = freezed,
  }) {
    return _then(_$BarangImpl(
      idProduct: freezed == idProduct
          ? _value.idProduct
          : idProduct // ignore: cast_nullable_to_non_nullable
              as String?,
      amountProduct: freezed == amountProduct
          ? _value.amountProduct
          : amountProduct // ignore: cast_nullable_to_non_nullable
              as double?,
      newPrice: freezed == newPrice
          ? _value.newPrice
          : newPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class _$BarangImpl implements _Barang {
  const _$BarangImpl(
      {@JsonKey(name: 'id_product') this.idProduct,
      @JsonKey(name: 'amount_product') this.amountProduct,
      @JsonKey(name: 'new_price') this.newPrice,
      @JsonKey(name: 'notes') this.notes});

  factory _$BarangImpl.fromJson(Map<String, dynamic> json) =>
      _$$BarangImplFromJson(json);

  @override
  @JsonKey(name: 'id_product')
  final String? idProduct;
  @override
  @JsonKey(name: 'amount_product')
  final double? amountProduct;
  @override
  @JsonKey(name: 'new_price')
  final String? newPrice;
  @override
  @JsonKey(name: 'notes')
  final String? notes;

  @override
  String toString() {
    return 'Barang(idProduct: $idProduct, amountProduct: $amountProduct, newPrice: $newPrice, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BarangImpl &&
            (identical(other.idProduct, idProduct) ||
                other.idProduct == idProduct) &&
            (identical(other.amountProduct, amountProduct) ||
                other.amountProduct == amountProduct) &&
            (identical(other.newPrice, newPrice) ||
                other.newPrice == newPrice) &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, idProduct, amountProduct, newPrice, notes);

  /// Create a copy of Barang
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BarangImplCopyWith<_$BarangImpl> get copyWith =>
      __$$BarangImplCopyWithImpl<_$BarangImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BarangImplToJson(
      this,
    );
  }
}

abstract class _Barang implements Barang {
  const factory _Barang(
      {@JsonKey(name: 'id_product') final String? idProduct,
      @JsonKey(name: 'amount_product') final double? amountProduct,
      @JsonKey(name: 'new_price') final String? newPrice,
      @JsonKey(name: 'notes') final String? notes}) = _$BarangImpl;

  factory _Barang.fromJson(Map<String, dynamic> json) = _$BarangImpl.fromJson;

  @override
  @JsonKey(name: 'id_product')
  String? get idProduct;
  @override
  @JsonKey(name: 'amount_product')
  double? get amountProduct;
  @override
  @JsonKey(name: 'new_price')
  String? get newPrice;
  @override
  @JsonKey(name: 'notes')
  String? get notes;

  /// Create a copy of Barang
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BarangImplCopyWith<_$BarangImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
