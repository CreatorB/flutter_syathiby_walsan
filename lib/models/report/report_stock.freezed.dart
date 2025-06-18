// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'report_stock.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReportStock _$ReportStockFromJson(Map<String, dynamic> json) {
  return _ReportStock.fromJson(json);
}

/// @nodoc
mixin _$ReportStock {
  @JsonKey(name: 'id_barang')
  String? get idBarang => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama_barang')
  String? get namaBarang => throw _privateConstructorUsedError;
  @JsonKey(name: 'tanggal_awal')
  String? get tanggalAwal => throw _privateConstructorUsedError;
  @JsonKey(name: 'tanggal_akhir')
  String? get tanggalAkhir => throw _privateConstructorUsedError;
  String? get terjual => throw _privateConstructorUsedError;
  @JsonKey(name: 'stok_terakhir')
  String? get stokTerakhir => throw _privateConstructorUsedError;
  @JsonKey(name: 'minimal_stok')
  String? get minimalStok => throw _privateConstructorUsedError;
  List<Detail>? get datastok => throw _privateConstructorUsedError;

  /// Serializes this ReportStock to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReportStock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportStockCopyWith<ReportStock> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportStockCopyWith<$Res> {
  factory $ReportStockCopyWith(
          ReportStock value, $Res Function(ReportStock) then) =
      _$ReportStockCopyWithImpl<$Res, ReportStock>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id_barang') String? idBarang,
      @JsonKey(name: 'nama_barang') String? namaBarang,
      @JsonKey(name: 'tanggal_awal') String? tanggalAwal,
      @JsonKey(name: 'tanggal_akhir') String? tanggalAkhir,
      String? terjual,
      @JsonKey(name: 'stok_terakhir') String? stokTerakhir,
      @JsonKey(name: 'minimal_stok') String? minimalStok,
      List<Detail>? datastok});
}

/// @nodoc
class _$ReportStockCopyWithImpl<$Res, $Val extends ReportStock>
    implements $ReportStockCopyWith<$Res> {
  _$ReportStockCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportStock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idBarang = freezed,
    Object? namaBarang = freezed,
    Object? tanggalAwal = freezed,
    Object? tanggalAkhir = freezed,
    Object? terjual = freezed,
    Object? stokTerakhir = freezed,
    Object? minimalStok = freezed,
    Object? datastok = freezed,
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
      tanggalAwal: freezed == tanggalAwal
          ? _value.tanggalAwal
          : tanggalAwal // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggalAkhir: freezed == tanggalAkhir
          ? _value.tanggalAkhir
          : tanggalAkhir // ignore: cast_nullable_to_non_nullable
              as String?,
      terjual: freezed == terjual
          ? _value.terjual
          : terjual // ignore: cast_nullable_to_non_nullable
              as String?,
      stokTerakhir: freezed == stokTerakhir
          ? _value.stokTerakhir
          : stokTerakhir // ignore: cast_nullable_to_non_nullable
              as String?,
      minimalStok: freezed == minimalStok
          ? _value.minimalStok
          : minimalStok // ignore: cast_nullable_to_non_nullable
              as String?,
      datastok: freezed == datastok
          ? _value.datastok
          : datastok // ignore: cast_nullable_to_non_nullable
              as List<Detail>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReportStockImplCopyWith<$Res>
    implements $ReportStockCopyWith<$Res> {
  factory _$$ReportStockImplCopyWith(
          _$ReportStockImpl value, $Res Function(_$ReportStockImpl) then) =
      __$$ReportStockImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id_barang') String? idBarang,
      @JsonKey(name: 'nama_barang') String? namaBarang,
      @JsonKey(name: 'tanggal_awal') String? tanggalAwal,
      @JsonKey(name: 'tanggal_akhir') String? tanggalAkhir,
      String? terjual,
      @JsonKey(name: 'stok_terakhir') String? stokTerakhir,
      @JsonKey(name: 'minimal_stok') String? minimalStok,
      List<Detail>? datastok});
}

