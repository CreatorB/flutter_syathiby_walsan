// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Makan _$MakanFromJson(Map<String, dynamic> json) {
  return _Makan.fromJson(json);
}

/// @nodoc
mixin _$Makan {
  @JsonKey(name: 'key')
  String? get makanKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_asrama')
  String? get idAsrama => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama_asrama')
  String? get namaAsrama => throw _privateConstructorUsedError;
  @JsonKey(name: 'jumlah_santri')
  int? get jumlahSantri => throw _privateConstructorUsedError;
  @JsonKey(name: 'musrif')
  String? get musrif => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String? get tanggal => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'absenpagi')
  int? get absenPagi => throw _privateConstructorUsedError;
  @JsonKey(name: 'tidakabsenpagi')
  int? get tidakAbsenPagi => throw _privateConstructorUsedError;
  @JsonKey(name: 'absensiang')
  int? get absenSiang => throw _privateConstructorUsedError;
  @JsonKey(name: 'tidakabsensiang')
  int? get tidakAbsenSiang => throw _privateConstructorUsedError;
  @JsonKey(name: 'absenmalam')
  int? get absenMalam => throw _privateConstructorUsedError;
  @JsonKey(name: 'tidakabsenmalam')
  int? get tidakAbsenMalam => throw _privateConstructorUsedError;

  /// Serializes this Makan to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Makan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MakanCopyWith<Makan> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MakanCopyWith<$Res> {
  factory $MakanCopyWith(Makan value, $Res Function(Makan) then) =
      _$MakanCopyWithImpl<$Res, Makan>;
  @useResult
  $Res call(
      {@JsonKey(name: 'key') String? makanKey,
      @JsonKey(name: 'id_asrama') String? idAsrama,
      @JsonKey(name: 'nama_asrama') String? namaAsrama,
      @JsonKey(name: 'jumlah_santri') int? jumlahSantri,
      @JsonKey(name: 'musrif') String? musrif,
      @JsonKey(name: 'date') String? tanggal,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'absenpagi') int? absenPagi,
      @JsonKey(name: 'tidakabsenpagi') int? tidakAbsenPagi,
      @JsonKey(name: 'absensiang') int? absenSiang,
      @JsonKey(name: 'tidakabsensiang') int? tidakAbsenSiang,
      @JsonKey(name: 'absenmalam') int? absenMalam,
      @JsonKey(name: 'tidakabsenmalam') int? tidakAbsenMalam});
}

/// @nodoc
class _$MakanCopyWithImpl<$Res, $Val extends Makan>
    implements $MakanCopyWith<$Res> {
  _$MakanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Makan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? makanKey = freezed,
    Object? idAsrama = freezed,
    Object? namaAsrama = freezed,
    Object? jumlahSantri = freezed,
    Object? musrif = freezed,
    Object? tanggal = freezed,
    Object? status = freezed,
    Object? absenPagi = freezed,
    Object? tidakAbsenPagi = freezed,
    Object? absenSiang = freezed,
    Object? tidakAbsenSiang = freezed,
    Object? absenMalam = freezed,
    Object? tidakAbsenMalam = freezed,
  }) {
    return _then(_value.copyWith(
      makanKey: freezed == makanKey
          ? _value.makanKey
          : makanKey // ignore: cast_nullable_to_non_nullable
              as String?,
      idAsrama: freezed == idAsrama
          ? _value.idAsrama
          : idAsrama // ignore: cast_nullable_to_non_nullable
              as String?,
      namaAsrama: freezed == namaAsrama
          ? _value.namaAsrama
          : namaAsrama // ignore: cast_nullable_to_non_nullable
              as String?,
      jumlahSantri: freezed == jumlahSantri
          ? _value.jumlahSantri
          : jumlahSantri // ignore: cast_nullable_to_non_nullable
              as int?,
      musrif: freezed == musrif
          ? _value.musrif
          : musrif // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggal: freezed == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      absenPagi: freezed == absenPagi
          ? _value.absenPagi
          : absenPagi // ignore: cast_nullable_to_non_nullable
              as int?,
      tidakAbsenPagi: freezed == tidakAbsenPagi
          ? _value.tidakAbsenPagi
          : tidakAbsenPagi // ignore: cast_nullable_to_non_nullable
              as int?,
      absenSiang: freezed == absenSiang
          ? _value.absenSiang
          : absenSiang // ignore: cast_nullable_to_non_nullable
              as int?,
      tidakAbsenSiang: freezed == tidakAbsenSiang
          ? _value.tidakAbsenSiang
          : tidakAbsenSiang // ignore: cast_nullable_to_non_nullable
              as int?,
      absenMalam: freezed == absenMalam
          ? _value.absenMalam
          : absenMalam // ignore: cast_nullable_to_non_nullable
              as int?,
      tidakAbsenMalam: freezed == tidakAbsenMalam
          ? _value.tidakAbsenMalam
          : tidakAbsenMalam // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MakanImplCopyWith<$Res> implements $MakanCopyWith<$Res> {
  factory _$$MakanImplCopyWith(
          _$MakanImpl value, $Res Function(_$MakanImpl) then) =
      __$$MakanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'key') String? makanKey,
      @JsonKey(name: 'id_asrama') String? idAsrama,
      @JsonKey(name: 'nama_asrama') String? namaAsrama,
      @JsonKey(name: 'jumlah_santri') int? jumlahSantri,
      @JsonKey(name: 'musrif') String? musrif,
      @JsonKey(name: 'date') String? tanggal,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'absenpagi') int? absenPagi,
      @JsonKey(name: 'tidakabsenpagi') int? tidakAbsenPagi,
      @JsonKey(name: 'absensiang') int? absenSiang,
      @JsonKey(name: 'tidakabsensiang') int? tidakAbsenSiang,
      @JsonKey(name: 'absenmalam') int? absenMalam,
      @JsonKey(name: 'tidakabsenmalam') int? tidakAbsenMalam});
}

