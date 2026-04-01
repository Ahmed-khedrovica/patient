import 'package:json_annotation/json_annotation.dart';

part 'appointments_response.g.dart';

@JsonSerializable()
class AppointmentsResponse {
  final String message;
  final AppointmentsData data;

  AppointmentsResponse({
    required this.message,
    required this.data,
  });

  factory AppointmentsResponse.fromJson(Map<String, dynamic> json) =>
      _$AppointmentsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AppointmentsResponseToJson(this);
}

@JsonSerializable()
class AppointmentsData {
  final List<Appointment> appointments;

  AppointmentsData({required this.appointments});

  factory AppointmentsData.fromJson(Map<String, dynamic> json) =>
      _$AppointmentsDataFromJson(json);

  Map<String, dynamic> toJson() => _$AppointmentsDataToJson(this);
}

@JsonSerializable()
class Appointment {
  @JsonKey(name: '_id')
  final String id;

  final Doctor doctorId;
  final String patientId;
  final DateTime date;
  final String status;

  Appointment({
    required this.id,
    required this.doctorId,
    required this.patientId,
    required this.date,
    required this.status,
  });

  factory Appointment.fromJson(Map<String, dynamic> json) =>
      _$AppointmentFromJson(json);

  Map<String, dynamic> toJson() => _$AppointmentToJson(this);
}

@JsonSerializable()
class Doctor {
  @JsonKey(name: '_id')
  final String id;

  final User userId;
  final Specialty specialtyId;

  Doctor({
    required this.id,
    required this.userId,
    required this.specialtyId,
  });

  factory Doctor.fromJson(Map<String, dynamic> json) =>
      _$DoctorFromJson(json);

  Map<String, dynamic> toJson() => _$DoctorToJson(this);
}

@JsonSerializable()
class User {
  @JsonKey(name: '_id')
  final String id;

  final String firstName;
  final String lastName;
  final String email;
  final String phone;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
  });

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class Specialty {
  @JsonKey(name: '_id')
  final String id;

  final String name;
  final List<Schedule> schedule;
  final int maxAppointmentsPerDay;

  Specialty({
    required this.id,
    required this.name,
    required this.schedule,
    required this.maxAppointmentsPerDay,
  });

  factory Specialty.fromJson(Map<String, dynamic> json) =>
      _$SpecialtyFromJson(json);

  Map<String, dynamic> toJson() => _$SpecialtyToJson(this);
}

@JsonSerializable()
class Schedule {
  final String day;
  final String startTime;
  final String endTime;

  Schedule({
    required this.day,
    required this.startTime,
    required this.endTime,
  });

  factory Schedule.fromJson(Map<String, dynamic> json) =>
      _$ScheduleFromJson(json);

  Map<String, dynamic> toJson() => _$ScheduleToJson(this);
}