import 'package:json_annotation/json_annotation.dart';

part 'signup_response.g.dart';

@JsonSerializable()
class SignupResponse {
  final String message;
  final UserData data;

  SignupResponse({
    required this.message,
    required this.data,
  });

  factory SignupResponse.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SignupResponseToJson(this);
}

@JsonSerializable()
class UserData {
  final String firstName;
  final String lastName;
  final String email;
  final String role;
  final String phone;
  final bool isDeleted;

  @JsonKey(name: '_id')
  final String id;

  final DateTime createdAt;
  final DateTime updatedAt;

  @JsonKey(name: '__v')
  final int v;

  UserData({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.role,
    required this.phone,
    required this.isDeleted,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}