// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_mutasi.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReportMutasi _$ReportMutasiFromJson(Map<String, dynamic> json) {
  return _ReportMutasi.fromJson(json);
}

/// @nodoc
mixin _$ReportMutasi {
  Info? get info => throw _privateConstructorUsedError;
  List<Transaksi>? get transaksi => throw _privateConstructorUsedError;

  /// Serializes this ReportMutasi to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReportMutasi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportMutasiCopyWith<ReportMutasi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportMutasiCopyWith<$Res> {
  factory $ReportMutasiCopyWith(
          ReportMutasi value, $Res Function(ReportMutasi) then) =
      _$ReportMutasiCopyWithImpl<$Res, ReportMutasi>;
  @useResult
  $Res call({Info? info, List<Transaksi>? transaksi});

  $InfoCopyWith<$Res>? get info;
}

/// @nodoc
class _$ReportMutasiCopyWithImpl<$Res, $Val extends ReportMutasi>
    implements $ReportMutasiCopyWith<$Res> {
  _$ReportMutasiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportMutasi
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = freezed,
    Object? transaksi = freezed,
  }) {
    return _then(_value.copyWith(
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info?,
      transaksi: freezed == transaksi
          ? _value.transaksi
          : transaksi // ignore: cast_nullable_to_non_nullable
              as List<Transaksi>?,
    ) as $Val);
  }

  /// Create a copy of ReportMutasi
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
abstract class _$$ReportMutasiImplCopyWith<$Res>
    implements $ReportMutasiCopyWith<$Res> {
  factory _$$ReportMutasiImplCopyWith(
          _$ReportMutasiImpl value, $Res Function(_$ReportMutasiImpl) then) =
      __$$ReportMutasiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Info? info, List<Transaksi>? transaksi});

  @override
  $InfoCopyWith<$Res>? get info;
}

