// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_spend.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailSpend _$DetailSpendFromJson(Map<String, dynamic> json) {
  return _DetailSpend.fromJson(json);
}

/// @nodoc
mixin _$DetailSpend {
  Struk? get info => throw _privateConstructorUsedError;
  List<Data>? get data => throw _privateConstructorUsedError;

  /// Serializes this DetailSpend to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailSpend
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailSpendCopyWith<DetailSpend> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailSpendCopyWith<$Res> {
  factory $DetailSpendCopyWith(
          DetailSpend value, $Res Function(DetailSpend) then) =
      _$DetailSpendCopyWithImpl<$Res, DetailSpend>;
  @useResult
  $Res call({Struk? info, List<Data>? data});

  $StrukCopyWith<$Res>? get info;
}

/// @nodoc
class _$DetailSpendCopyWithImpl<$Res, $Val extends DetailSpend>
    implements $DetailSpendCopyWith<$Res> {
  _$DetailSpendCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailSpend
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Struk?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
    ) as $Val);
  }

  /// Create a copy of DetailSpend
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StrukCopyWith<$Res>? get info {
    if (_value.info == null) {
      return null;
    }

    return $StrukCopyWith<$Res>(_value.info!, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DetailSpendImplCopyWith<$Res>
    implements $DetailSpendCopyWith<$Res> {
  factory _$$DetailSpendImplCopyWith(
          _$DetailSpendImpl value, $Res Function(_$DetailSpendImpl) then) =
      __$$DetailSpendImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Struk? info, List<Data>? data});

  @override
  $StrukCopyWith<$Res>? get info;
}

