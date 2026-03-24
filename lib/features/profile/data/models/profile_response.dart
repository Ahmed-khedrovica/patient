import 'package:json_annotation/json_annotation.dart';

part 'profile_response.g.dart';

@JsonSerializable()
class ProfileResponse {
  final bool success;
  final String message;
  final UserData data;

  ProfileResponse({
    required this.success,
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
  final String phone;
  final bool isDeleted;

  final DateTime createdAt;
  final DateTime updatedAt;

  @JsonKey(name: '__v')
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
    required this.phone,
    required this.isDeleted,
    required this.createdAt,
    required this.updatedAt,
    required this.version,
    this.resetPasswordExpires,
    this.resetPasswordLastSent,
    this.resetPasswordToken,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
