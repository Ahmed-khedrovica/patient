import 'package:json_annotation/json_annotation.dart';

part 'book_doctor_response.g.dart';

@JsonSerializable()
class BookDoctorResponse {
  final String message;
  final BookDoctorData data;

  BookDoctorResponse({required this.message, required this.data});

  factory BookDoctorResponse.fromJson(Map<String, dynamic> json) =>
      _$BookDoctorResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BookDoctorResponseToJson(this);
}

@JsonSerializable()
class BookDoctorData {
  final Appointment appointment;

  BookDoctorData({required this.appointment});

  factory BookDoctorData.fromJson(Map<String, dynamic> json) =>
      _$BookDoctorDataFromJson(json);

  Map<String, dynamic> toJson() => _$BookDoctorDataToJson(this);
}

@JsonSerializable()
class Appointment {
  final String doctorId;
  final String patientId;
  final DateTime date;
  final String status;

  @JsonKey(name: '_id')
  final String id;

  final DateTime createdAt;
  final DateTime updatedAt;

  @JsonKey(name: '__v')
  final int v;

  Appointment({
    required this.doctorId,
    required this.patientId,
    required this.date,
    required this.status,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory Appointment.fromJson(Map<String, dynamic> json) =>
      _$AppointmentFromJson(json);

  Map<String, dynamic> toJson() => _$AppointmentToJson(this);
}
