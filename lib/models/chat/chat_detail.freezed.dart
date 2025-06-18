// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailChat _$DetailChatFromJson(Map<String, dynamic> json) {
  return _DetailChat.fromJson(json);
}

/// @nodoc
mixin _$DetailChat {
  Info? get info => throw _privateConstructorUsedError;
  List<Data>? get data => throw _privateConstructorUsedError;

  /// Serializes this DetailChat to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DetailChat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailChatCopyWith<DetailChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailChatCopyWith<$Res> {
  factory $DetailChatCopyWith(
          DetailChat value, $Res Function(DetailChat) then) =
      _$DetailChatCopyWithImpl<$Res, DetailChat>;
  @useResult
  $Res call({Info? info, List<Data>? data});

  $InfoCopyWith<$Res>? get info;
}

/// @nodoc
class _$DetailChatCopyWithImpl<$Res, $Val extends DetailChat>
    implements $DetailChatCopyWith<$Res> {
  _$DetailChatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailChat
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
              as Info?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
    ) as $Val);
  }

  /// Create a copy of DetailChat
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
abstract class _$$DetailChatImplCopyWith<$Res>
    implements $DetailChatCopyWith<$Res> {
  factory _$$DetailChatImplCopyWith(
          _$DetailChatImpl value, $Res Function(_$DetailChatImpl) then) =
      __$$DetailChatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Info? info, List<Data>? data});

  @override
  $InfoCopyWith<$Res>? get info;
}

