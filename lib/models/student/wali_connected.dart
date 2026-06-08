import 'package:freezed_annotation/freezed_annotation.dart';

part 'wali_connected.freezed.dart';
part 'wali_connected.g.dart';

@freezed
abstract class WaliConnected with _$WaliConnected {
  const factory WaliConnected({
    @JsonKey(name: 'no_wali') String? noWali,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'hubungan') String? hubungan,
    @JsonKey(name: 'is_active') int? isActive,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    @JsonKey(name: 'img') String? img,
  }) = _WaliConnected;

  factory WaliConnected.fromJson(Map<String, dynamic> json) => _$WaliConnectedFromJson(json);
}