/// @nodoc
class __$$DetailSpendImplCopyWithImpl<$Res>
    extends _$DetailSpendCopyWithImpl<$Res, _$DetailSpendImpl>
    implements _$$DetailSpendImplCopyWith<$Res> {
  __$$DetailSpendImplCopyWithImpl(
      _$DetailSpendImpl _value, $Res Function(_$DetailSpendImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailSpend
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = freezed,
    Object? data = freezed,
  }) {
    return _then(_$DetailSpendImpl(
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
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
class _$DetailSpendImpl implements _DetailSpend {
  const _$DetailSpendImpl({this.info, final List<Data>? data}) : _data = data;

  factory _$DetailSpendImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailSpendImplFromJson(json);

  @override
  final Struk? info;
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
    return 'DetailSpend(info: $info, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailSpendImpl &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, info, const DeepCollectionEquality().hash(_data));

  /// Create a copy of DetailSpend
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailSpendImplCopyWith<_$DetailSpendImpl> get copyWith =>
      __$$DetailSpendImplCopyWithImpl<_$DetailSpendImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailSpendImplToJson(
      this,
    );
  }
}

abstract class _DetailSpend implements DetailSpend {
  const factory _DetailSpend({final Struk? info, final List<Data>? data}) =
      _$DetailSpendImpl;

  factory _DetailSpend.fromJson(Map<String, dynamic> json) =
      _$DetailSpendImpl.fromJson;

  @override
  Struk? get info;
  @override
  List<Data>? get data;

  /// Create a copy of DetailSpend
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailSpendImplCopyWith<_$DetailSpendImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Struk _$StrukFromJson(Map<String, dynamic> json) {
  return _Struk.fromJson(json);
}

/// @nodoc
mixin _$Struk {
  String? get oleh => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_invoice')
  String? get noInvoice => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalnominal')
  String? get totalNominal => throw _privateConstructorUsedError;
  String? get img => throw _privateConstructorUsedError;

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
      {String? oleh,
      @JsonKey(name: 'no_invoice') String? noInvoice,
      String? date,
      @JsonKey(name: 'totalnominal') String? totalNominal,
      String? img});
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
    Object? oleh = freezed,
    Object? noInvoice = freezed,
    Object? date = freezed,
    Object? totalNominal = freezed,
    Object? img = freezed,
  }) {
    return _then(_value.copyWith(
      oleh: freezed == oleh
          ? _value.oleh
          : oleh // ignore: cast_nullable_to_non_nullable
              as String?,
      noInvoice: freezed == noInvoice
          ? _value.noInvoice
          : noInvoice // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      totalNominal: freezed == totalNominal
          ? _value.totalNominal
          : totalNominal // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
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
      {String? oleh,
      @JsonKey(name: 'no_invoice') String? noInvoice,
      String? date,
      @JsonKey(name: 'totalnominal') String? totalNominal,
      String? img});
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
    Object? oleh = freezed,
    Object? noInvoice = freezed,
    Object? date = freezed,
    Object? totalNominal = freezed,
    Object? img = freezed,
  }) {
    return _then(_$StrukImpl(
      oleh: freezed == oleh
          ? _value.oleh
          : oleh // ignore: cast_nullable_to_non_nullable
              as String?,
      noInvoice: freezed == noInvoice
          ? _value.noInvoice
          : noInvoice // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      totalNominal: freezed == totalNominal
          ? _value.totalNominal
          : totalNominal // ignore: cast_nullable_to_non_nullable
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
class _$StrukImpl implements _Struk {
  const _$StrukImpl(
      {this.oleh,
      @JsonKey(name: 'no_invoice') this.noInvoice,
      this.date,
      @JsonKey(name: 'totalnominal') this.totalNominal,
      this.img});

  factory _$StrukImpl.fromJson(Map<String, dynamic> json) =>
      _$$StrukImplFromJson(json);

  @override
  final String? oleh;
  @override
  @JsonKey(name: 'no_invoice')
  final String? noInvoice;
  @override
  final String? date;
  @override
  @JsonKey(name: 'totalnominal')
  final String? totalNominal;
  @override
  final String? img;

  @override
  String toString() {
    return 'Struk(oleh: $oleh, noInvoice: $noInvoice, date: $date, totalNominal: $totalNominal, img: $img)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StrukImpl &&
            (identical(other.oleh, oleh) || other.oleh == oleh) &&
            (identical(other.noInvoice, noInvoice) ||
                other.noInvoice == noInvoice) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.totalNominal, totalNominal) ||
                other.totalNominal == totalNominal) &&
            (identical(other.img, img) || other.img == img));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, oleh, noInvoice, date, totalNominal, img);

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
      {final String? oleh,
      @JsonKey(name: 'no_invoice') final String? noInvoice,
      final String? date,
      @JsonKey(name: 'totalnominal') final String? totalNominal,
      final String? img}) = _$StrukImpl;

  factory _Struk.fromJson(Map<String, dynamic> json) = _$StrukImpl.fromJson;

  @override
  String? get oleh;
  @override
  @JsonKey(name: 'no_invoice')
  String? get noInvoice;
  @override
  String? get date;
  @override
  @JsonKey(name: 'totalnominal')
  String? get totalNominal;
  @override
  String? get img;

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
  @JsonKey(name: 'name_spending')
  String? get nameSpending => throw _privateConstructorUsedError;
  String? get nominal => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'name_spending') String? nameSpending,
      String? nominal,
      String? note});
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
    Object? nameSpending = freezed,
    Object? nominal = freezed,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      nameSpending: freezed == nameSpending
          ? _value.nameSpending
          : nameSpending // ignore: cast_nullable_to_non_nullable
              as String?,
      nominal: freezed == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 'name_spending') String? nameSpending,
      String? nominal,
      String? note});
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
    Object? nameSpending = freezed,
    Object? nominal = freezed,
    Object? note = freezed,
  }) {
    return _then(_$DataImpl(
      nameSpending: freezed == nameSpending
          ? _value.nameSpending
          : nameSpending // ignore: cast_nullable_to_non_nullable
              as String?,
      nominal: freezed == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {@JsonKey(name: 'name_spending') this.nameSpending,
      this.nominal,
      this.note});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  @JsonKey(name: 'name_spending')
  final String? nameSpending;
  @override
  final String? nominal;
  @override
  final String? note;

  @override
  String toString() {
    return 'Data(nameSpending: $nameSpending, nominal: $nominal, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.nameSpending, nameSpending) ||
                other.nameSpending == nameSpending) &&
            (identical(other.nominal, nominal) || other.nominal == nominal) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nameSpending, nominal, note);

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
      {@JsonKey(name: 'name_spending') final String? nameSpending,
      final String? nominal,
      final String? note}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  @JsonKey(name: 'name_spending')
  String? get nameSpending;
  @override
  String? get nominal;
  @override
  String? get note;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