/// @nodoc
class __$$DetailChatImplCopyWithImpl<$Res>
    extends _$DetailChatCopyWithImpl<$Res, _$DetailChatImpl>
    implements _$$DetailChatImplCopyWith<$Res> {
  __$$DetailChatImplCopyWithImpl(
      _$DetailChatImpl _value, $Res Function(_$DetailChatImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailChat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = freezed,
    Object? data = freezed,
  }) {
    return _then(_$DetailChatImpl(
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Info?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Data>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DetailChatImpl implements _DetailChat {
  const _$DetailChatImpl({this.info, final List<Data>? data}) : _data = data;

  factory _$DetailChatImpl.fromJson(Map<String, dynamic> json) =>
      _$$DetailChatImplFromJson(json);

  @override
  final Info? info;
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
    return 'DetailChat(info: $info, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailChatImpl &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, info, const DeepCollectionEquality().hash(_data));

  /// Create a copy of DetailChat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailChatImplCopyWith<_$DetailChatImpl> get copyWith =>
      __$$DetailChatImplCopyWithImpl<_$DetailChatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DetailChatImplToJson(
      this,
    );
  }
}

abstract class _DetailChat implements DetailChat {
  const factory _DetailChat({final Info? info, final List<Data>? data}) =
      _$DetailChatImpl;

  factory _DetailChat.fromJson(Map<String, dynamic> json) =
      _$DetailChatImpl.fromJson;

  @override
  Info? get info;
  @override
  List<Data>? get data;

  /// Create a copy of DetailChat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailChatImplCopyWith<_$DetailChatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Info _$InfoFromJson(Map<String, dynamic> json) {
  return _Info.fromJson(json);
}

/// @nodoc
mixin _$Info {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get detail => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get chat => throw _privateConstructorUsedError;
  String? get no_invoice => throw _privateConstructorUsedError;

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
      {String? id,
      String? name,
      String? detail,
      String date,
      String? status,
      String? chat,
      String? no_invoice});
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
    Object? id = freezed,
    Object? name = freezed,
    Object? detail = freezed,
    Object? date = null,
    Object? status = freezed,
    Object? chat = freezed,
    Object? no_invoice = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      chat: freezed == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as String?,
      no_invoice: freezed == no_invoice
          ? _value.no_invoice
          : no_invoice // ignore: cast_nullable_to_non_nullable
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
      {String? id,
      String? name,
      String? detail,
      String date,
      String? status,
      String? chat,
      String? no_invoice});
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
    Object? id = freezed,
    Object? name = freezed,
    Object? detail = freezed,
    Object? date = null,
    Object? status = freezed,
    Object? chat = freezed,
    Object? no_invoice = freezed,
  }) {
    return _then(_$InfoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      chat: freezed == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as String?,
      no_invoice: freezed == no_invoice
          ? _value.no_invoice
          : no_invoice // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InfoImpl implements _Info {
  const _$InfoImpl(
      {this.id,
      this.name,
      this.detail = "",
      this.date = "0",
      this.status = "0",
      this.chat,
      this.no_invoice});

  factory _$InfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InfoImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  @JsonKey()
  final String? detail;
  @override
  @JsonKey()
  final String date;
  @override
  @JsonKey()
  final String? status;
  @override
  final String? chat;
  @override
  final String? no_invoice;

  @override
  String toString() {
    return 'Info(id: $id, name: $name, detail: $detail, date: $date, status: $status, chat: $chat, no_invoice: $no_invoice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InfoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.chat, chat) || other.chat == chat) &&
            (identical(other.no_invoice, no_invoice) ||
                other.no_invoice == no_invoice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, detail, date, status, chat, no_invoice);

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
      {final String? id,
      final String? name,
      final String? detail,
      final String date,
      final String? status,
      final String? chat,
      final String? no_invoice}) = _$InfoImpl;

  factory _Info.fromJson(Map<String, dynamic> json) = _$InfoImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get detail;
  @override
  String get date;
  @override
  String? get status;
  @override
  String? get chat;
  @override
  String? get no_invoice;

  /// Create a copy of Info
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InfoImplCopyWith<_$InfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get phone_number => throw _privateConstructorUsedError;
  String? get detail => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get chat => throw _privateConstructorUsedError;
  String? get img => throw _privateConstructorUsedError;
  String? get no_invoice => throw _privateConstructorUsedError;
  String? get read => throw _privateConstructorUsedError;
  String? get chat_images => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String? get active => throw _privateConstructorUsedError;
  String? get emoji => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get peserta => throw _privateConstructorUsedError;
  String? get position => throw _privateConstructorUsedError;
  String? get reply => throw _privateConstructorUsedError;
  String? get chat_reply => throw _privateConstructorUsedError;
  String? get user_reply => throw _privateConstructorUsedError;

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
      {String? id,
      String? name,
      String? phone_number,
      String? detail,
      String? date,
      String? status,
      String? chat,
      String? img,
      String? no_invoice,
      String? read,
      String? chat_images,
      String? photo,
      String? active,
      String? emoji,
      String? location,
      String? peserta,
      String? position,
      String? reply,
      String? chat_reply,
      String? user_reply});
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
    Object? id = freezed,
    Object? name = freezed,
    Object? phone_number = freezed,
    Object? detail = freezed,
    Object? date = freezed,
    Object? status = freezed,
    Object? chat = freezed,
    Object? img = freezed,
    Object? no_invoice = freezed,
    Object? read = freezed,
    Object? chat_images = freezed,
    Object? photo = freezed,
    Object? active = freezed,
    Object? emoji = freezed,
    Object? location = freezed,
    Object? peserta = freezed,
    Object? position = freezed,
    Object? reply = freezed,
    Object? chat_reply = freezed,
    Object? user_reply = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone_number: freezed == phone_number
          ? _value.phone_number
          : phone_number // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      chat: freezed == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      no_invoice: freezed == no_invoice
          ? _value.no_invoice
          : no_invoice // ignore: cast_nullable_to_non_nullable
              as String?,
      read: freezed == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as String?,
      chat_images: freezed == chat_images
          ? _value.chat_images
          : chat_images // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as String?,
      emoji: freezed == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      peserta: freezed == peserta
          ? _value.peserta
          : peserta // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      reply: freezed == reply
          ? _value.reply
          : reply // ignore: cast_nullable_to_non_nullable
              as String?,
      chat_reply: freezed == chat_reply
          ? _value.chat_reply
          : chat_reply // ignore: cast_nullable_to_non_nullable
              as String?,
      user_reply: freezed == user_reply
          ? _value.user_reply
          : user_reply // ignore: cast_nullable_to_non_nullable
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
      {String? id,
      String? name,
      String? phone_number,
      String? detail,
      String? date,
      String? status,
      String? chat,
      String? img,
      String? no_invoice,
      String? read,
      String? chat_images,
      String? photo,
      String? active,
      String? emoji,
      String? location,
      String? peserta,
      String? position,
      String? reply,
      String? chat_reply,
      String? user_reply});
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
    Object? id = freezed,
    Object? name = freezed,
    Object? phone_number = freezed,
    Object? detail = freezed,
    Object? date = freezed,
    Object? status = freezed,
    Object? chat = freezed,
    Object? img = freezed,
    Object? no_invoice = freezed,
    Object? read = freezed,
    Object? chat_images = freezed,
    Object? photo = freezed,
    Object? active = freezed,
    Object? emoji = freezed,
    Object? location = freezed,
    Object? peserta = freezed,
    Object? position = freezed,
    Object? reply = freezed,
    Object? chat_reply = freezed,
    Object? user_reply = freezed,
  }) {
    return _then(_$DataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone_number: freezed == phone_number
          ? _value.phone_number
          : phone_number // ignore: cast_nullable_to_non_nullable
              as String?,
      detail: freezed == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      chat: freezed == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as String?,
      img: freezed == img
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      no_invoice: freezed == no_invoice
          ? _value.no_invoice
          : no_invoice // ignore: cast_nullable_to_non_nullable
              as String?,
      read: freezed == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as String?,
      chat_images: freezed == chat_images
          ? _value.chat_images
          : chat_images // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as String?,
      emoji: freezed == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      peserta: freezed == peserta
          ? _value.peserta
          : peserta // ignore: cast_nullable_to_non_nullable
              as String?,
      position: freezed == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String?,
      reply: freezed == reply
          ? _value.reply
          : reply // ignore: cast_nullable_to_non_nullable
              as String?,
      chat_reply: freezed == chat_reply
          ? _value.chat_reply
          : chat_reply // ignore: cast_nullable_to_non_nullable
              as String?,
      user_reply: freezed == user_reply
          ? _value.user_reply
          : user_reply // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataImpl implements _Data {
  const _$DataImpl(
      {this.id,
      this.name,
      this.phone_number,
      this.detail,
      this.date,
      this.status,
      this.chat,
      this.img,
      this.no_invoice,
      this.read,
      this.chat_images,
      this.photo,
      this.active,
      this.emoji,
      this.location,
      this.peserta,
      this.position,
      this.reply,
      this.chat_reply,
      this.user_reply});

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? phone_number;
  @override
  final String? detail;
  @override
  final String? date;
  @override
  final String? status;
  @override
  final String? chat;
  @override
  final String? img;
  @override
  final String? no_invoice;
  @override
  final String? read;
  @override
  final String? chat_images;
  @override
  final String? photo;
  @override
  final String? active;
  @override
  final String? emoji;
  @override
  final String? location;
  @override
  final String? peserta;
  @override
  final String? position;
  @override
  final String? reply;
  @override
  final String? chat_reply;
  @override
  final String? user_reply;

  @override
  String toString() {
    return 'Data(id: $id, name: $name, phone_number: $phone_number, detail: $detail, date: $date, status: $status, chat: $chat, img: $img, no_invoice: $no_invoice, read: $read, chat_images: $chat_images, photo: $photo, active: $active, emoji: $emoji, location: $location, peserta: $peserta, position: $position, reply: $reply, chat_reply: $chat_reply, user_reply: $user_reply)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone_number, phone_number) ||
                other.phone_number == phone_number) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.chat, chat) || other.chat == chat) &&
            (identical(other.img, img) || other.img == img) &&
            (identical(other.no_invoice, no_invoice) ||
                other.no_invoice == no_invoice) &&
            (identical(other.read, read) || other.read == read) &&
            (identical(other.chat_images, chat_images) ||
                other.chat_images == chat_images) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.emoji, emoji) || other.emoji == emoji) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.peserta, peserta) || other.peserta == peserta) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.reply, reply) || other.reply == reply) &&
            (identical(other.chat_reply, chat_reply) ||
                other.chat_reply == chat_reply) &&
            (identical(other.user_reply, user_reply) ||
                other.user_reply == user_reply));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        phone_number,
        detail,
        date,
        status,
        chat,
        img,
        no_invoice,
        read,
        chat_images,
        photo,
        active,
        emoji,
        location,
        peserta,
        position,
        reply,
        chat_reply,
        user_reply
      ]);

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
      {final String? id,
      final String? name,
      final String? phone_number,
      final String? detail,
      final String? date,
      final String? status,
      final String? chat,
      final String? img,
      final String? no_invoice,
      final String? read,
      final String? chat_images,
      final String? photo,
      final String? active,
      final String? emoji,
      final String? location,
      final String? peserta,
      final String? position,
      final String? reply,
      final String? chat_reply,
      final String? user_reply}) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get phone_number;
  @override
  String? get detail;
  @override
  String? get date;
  @override
  String? get status;
  @override
  String? get chat;
  @override
  String? get img;
  @override
  String? get no_invoice;
  @override
  String? get read;
  @override
  String? get chat_images;
  @override
  String? get photo;
  @override
  String? get active;
  @override
  String? get emoji;
  @override
  String? get location;
  @override
  String? get peserta;
  @override
  String? get position;
  @override
  String? get reply;
  @override
  String? get chat_reply;
  @override
  String? get user_reply;

  /// Create a copy of Data
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
