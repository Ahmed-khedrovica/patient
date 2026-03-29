// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupResponse _$SignupResponseFromJson(Map<String, dynamic> json) =>
    SignupResponse(
      message: json['message'] as String,
      data: UserData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignupResponseToJson(SignupResponse instance) =>
    <String, dynamic>{'message': instance.message, 'data': instance.data};

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  email: json['email'] as String,
  role: json['role'] as String,
  phone: json['phone'] as String,
  isDeleted: json['isDeleted'] as bool,
  id: json['_id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  v: (json['__v'] as num).toInt(),
);

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'email': instance.email,
  'role': instance.role,
  'phone': instance.phone,
  'isDeleted': instance.isDeleted,
  '_id': instance.id,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  '__v': instance.v,
};
