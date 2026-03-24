import 'package:json_annotation/json_annotation.dart';

part 'profile_response.g.dart';

@JsonSerializable()
class ProfileResponse {
  final String message;
  final UserData data;

  ProfileResponse({
    required this.message,
    required this.data,
  });

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileResponseToJson(this);
}

@JsonSerializable()
class UserData {
  @JsonKey(name: '_id')
  final String id;

  final String firstName;
  final String lastName;
  final String email;
  final String role;
  @JsonKey(defaultValue: '')
  final String phone;
  @JsonKey(defaultValue: false)
  final bool isDeleted;

  final DateTime? createdAt;
  final DateTime? updatedAt;

  @JsonKey(name: '__v', defaultValue: 0)
  final int version;

  final String? resetPasswordExpires;
  final String? resetPasswordLastSent;
  final String? resetPasswordToken;

  UserData({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.role,
    this.phone = '',
    this.isDeleted = false,
    this.createdAt,
    this.updatedAt,
    this.version = 0,
    this.resetPasswordExpires,
    this.resetPasswordLastSent,
    this.resetPasswordToken,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
