// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointments_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppointmentsResponse _$AppointmentsResponseFromJson(
  Map<String, dynamic> json,
) => AppointmentsResponse(
  message: json['message'] as String,
  data: AppointmentsData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AppointmentsResponseToJson(
  AppointmentsResponse instance,
) => <String, dynamic>{'message': instance.message, 'data': instance.data};

AppointmentsData _$AppointmentsDataFromJson(Map<String, dynamic> json) =>
    AppointmentsData(
      appointments: (json['appointments'] as List<dynamic>)
          .map((e) => Appointment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AppointmentsDataToJson(AppointmentsData instance) =>
    <String, dynamic>{'appointments': instance.appointments};

Appointment _$AppointmentFromJson(Map<String, dynamic> json) => Appointment(
  id: json['_id'] as String,
  doctorId: Doctor.fromJson(json['doctorId'] as Map<String, dynamic>),
  patientId: json['patientId'] as String,
  date: DateTime.parse(json['date'] as String),
  status: json['status'] as String,
);

Map<String, dynamic> _$AppointmentToJson(Appointment instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'doctorId': instance.doctorId,
      'patientId': instance.patientId,
      'date': instance.date.toIso8601String(),
      'status': instance.status,
    };

Doctor _$DoctorFromJson(Map<String, dynamic> json) => Doctor(
  id: json['_id'] as String,
  userId: User.fromJson(json['userId'] as Map<String, dynamic>),
  specialtyId: Specialty.fromJson(json['specialtyId'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DoctorToJson(Doctor instance) => <String, dynamic>{
  '_id': instance.id,
  'userId': instance.userId,
  'specialtyId': instance.specialtyId,
};

User _$UserFromJson(Map<String, dynamic> json) => User(
  id: json['_id'] as String,
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  email: json['email'] as String,
  phone: json['phone'] as String,
);

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
  '_id': instance.id,
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'email': instance.email,
  'phone': instance.phone,
};

Specialty _$SpecialtyFromJson(Map<String, dynamic> json) => Specialty(
  id: json['_id'] as String,
  name: json['name'] as String,
  schedule: (json['schedule'] as List<dynamic>)
      .map((e) => Schedule.fromJson(e as Map<String, dynamic>))
      .toList(),
  maxAppointmentsPerDay: (json['maxAppointmentsPerDay'] as num).toInt(),
);

Map<String, dynamic> _$SpecialtyToJson(Specialty instance) => <String, dynamic>{
  '_id': instance.id,
  'name': instance.name,
  'schedule': instance.schedule,
  'maxAppointmentsPerDay': instance.maxAppointmentsPerDay,
};

Schedule _$ScheduleFromJson(Map<String, dynamic> json) => Schedule(
  day: json['day'] as String,
  startTime: json['startTime'] as String,
  endTime: json['endTime'] as String,
);

Map<String, dynamic> _$ScheduleToJson(Schedule instance) => <String, dynamic>{
  'day': instance.day,
  'startTime': instance.startTime,
  'endTime': instance.endTime,
};