/// @nodoc
class __$$ReportStockImplCopyWithImpl<$Res>
    extends _$ReportStockCopyWithImpl<$Res, _$ReportStockImpl>
    implements _$$ReportStockImplCopyWith<$Res> {
  __$$ReportStockImplCopyWithImpl(
      _$ReportStockImpl _value, $Res Function(_$ReportStockImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReportStock
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idBarang = freezed,
    Object? namaBarang = freezed,
    Object? tanggalAwal = freezed,
    Object? tanggalAkhir = freezed,
    Object? terjual = freezed,
    Object? stokTerakhir = freezed,
    Object? minimalStok = freezed,
    Object? datastok = freezed,
  }) {
    return _then(_$ReportStockImpl(
      idBarang: freezed == idBarang
          ? _value.idBarang
          : idBarang // ignore: cast_nullable_to_non_nullable
              as String?,
      namaBarang: freezed == namaBarang
          ? _value.namaBarang
          : namaBarang // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggalAwal: freezed == tanggalAwal
          ? _value.tanggalAwal
          : tanggalAwal // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggalAkhir: freezed == tanggalAkhir
          ? _value.tanggalAkhir
          : tanggalAkhir // ignore: cast_nullable_to_non_nullable
              as String?,
      terjual: freezed == terjual
          ? _value.terjual
          : terjual // ignore: cast_nullable_to_non_nullable
              as String?,
      stokTerakhir: freezed == stokTerakhir
          ? _value.stokTerakhir
          : stokTerakhir // ignore: cast_nullable_to_non_nullable
              as String?,
      minimalStok: freezed == minimalStok
          ? _value.minimalStok
          : minimalStok // ignore: cast_nullable_to_non_nullable
              as String?,
      datastok: freezed == datastok
          ? _value._datastok
          : datastok // ignore: cast_nullable_to_non_nullable
              as List<Detail>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportStockImpl implements _ReportStock {
  const _$ReportStockImpl(
      {@JsonKey(name: 'id_barang') this.idBarang,
      @JsonKey(name: 'nama_barang') this.namaBarang,
      @JsonKey(name: 'tanggal_awal') this.tanggalAwal,
      @JsonKey(name: 'tanggal_akhir') this.tanggalAkhir,
      this.terjual,
      @JsonKey(name: 'stok_terakhir') this.stokTerakhir,
      @JsonKey(name: 'minimal_stok') this.minimalStok,
      final List<Detail>? datastok})
      : _datastok = datastok;

  factory _$ReportStockImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportStockImplFromJson(json);

  @override
  @JsonKey(name: 'id_barang')
  final String? idBarang;
  @override
  @JsonKey(name: 'nama_barang')
  final String? namaBarang;
  @override
  @JsonKey(name: 'tanggal_awal')
  final String? tanggalAwal;
  @override
  @JsonKey(name: 'tanggal_akhir')
  final String? tanggalAkhir;
  @override
  final String? terjual;
  @override
  @JsonKey(name: 'stok_terakhir')
  final String? stokTerakhir;
  @override
  @JsonKey(name: 'minimal_stok')
  final String? minimalStok;
  final List<Detail>? _datastok;
  @override
  List<Detail>? get datastok {
    final value = _datastok;
    if (value == null) return null;
    if (_datastok is EqualUnmodifiableListView) return _datastok;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ReportStock(idBarang: $idBarang, namaBarang: $namaBarang, tanggalAwal: $tanggalAwal, tanggalAkhir: $tanggalAkhir, terjual: $terjual, stokTerakhir: $stokTerakhir, minimalStok: $minimalStok, datastok: $datastok)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportStockImpl &&
            (identical(other.idBarang, idBarang) ||
                other.idBarang == idBarang) &&
            (identical(other.namaBarang, namaBarang) ||
                other.namaBarang == namaBarang) &&
            (identical(other.tanggalAwal, tanggalAwal) ||
                other.tanggalAwal == tanggalAwal) &&
            (identical(other.tanggalAkhir, tanggalAkhir) ||
                other.tanggalAkhir == tanggalAkhir) &&
            (identical(other.terjual, terjual) || other.terjual == terjual) &&
            (identical(other.stokTerakhir, stokTerakhir) ||
                other.stokTerakhir == stokTerakhir) &&
            (identical(other.minimalStok, minimalStok) ||
                other.minimalStok == minimalStok) &&
            const DeepCollectionEquality().equals(other._datastok, _datastok));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      idBarang,
      namaBarang,
      tanggalAwal,
      tanggalAkhir,
      terjual,
      stokTerakhir,
      minimalStok,
      const DeepCollectionEquality().hash(_datastok));

  /// Create a copy of ReportStock
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportStockImplCopyWith<_$ReportStockImpl> get copyWith =>
      __$$ReportStockImplCopyWithImpl<_$ReportStockImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportStockImplToJson(
      this,
    );
  }
}

abstract class _ReportStock implements ReportStock {
  const factory _ReportStock(
      {@JsonKey(name: 'id_barang') final String? idBarang,
      @JsonKey(name: 'nama_barang') final String? namaBarang,
      @JsonKey(name: 'tanggal_awal') final String? tanggalAwal,
      @JsonKey(name: 'tanggal_akhir') final String? tanggalAkhir,
      final String? terjual,
      @JsonKey(name: 'stok_terakhir') final String? stokTerakhir,
      @JsonKey(name: 'minimal_stok') final String? minimalStok,
      final List<Detail>? datastok}) = _$ReportStockImpl;

  factory _ReportStock.fromJson(Map<String, dynamic> json) =
      _$ReportStockImpl.fromJson;

  @override
  @JsonKey(name: 'id_barang')
  String? get idBarang;
  @override
  @JsonKey(name: 'nama_barang')
  String? get namaBarang;
  @override
  @JsonKey(name: 'tanggal_awal')
  String? get tanggalAwal;
  @override
  @JsonKey(name: 'tanggal_akhir')
  String? get tanggalAkhir;
  @override
  String? get terjual;
  @override
  @JsonKey(name: 'stok_terakhir')
  String? get stokTerakhir;
  @override
  @JsonKey(name: 'minimal_stok')
  String? get minimalStok;
  @override
  List<Detail>? get datastok;

  /// Create a copy of ReportStock
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportStockImplCopyWith<_$ReportStockImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Detail _$DetailFromJson(Map<String, dynamic> json) {
  return _Detail.fromJson(json);
}

/// @nodoc
mixin _$Detail {
  @JsonKey(name: 'sisa_stok')
  String? get sisaStok => throw _privateConstructorUsedError;
  @JsonKey(name: 'minimal_stok')
  String? get minimalStok => throw _privateConstructorUsedError;
  String? get tanggal => throw _privateConstructorUsedError;

  /// Serializes this Detail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Detail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailCopyWith<Detail> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailCopyWith<$Res> {
  factory $DetailCopyWith(Detail value, $Res Function(Detail) then) =
      _$DetailCopyWithImpl<$Res, Detail>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sisa_stok') String? sisaStok,
      @JsonKey(name: 'minimal_stok') String? minimalStok,
      String? tanggal});
}

/// @nodoc
class _$DetailCopyWithImpl<$Res, $Val extends Detail>
    implements $DetailCopyWith<$Res> {
  _$DetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Detail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sisaStok = freezed,
    Object? minimalStok = freezed,
    Object? tanggal = freezed,
  }) {
    return _then(_value.copyWith(
      sisaStok: freezed == sisaStok
          ? _value.sisaStok
          : sisaStok // ignore: cast_nullable_to_non_nullable
              as String?,
      minimalStok: freezed == minimalStok
          ? _value.minimalStok
          : minimalStok // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggal: freezed == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailImplCopyWith<$Res> implements $DetailCopyWith<$Res> {
  factory _$$DetailImplCopyWith(
          _$DetailImpl value, $Res Function(_$DetailImpl) then) =
      __$$DetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sisa_stok') String? sisaStok,
      @JsonKey(name: 'minimal_stok') String? minimalStok,
      String? tanggal});
}

