// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_label.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailLabel _$DetailLabelFromJson(Map<String, dynamic> json) {
  return _DetailLabel.fromJson(json);
}

/// @nodoc
mixin _$DetailLabel {
  Struk? get struk => throw _privateConstructorUsedError;
  List<Data>? get data => throw _privateConstructorUsedError;

  /// Serializes this DetailLabel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailLabel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailLabelCopyWith<DetailLabel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailLabelCopyWith<$Res> {
  factory $DetailLabelCopyWith(
          DetailLabel value, $Res Function(DetailLabel) then) =
      _$DetailLabelCopyWithImpl<$Res, DetailLabel>;
  @useResult
  $Res call({Struk? struk, List<Data>? data});

  $StrukCopyWith<$Res>? get struk;
}

/// @nodoc
class _$DetailLabelCopyWithImpl<$Res, $Val extends DetailLabel>
    implements $DetailLabelCopyWith<$Res> {
  _$DetailLabelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailLabel
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

  /// Create a copy of DetailLabel
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
abstract class _$$DetailLabelImplCopyWith<$Res>
    implements $DetailLabelCopyWith<$Res> {
  factory _$$DetailLabelImplCopyWith(
          _$DetailLabelImpl value, $Res Function(_$DetailLabelImpl) then) =
      __$$DetailLabelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Struk? struk, List<Data>? data});

  @override
  $StrukCopyWith<$Res>? get struk;
}

/// @nodoc
class __$$DetailLabelImplCopyWithImpl<$Res>
    extends _$DetailLabelCopyWithImpl<$Res, _$DetailLabelImpl>
    implements _$$DetailLabelImplCopyWith<$Res> {
  __$$DetailLabelImplCopyWithImpl(
      _$DetailLabelImpl _value, $Res Function(_$DetailLabelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailLabel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? struk = freezed,
    Object? data = freezed,
  }) {
    return _then(_$DetailLabelImpl(
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
class _$DetailLabelImpl implements _DetailLabel {
  const _$DetailLabelImpl({this.struk, final List<Data>? data}) : _data = data;

  factory _$DetailLabelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailLabelImplFromJson(json);

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
    return 'DetailLabel(struk: $struk, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailLabelImpl &&
            (identical(other.struk, struk) || other.struk == struk) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, struk, const DeepCollectionEquality().hash(_data));

  /// Create a copy of DetailLabel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailLabelImplCopyWith<_$DetailLabelImpl> get copyWith =>
      __$$DetailLabelImplCopyWithImpl<_$DetailLabelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailLabelImplToJson(
      this,
    );
  }
}

abstract class _DetailLabel implements DetailLabel {
  const factory _DetailLabel({final Struk? struk, final List<Data>? data}) =
      _$DetailLabelImpl;

  factory _DetailLabel.fromJson(Map<String, dynamic> json) =
      _$DetailLabelImpl.fromJson;

  @override
  Struk? get struk;
  @override
  List<Data>? get data;

  /// Create a copy of DetailLabel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailLabelImplCopyWith<_$DetailLabelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Struk _$StrukFromJson(Map<String, dynamic> json) {
  return _Struk.fromJson(json);
}

/// @nodoc
mixin _$Struk {
  String? get noInvoice => throw _privateConstructorUsedError;

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
  $Res call({String? noInvoice});
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
    Object? noInvoice = freezed,
  }) {
    return _then(_value.copyWith(
      noInvoice: freezed == noInvoice
          ? _value.noInvoice
          : noInvoice // ignore: cast_nullable_to_non_nullable
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
  $Res call({String? noInvoice});
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
    Object? noInvoice = freezed,
  }) {
    return _then(_$StrukImpl(
      noInvoice: freezed == noInvoice
          ? _value.noInvoice
          : noInvoice // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StrukImpl implements _Struk {
  const _$StrukImpl({this.noInvoice});

  factory _$StrukImpl.fromJson(Map<String, dynamic> json) =>
      _$$StrukImplFromJson(json);

  @override
  final String? noInvoice;

  @override
  String toString() {
    return 'Struk(noInvoice: $noInvoice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StrukImpl &&
            (identical(other.noInvoice, noInvoice) ||
                other.noInvoice == noInvoice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, noInvoice);

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
  const factory _Struk({final String? noInvoice}) = _$StrukImpl;

  factory _Struk.fromJson(Map<String, dynamic> json) = _$StrukImpl.fromJson;

  @override
  String? get noInvoice;

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
  String? get nameStore => throw _privateConstructorUsedError;
  String? get codeproduct => throw _privateConstructorUsedError;
  String? get nameProduct => throw _privateConstructorUsedError;
  String? get noInvoice => throw _privateConstructorUsedError;
  String? get idProduct => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get amount => throw _privateConstructorUsedError;
  String? get img => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

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
      {String? nameStore,
      String? codeproduct,
      String? nameProduct,
      String? noInvoice,
      String? idProduct,
      String? date,
      String? amount,
      String? img,
      String? description});
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
    Object? nameStore = freezed,
    Object? codeproduct = freezed,
    Object? nameProduct = freezed,
    Object? noInvoice = freezed,
    Object? idProduct = freezed,
    Object? date = freezed,
    Object? amount = freezed,
    Object? img = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      nameStore: freezed == nameStore
          ? _value.nameStore
          : nameStore // ignore: cast_nullable_to_non_nullable
              as String?,
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
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
      {String? nameStore,
      String? codeproduct,
      String? nameProduct,
      String? noInvoice,
      String? idProduct,
      String? date,
      String? amount,
      String? img,
      String? description});
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
    Object? nameStore = freezed,
    Object? codeproduct = freezed,
    Object? nameProduct = freezed,
    Object? noInvoice = freezed,
    Object? idProduct = freezed,
    Object? date = freezed,
    Object? amount = freezed,
    Object? img = freezed,
    Object? description = freezed,
  }) {
    return _then(_$DataImpl(
      nameStore: freezed == nameStore
          ? _value.nameStore
          : nameStore // ignore: cast_nullable_to_non_nullable
              as String?,
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
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {this.nameStore,
      this.codeproduct,
      this.nameProduct,
      this.noInvoice,
      this.idProduct,
      this.date,
      this.amount,
      this.img,
      this.description});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final String? nameStore;
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
  final String? img;
  @override
  final String? description;

  @override
  String toString() {
    return 'Data(nameStore: $nameStore, codeproduct: $codeproduct, nameProduct: $nameProduct, noInvoice: $noInvoice, idProduct: $idProduct, date: $date, amount: $amount, img: $img, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.nameStore, nameStore) ||
                other.nameStore == nameStore) &&
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
            (identical(other.img, img) || other.img == img) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nameStore, codeproduct,
      nameProduct, noInvoice, idProduct, date, amount, img, description);

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
      {final String? nameStore,
      final String? codeproduct,
      final String? nameProduct,
      final String? noInvoice,
      final String? idProduct,
      final String? date,
      final String? amount,
      final String? img,
      final String? description}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  String? get nameStore;
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
  String? get img;
  @override
  String? get description;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