/// @nodoc
class __$$MakanImplCopyWithImpl<$Res>
    extends _$MakanCopyWithImpl<$Res, _$MakanImpl>
    implements _$$MakanImplCopyWith<$Res> {
  __$$MakanImplCopyWithImpl(
      _$MakanImpl _value, $Res Function(_$MakanImpl) _then)
      : super(_value, _then);

  /// Create a copy of Makan
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? makanKey = freezed,
    Object? idAsrama = freezed,
    Object? namaAsrama = freezed,
    Object? jumlahSantri = freezed,
    Object? musrif = freezed,
    Object? tanggal = freezed,
    Object? status = freezed,
    Object? absenPagi = freezed,
    Object? tidakAbsenPagi = freezed,
    Object? absenSiang = freezed,
    Object? tidakAbsenSiang = freezed,
    Object? absenMalam = freezed,
    Object? tidakAbsenMalam = freezed,
  }) {
    return _then(_$MakanImpl(
      makanKey: freezed == makanKey
          ? _value.makanKey
          : makanKey // ignore: cast_nullable_to_non_nullable
              as String?,
      idAsrama: freezed == idAsrama
          ? _value.idAsrama
          : idAsrama // ignore: cast_nullable_to_non_nullable
              as String?,
      namaAsrama: freezed == namaAsrama
          ? _value.namaAsrama
          : namaAsrama // ignore: cast_nullable_to_non_nullable
              as String?,
      jumlahSantri: freezed == jumlahSantri
          ? _value.jumlahSantri
          : jumlahSantri // ignore: cast_nullable_to_non_nullable
              as int?,
      musrif: freezed == musrif
          ? _value.musrif
          : musrif // ignore: cast_nullable_to_non_nullable
              as String?,
      tanggal: freezed == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      absenPagi: freezed == absenPagi
          ? _value.absenPagi
          : absenPagi // ignore: cast_nullable_to_non_nullable
              as int?,
      tidakAbsenPagi: freezed == tidakAbsenPagi
          ? _value.tidakAbsenPagi
          : tidakAbsenPagi // ignore: cast_nullable_to_non_nullable
              as int?,
      absenSiang: freezed == absenSiang
          ? _value.absenSiang
          : absenSiang // ignore: cast_nullable_to_non_nullable
              as int?,
      tidakAbsenSiang: freezed == tidakAbsenSiang
          ? _value.tidakAbsenSiang
          : tidakAbsenSiang // ignore: cast_nullable_to_non_nullable
              as int?,
      absenMalam: freezed == absenMalam
          ? _value.absenMalam
          : absenMalam // ignore: cast_nullable_to_non_nullable
              as int?,
      tidakAbsenMalam: freezed == tidakAbsenMalam
          ? _value.tidakAbsenMalam
          : tidakAbsenMalam // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MakanImpl implements _Makan {
  const _$MakanImpl(
      {@JsonKey(name: 'key') this.makanKey,
      @JsonKey(name: 'id_asrama') this.idAsrama,
      @JsonKey(name: 'nama_asrama') this.namaAsrama,
      @JsonKey(name: 'jumlah_santri') this.jumlahSantri,
      @JsonKey(name: 'musrif') this.musrif,
      @JsonKey(name: 'date') this.tanggal,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'absenpagi') this.absenPagi,
      @JsonKey(name: 'tidakabsenpagi') this.tidakAbsenPagi,
      @JsonKey(name: 'absensiang') this.absenSiang,
      @JsonKey(name: 'tidakabsensiang') this.tidakAbsenSiang,
      @JsonKey(name: 'absenmalam') this.absenMalam,
      @JsonKey(name: 'tidakabsenmalam') this.tidakAbsenMalam});

  factory _$MakanImpl.fromJson(Map<String, dynamic> json) =>
      _$$MakanImplFromJson(json);

  @override
  @JsonKey(name: 'key')
  final String? makanKey;
  @override
  @JsonKey(name: 'id_asrama')
  final String? idAsrama;
  @override
  @JsonKey(name: 'nama_asrama')
  final String? namaAsrama;
  @override
  @JsonKey(name: 'jumlah_santri')
  final int? jumlahSantri;
  @override
  @JsonKey(name: 'musrif')
  final String? musrif;
  @override
  @JsonKey(name: 'date')
  final String? tanggal;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'absenpagi')
  final int? absenPagi;
  @override
  @JsonKey(name: 'tidakabsenpagi')
  final int? tidakAbsenPagi;
  @override
  @JsonKey(name: 'absensiang')
  final int? absenSiang;
  @override
  @JsonKey(name: 'tidakabsensiang')
  final int? tidakAbsenSiang;
  @override
  @JsonKey(name: 'absenmalam')
  final int? absenMalam;
  @override
  @JsonKey(name: 'tidakabsenmalam')
  final int? tidakAbsenMalam;

  @override
  String toString() {
    return 'Makan(makanKey: $makanKey, idAsrama: $idAsrama, namaAsrama: $namaAsrama, jumlahSantri: $jumlahSantri, musrif: $musrif, tanggal: $tanggal, status: $status, absenPagi: $absenPagi, tidakAbsenPagi: $tidakAbsenPagi, absenSiang: $absenSiang, tidakAbsenSiang: $tidakAbsenSiang, absenMalam: $absenMalam, tidakAbsenMalam: $tidakAbsenMalam)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MakanImpl &&
            (identical(other.makanKey, makanKey) ||
                other.makanKey == makanKey) &&
            (identical(other.idAsrama, idAsrama) ||
                other.idAsrama == idAsrama) &&
            (identical(other.namaAsrama, namaAsrama) ||
                other.namaAsrama == namaAsrama) &&
            (identical(other.jumlahSantri, jumlahSantri) ||
                other.jumlahSantri == jumlahSantri) &&
            (identical(other.musrif, musrif) || other.musrif == musrif) &&
            (identical(other.tanggal, tanggal) || other.tanggal == tanggal) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.absenPagi, absenPagi) ||
                other.absenPagi == absenPagi) &&
            (identical(other.tidakAbsenPagi, tidakAbsenPagi) ||
                other.tidakAbsenPagi == tidakAbsenPagi) &&
            (identical(other.absenSiang, absenSiang) ||
                other.absenSiang == absenSiang) &&
            (identical(other.tidakAbsenSiang, tidakAbsenSiang) ||
                other.tidakAbsenSiang == tidakAbsenSiang) &&
            (identical(other.absenMalam, absenMalam) ||
                other.absenMalam == absenMalam) &&
            (identical(other.tidakAbsenMalam, tidakAbsenMalam) ||
                other.tidakAbsenMalam == tidakAbsenMalam));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      makanKey,
      idAsrama,
      namaAsrama,
      jumlahSantri,
      musrif,
      tanggal,
      status,
      absenPagi,
      tidakAbsenPagi,
      absenSiang,
      tidakAbsenSiang,
      absenMalam,
      tidakAbsenMalam);

  /// Create a copy of Makan
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MakanImplCopyWith<_$MakanImpl> get copyWith =>
      __$$MakanImplCopyWithImpl<_$MakanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MakanImplToJson(
      this,
    );
  }
}