/// @nodoc
class __$$DetailImplCopyWithImpl<$Res>
    extends _$DetailCopyWithImpl<$Res, _$DetailImpl>
    implements _$$DetailImplCopyWith<$Res> {
  __$$DetailImplCopyWithImpl(
      _$DetailImpl _value, $Res Function(_$DetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of Detail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sisaStok = freezed,
    Object? minimalStok = freezed,
    Object? tanggal = freezed,
  }) {
    return _then(_$DetailImpl(
      sisaStok: freezed == sisaStok
          ? _value.sisaStok
          : sisaStok // ignore: cast_nullable_to_non_nullable
              as String?,
      minimalStok: freezed == minimalStok
          ? _value.minimalStok
          : minimalStok // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggal: freezed == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailImpl implements _Detail {
  const _$DetailImpl(
      {@JsonKey(name: 'sisa_stok') this.sisaStok,
      @JsonKey(name: 'minimal_stok') this.minimalStok,
      this.tanggal});

  factory _$DetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailImplFromJson(json);

  @override
  @JsonKey(name: 'sisa_stok')
  final String? sisaStok;
  @override
  @JsonKey(name: 'minimal_stok')
  final String? minimalStok;
  @override
  final String? tanggal;

  @override
  String toString() {
    return 'Detail(sisaStok: $sisaStok, minimalStok: $minimalStok, tanggal: $tanggal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailImpl &&
            (identical(other.sisaStok, sisaStok) ||
                other.sisaStok == sisaStok) &&
            (identical(other.minimalStok, minimalStok) ||
                other.minimalStok == minimalStok) &&
            (identical(other.tanggal, tanggal) || other.tanggal == tanggal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sisaStok, minimalStok, tanggal);

  /// Create a copy of Detail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailImplCopyWith<_$DetailImpl> get copyWith =>
      __$$DetailImplCopyWithImpl<_$DetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailImplToJson(
      this,
    );
  }
}

abstract class _Detail implements Detail {
  const factory _Detail(
      {@JsonKey(name: 'sisa_stok') final String? sisaStok,
      @JsonKey(name: 'minimal_stok') final String? minimalStok,
      final String? tanggal}) = _$DetailImpl;

  factory _Detail.fromJson(Map<String, dynamic> json) = _$DetailImpl.fromJson;

  @override
  @JsonKey(name: 'sisa_stok')
  String? get sisaStok;
  @override
  @JsonKey(name: 'minimal_stok')
  String? get minimalStok;
  @override
  String? get tanggal;

  /// Create a copy of Detail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailImplCopyWith<_$DetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