/// @nodoc
class __$$ReportMutasiImplCopyWithImpl<$Res>
    extends _$ReportMutasiCopyWithImpl<$Res, _$ReportMutasiImpl>
    implements _$$ReportMutasiImplCopyWith<$Res> {
  __$$ReportMutasiImplCopyWithImpl(
      _$ReportMutasiImpl _value, $Res Function(_$ReportMutasiImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReportMutasi
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = freezed,
    Object? transaksi = freezed,
  }) {
    return _then(_$ReportMutasiImpl(
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info?,
      transaksi: freezed == transaksi
          ? _value._transaksi
          : transaksi // ignore: cast_nullable_to_non_nullable
              as List<Transaksi>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportMutasiImpl implements _ReportMutasi {
  const _$ReportMutasiImpl({this.info, final List<Transaksi>? transaksi})
      : _transaksi = transaksi;

  factory _$ReportMutasiImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportMutasiImplFromJson(json);

  @override
  final Info? info;
  final List<Transaksi>? _transaksi;
  @override
  List<Transaksi>? get transaksi {
    final value = _transaksi;
    if (value == null) return null;
    if (_transaksi is EqualUnmodifiableListView) return _transaksi;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ReportMutasi(info: $info, transaksi: $transaksi)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportMutasiImpl &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality()
                .equals(other._transaksi, _transaksi));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, info, const DeepCollectionEquality().hash(_transaksi));

  /// Create a copy of ReportMutasi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportMutasiImplCopyWith<_$ReportMutasiImpl> get copyWith =>
      __$$ReportMutasiImplCopyWithImpl<_$ReportMutasiImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportMutasiImplToJson(
      this,
    );
  }
}

abstract class _ReportMutasi implements ReportMutasi {
  const factory _ReportMutasi(
      {final Info? info,
      final List<Transaksi>? transaksi}) = _$ReportMutasiImpl;

  factory _ReportMutasi.fromJson(Map<String, dynamic> json) =
      _$ReportMutasiImpl.fromJson;

  @override
  Info? get info;
  @override
  List<Transaksi>? get transaksi;

  /// Create a copy of ReportMutasi
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportMutasiImplCopyWith<_$ReportMutasiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Info _$InfoFromJson(Map<String, dynamic> json) {
  return _Info.fromJson(json);
}

/// @nodoc
mixin _$Info {
  @JsonKey(name: 'penjualan_bersih')
  String? get penjualanBersih => throw _privateConstructorUsedError;
  @JsonKey(name: 'jumlah_transaksi')
  String? get jumlahTransaksi => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'penjualan_bersih') String? penjualanBersih,
      @JsonKey(name: 'jumlah_transaksi') String? jumlahTransaksi});
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
    Object? penjualanBersih = freezed,
    Object? jumlahTransaksi = freezed,
  }) {
    return _then(_value.copyWith(
      penjualanBersih: freezed == penjualanBersih
          ? _value.penjualanBersih
          : penjualanBersih // ignore: cast_nullable_to_non_nullable
              as String?,
      jumlahTransaksi: freezed == jumlahTransaksi
          ? _value.jumlahTransaksi
          : jumlahTransaksi // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 'penjualan_bersih') String? penjualanBersih,
      @JsonKey(name: 'jumlah_transaksi') String? jumlahTransaksi});
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
    Object? penjualanBersih = freezed,
    Object? jumlahTransaksi = freezed,
  }) {
    return _then(_$InfoImpl(
      penjualanBersih: freezed == penjualanBersih
          ? _value.penjualanBersih
          : penjualanBersih // ignore: cast_nullable_to_non_nullable
              as String?,
      jumlahTransaksi: freezed == jumlahTransaksi
          ? _value.jumlahTransaksi
          : jumlahTransaksi // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InfoImpl implements _Info {
  const _$InfoImpl(
      {@JsonKey(name: 'penjualan_bersih') this.penjualanBersih,
      @JsonKey(name: 'jumlah_transaksi') this.jumlahTransaksi});

  factory _$InfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InfoImplFromJson(json);

  @override
  @JsonKey(name: 'penjualan_bersih')
  final String? penjualanBersih;
  @override
  @JsonKey(name: 'jumlah_transaksi')
  final String? jumlahTransaksi;

  @override
  String toString() {
    return 'Info(penjualanBersih: $penjualanBersih, jumlahTransaksi: $jumlahTransaksi)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfoImpl &&
            (identical(other.penjualanBersih, penjualanBersih) ||
                other.penjualanBersih == penjualanBersih) &&
            (identical(other.jumlahTransaksi, jumlahTransaksi) ||
                other.jumlahTransaksi == jumlahTransaksi));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, penjualanBersih, jumlahTransaksi);

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
          {@JsonKey(name: 'penjualan_bersih') final String? penjualanBersih,
          @JsonKey(name: 'jumlah_transaksi') final String? jumlahTransaksi}) =
      _$InfoImpl;

  factory _Info.fromJson(Map<String, dynamic> json) = _$InfoImpl.fromJson;

  @override
  @JsonKey(name: 'penjualan_bersih')
  String? get penjualanBersih;
  @override
  @JsonKey(name: 'jumlah_transaksi')
  String? get jumlahTransaksi;

  /// Create a copy of Info
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InfoImplCopyWith<_$InfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Transaksi _$TransaksiFromJson(Map<String, dynamic> json) {
  return _Transaksi.fromJson(json);
}

/// @nodoc
mixin _$Transaksi {
  @JsonKey(name: 'no_invoice')
  String? get noInvoice => throw _privateConstructorUsedError;
  String? get tanggal => throw _privateConstructorUsedError;
  String? get omset => throw _privateConstructorUsedError;
  String? get margin => throw _privateConstructorUsedError;
  List<Barang>? get barang => throw _privateConstructorUsedError;

  /// Serializes this Transaksi to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Transaksi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransaksiCopyWith<Transaksi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransaksiCopyWith<$Res> {
  factory $TransaksiCopyWith(Transaksi value, $Res Function(Transaksi) then) =
      _$TransaksiCopyWithImpl<$Res, Transaksi>;
  @useResult
  $Res call(
      {@JsonKey(name: 'no_invoice') String? noInvoice,
      String? tanggal,
      String? omset,
      String? margin,
      List<Barang>? barang});
}

/// @nodoc
class _$TransaksiCopyWithImpl<$Res, $Val extends Transaksi>
    implements $TransaksiCopyWith<$Res> {
  _$TransaksiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Transaksi
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noInvoice = freezed,
    Object? tanggal = freezed,
    Object? omset = freezed,
    Object? margin = freezed,
    Object? barang = freezed,
  }) {
    return _then(_value.copyWith(
      noInvoice: freezed == noInvoice
          ? _value.noInvoice
          : noInvoice // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggal: freezed == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as String?,
      omset: freezed == omset
          ? _value.omset
          : omset // ignore: cast_nullable_to_non_nullable
              as String?,
      margin: freezed == margin
          ? _value.margin
          : margin // ignore: cast_nullable_to_non_nullable
              as String?,
      barang: freezed == barang
          ? _value.barang
          : barang // ignore: cast_nullable_to_non_nullable
              as List<Barang>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransaksiImplCopyWith<$Res>
    implements $TransaksiCopyWith<$Res> {
  factory _$$TransaksiImplCopyWith(
          _$TransaksiImpl value, $Res Function(_$TransaksiImpl) then) =
      __$$TransaksiImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'no_invoice') String? noInvoice,
      String? tanggal,
      String? omset,
      String? margin,
      List<Barang>? barang});
}