abstract class _Makan implements Makan {
  const factory _Makan(
          {@JsonKey(name: 'key') final String? makanKey,
          @JsonKey(name: 'id_asrama') final String? idAsrama,
          @JsonKey(name: 'nama_asrama') final String? namaAsrama,
          @JsonKey(name: 'jumlah_santri') final int? jumlahSantri,
          @JsonKey(name: 'musrif') final String? musrif,
          @JsonKey(name: 'date') final String? tanggal,
          @JsonKey(name: 'status') final String? status,
          @JsonKey(name: 'absenpagi') final int? absenPagi,
          @JsonKey(name: 'tidakabsenpagi') final int? tidakAbsenPagi,
          @JsonKey(name: 'absensiang') final int? absenSiang,
          @JsonKey(name: 'tidakabsensiang') final int? tidakAbsenSiang,
          @JsonKey(name: 'absenmalam') final int? absenMalam,
          @JsonKey(name: 'tidakabsenmalam') final int? tidakAbsenMalam}) =
      _$MakanImpl;

  factory _Makan.fromJson(Map<String, dynamic> json) = _$MakanImpl.fromJson;

  @override
  @JsonKey(name: 'key')
  String? get makanKey;
  @override
  @JsonKey(name: 'id_asrama')
  String? get idAsrama;
  @override
  @JsonKey(name: 'nama_asrama')
  String? get namaAsrama;
  @override
  @JsonKey(name: 'jumlah_santri')
  int? get jumlahSantri;
  @override
  @JsonKey(name: 'musrif')
  String? get musrif;
  @override
  @JsonKey(name: 'date')
  String? get tanggal;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'absenpagi')
  int? get absenPagi;
  @override
  @JsonKey(name: 'tidakabsenpagi')
  int? get tidakAbsenPagi;
  @override
  @JsonKey(name: 'absensiang')
  int? get absenSiang;
  @override
  @JsonKey(name: 'tidakabsensiang')
  int? get tidakAbsenSiang;
  @override
  @JsonKey(name: 'absenmalam')
  int? get absenMalam;
  @override
  @JsonKey(name: 'tidakabsenmalam')
  int? get tidakAbsenMalam;

  /// Create a copy of Makan
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MakanImplCopyWith<_$MakanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
