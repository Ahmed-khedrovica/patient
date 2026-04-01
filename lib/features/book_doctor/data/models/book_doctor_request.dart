import 'package:json_annotation/json_annotation.dart';

part 'book_doctor_request.g.dart';

@JsonSerializable()
class BookDoctorRequest {
  final String doctorId;
  final String day;
  final String hour;

  BookDoctorRequest({
    required this.doctorId,
    required this.day,
    required this.hour,
  });

  factory BookDoctorRequest.fromJson(Map<String, dynamic> json) =>
      _$BookDoctorRequestFromJson(json);

  Map<String, dynamic> toJson() => _$BookDoctorRequestToJson(this);
}