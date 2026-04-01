// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_doctor_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookDoctorResponse _$BookDoctorResponseFromJson(Map<String, dynamic> json) =>
    BookDoctorResponse(
      message: json['message'] as String,
      data: BookDoctorData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BookDoctorResponseToJson(BookDoctorResponse instance) =>
    <String, dynamic>{'message': instance.message, 'data': instance.data};

BookDoctorData _$BookDoctorDataFromJson(Map<String, dynamic> json) =>
    BookDoctorData(
      appointment: Appointment.fromJson(
        json['appointment'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$BookDoctorDataToJson(BookDoctorData instance) =>
    <String, dynamic>{'appointment': instance.appointment};

Appointment _$AppointmentFromJson(Map<String, dynamic> json) => Appointment(
  doctorId: json['doctorId'] as String,
  patientId: json['patientId'] as String,
  date: DateTime.parse(json['date'] as String),
  status: json['status'] as String,
  id: json['_id'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  v: (json['__v'] as num).toInt(),
);

Map<String, dynamic> _$AppointmentToJson(Appointment instance) =>
    <String, dynamic>{
      'doctorId': instance.doctorId,
      'patientId': instance.patientId,
      'date': instance.date.toIso8601String(),
      'status': instance.status,
      '_id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      '__v': instance.v,
    };
