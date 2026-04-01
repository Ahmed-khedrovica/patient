// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_doctor_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookDoctorRequest _$BookDoctorRequestFromJson(Map<String, dynamic> json) =>
    BookDoctorRequest(
      doctorId: json['doctorId'] as String,
      day: json['day'] as String,
      hour: json['hour'] as String,
    );

Map<String, dynamic> _$BookDoctorRequestToJson(BookDoctorRequest instance) =>
    <String, dynamic>{
      'doctorId': instance.doctorId,
      'day': instance.day,
      'hour': instance.hour,
    };