/// @nodoc
class __$$TransaksiImplCopyWithImpl<$Res>
    extends _$TransaksiCopyWithImpl<$Res, _$TransaksiImpl>
    implements _$$TransaksiImplCopyWith<$Res> {
  __$$TransaksiImplCopyWithImpl(
      _$TransaksiImpl _value, $Res Function(_$TransaksiImpl) _then)
      : super(_value, _then);

  /// Create a copy of Transaksi
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noInvoice = freezed,
    Object? tanggal = freezed,
    Object? omset = freezed,
    Object? margin = freezed,
    Object? barang = freezed,
  }) {
    return _then(_$TransaksiImpl(
      noInvoice: freezed == noInvoice
          ? _value.noInvoice
          : noInvoice // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggal: freezed == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as String?,
      omset: freezed == omset
          ? _value.omset
          : omset // ignore: cast_nullable_to_non_nullable
              as String?,
      margin: freezed == margin
          ? _value.margin
          : margin // ignore: cast_nullable_to_non_nullable
              as String?,
      barang: freezed == barang
          ? _value._barang
          : barang // ignore: cast_nullable_to_non_nullable
              as List<Barang>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransaksiImpl implements _Transaksi {
  const _$TransaksiImpl(
      {@JsonKey(name: 'no_invoice') this.noInvoice,
      this.tanggal,
      this.omset,
      this.margin,
      final List<Barang>? barang})
      : _barang = barang;

  factory _$TransaksiImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransaksiImplFromJson(json);

  @override
  @JsonKey(name: 'no_invoice')
  final String? noInvoice;
  @override
  final String? tanggal;
  @override
  final String? omset;
  @override
  final String? margin;
  final List<Barang>? _barang;
  @override
  List<Barang>? get barang {
    final value = _barang;
    if (value == null) return null;
    if (_barang is EqualUnmodifiableListView) return _barang;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Transaksi(noInvoice: $noInvoice, tanggal: $tanggal, omset: $omset, margin: $margin, barang: $barang)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransaksiImpl &&
            (identical(other.noInvoice, noInvoice) ||
                other.noInvoice == noInvoice) &&
            (identical(other.tanggal, tanggal) || other.tanggal == tanggal) &&
            (identical(other.omset, omset) || other.omset == omset) &&
            (identical(other.margin, margin) || other.margin == margin) &&
            const DeepCollectionEquality().equals(other._barang, _barang));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, noInvoice, tanggal, omset,
      margin, const DeepCollectionEquality().hash(_barang));

  /// Create a copy of Transaksi
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransaksiImplCopyWith<_$TransaksiImpl> get copyWith =>
      __$$TransaksiImplCopyWithImpl<_$TransaksiImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransaksiImplToJson(
      this,
    );
  }
}

abstract class _Transaksi implements Transaksi {
  const factory _Transaksi(
      {@JsonKey(name: 'no_invoice') final String? noInvoice,
      final String? tanggal,
      final String? omset,
      final String? margin,
      final List<Barang>? barang}) = _$TransaksiImpl;

  factory _Transaksi.fromJson(Map<String, dynamic> json) =
      _$TransaksiImpl.fromJson;

  @override
  @JsonKey(name: 'no_invoice')
  String? get noInvoice;
  @override
  String? get tanggal;
  @override
  String? get omset;
  @override
  String? get margin;
  @override
  List<Barang>? get barang;

  /// Create a copy of Transaksi
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransaksiImplCopyWith<_$TransaksiImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Barang _$BarangFromJson(Map<String, dynamic> json) {
  return _Barang.fromJson(json);
}

/// @nodoc
mixin _$Barang {
  @JsonKey(name: 'id_barang')
  String? get idBarang => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama_barang')
  String? get namaBarang => throw _privateConstructorUsedError;
  String? get margin => throw _privateConstructorUsedError;
  String? get laba => throw _privateConstructorUsedError;
  String? get qty => throw _privateConstructorUsedError;
  @JsonKey(name: 'harga_jual')
  String? get hargaJual => throw _privateConstructorUsedError;
  @JsonKey(name: 'harga_beli')
  String? get hargaBeli => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'id_barang') String? idBarang,
      @JsonKey(name: 'nama_barang') String? namaBarang,
      String? margin,
      String? laba,
      String? qty,
      @JsonKey(name: 'harga_jual') String? hargaJual,
      @JsonKey(name: 'harga_beli') String? hargaBeli});
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
    Object? idBarang = freezed,
    Object? namaBarang = freezed,
    Object? margin = freezed,
    Object? laba = freezed,
    Object? qty = freezed,
    Object? hargaJual = freezed,
    Object? hargaBeli = freezed,
  }) {
    return _then(_value.copyWith(
      idBarang: freezed == idBarang
          ? _value.idBarang
          : idBarang // ignore: cast_nullable_to_non_nullable
              as String?,
      namaBarang: freezed == namaBarang
          ? _value.namaBarang
          : namaBarang // ignore: cast_nullable_to_non_nullable
              as String?,
      margin: freezed == margin
          ? _value.margin
          : margin // ignore: cast_nullable_to_non_nullable
              as String?,
      laba: freezed == laba
          ? _value.laba
          : laba // ignore: cast_nullable_to_non_nullable
              as String?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as String?,
      hargaJual: freezed == hargaJual
          ? _value.hargaJual
          : hargaJual // ignore: cast_nullable_to_non_nullable
              as String?,
      hargaBeli: freezed == hargaBeli
          ? _value.hargaBeli
          : hargaBeli // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 'id_barang') String? idBarang,
      @JsonKey(name: 'nama_barang') String? namaBarang,
      String? margin,
      String? laba,
      String? qty,
      @JsonKey(name: 'harga_jual') String? hargaJual,
      @JsonKey(name: 'harga_beli') String? hargaBeli});
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
    Object? idBarang = freezed,
    Object? namaBarang = freezed,
    Object? margin = freezed,
    Object? laba = freezed,
    Object? qty = freezed,
    Object? hargaJual = freezed,
    Object? hargaBeli = freezed,
  }) {
    return _then(_$BarangImpl(
      idBarang: freezed == idBarang
          ? _value.idBarang
          : idBarang // ignore: cast_nullable_to_non_nullable
              as String?,
      namaBarang: freezed == namaBarang
          ? _value.namaBarang
          : namaBarang // ignore: cast_nullable_to_non_nullable
              as String?,
      margin: freezed == margin
          ? _value.margin
          : margin // ignore: cast_nullable_to_non_nullable
              as String?,
      laba: freezed == laba
          ? _value.laba
          : laba // ignore: cast_nullable_to_non_nullable
              as String?,
      qty: freezed == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as String?,
      hargaJual: freezed == hargaJual
          ? _value.hargaJual
          : hargaJual // ignore: cast_nullable_to_non_nullable
              as String?,
      hargaBeli: freezed == hargaBeli
          ? _value.hargaBeli
          : hargaBeli // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BarangImpl implements _Barang {
  const _$BarangImpl(
      {@JsonKey(name: 'id_barang') this.idBarang,
      @JsonKey(name: 'nama_barang') this.namaBarang,
      this.margin,
      this.laba,
      this.qty,
      @JsonKey(name: 'harga_jual') this.hargaJual,
      @JsonKey(name: 'harga_beli') this.hargaBeli});

  factory _$BarangImpl.fromJson(Map<String, dynamic> json) =>
      _$$BarangImplFromJson(json);

  @override
  @JsonKey(name: 'id_barang')
  final String? idBarang;
  @override
  @JsonKey(name: 'nama_barang')
  final String? namaBarang;
  @override
  final String? margin;
  @override
  final String? laba;
  @override
  final String? qty;
  @override
  @JsonKey(name: 'harga_jual')
  final String? hargaJual;
  @override
  @JsonKey(name: 'harga_beli')
  final String? hargaBeli;

  @override
  String toString() {
    return 'Barang(idBarang: $idBarang, namaBarang: $namaBarang, margin: $margin, laba: $laba, qty: $qty, hargaJual: $hargaJual, hargaBeli: $hargaBeli)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BarangImpl &&
            (identical(other.idBarang, idBarang) ||
                other.idBarang == idBarang) &&
            (identical(other.namaBarang, namaBarang) ||
                other.namaBarang == namaBarang) &&
            (identical(other.margin, margin) || other.margin == margin) &&
            (identical(other.laba, laba) || other.laba == laba) &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.hargaJual, hargaJual) ||
                other.hargaJual == hargaJual) &&
            (identical(other.hargaBeli, hargaBeli) ||
                other.hargaBeli == hargaBeli));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, idBarang, namaBarang, margin,
      laba, qty, hargaJual, hargaBeli);

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
      {@JsonKey(name: 'id_barang') final String? idBarang,
      @JsonKey(name: 'nama_barang') final String? namaBarang,
      final String? margin,
      final String? laba,
      final String? qty,
      @JsonKey(name: 'harga_jual') final String? hargaJual,
      @JsonKey(name: 'harga_beli') final String? hargaBeli}) = _$BarangImpl;

  factory _Barang.fromJson(Map<String, dynamic> json) = _$BarangImpl.fromJson;

  @override
  @JsonKey(name: 'id_barang')
  String? get idBarang;
  @override
  @JsonKey(name: 'nama_barang')
  String? get namaBarang;
  @override
  String? get margin;
  @override
  String? get laba;
  @override
  String? get qty;
  @override
  @JsonKey(name: 'harga_jual')
  String? get hargaJual;
  @override
  @JsonKey(name: 'harga_beli')
  String? get hargaBeli;

  /// Create a copy of Barang
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BarangImplCopyWith<_$BarangImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
