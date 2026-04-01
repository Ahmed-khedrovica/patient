import 'package:json_annotation/json_annotation.dart';

part 'specialties_response.g.dart';

@JsonSerializable()
class SpecialtiesResponse {
  final String message;
  final Data data;

  SpecialtiesResponse({required this.message, required this.data});

  factory SpecialtiesResponse.fromJson(Map<String, dynamic> json) =>
      _$SpecialtiesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SpecialtiesResponseToJson(this);
}

@JsonSerializable()
class Data {
  final List<Specialty> specialties;
  final List<Doctor> doctors;
  final Pagination pagination;

  Data({
    required this.specialties,
    required this.doctors,
    required this.pagination,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Specialty {
  @JsonKey(name: '_id')
  final String id;

  final String name;
  final List<Schedule> schedule;
  final int maxAppointmentsPerDay;

  @JsonKey(name: '__v')
  final int? v;

  final DateTime? createdAt;
  final DateTime? updatedAt;

  Specialty({
    required this.id,
    required this.name,
    required this.schedule,
    required this.maxAppointmentsPerDay,
    this.v,
    this.createdAt,
    this.updatedAt,
  });

  factory Specialty.fromJson(Map<String, dynamic> json) =>
      _$SpecialtyFromJson(json);

  Map<String, dynamic> toJson() => _$SpecialtyToJson(this);
}

@JsonSerializable()
class Doctor {
  @JsonKey(name: '_id')
  final String id;

  final User userId;

  final Specialty specialtyId;

  final DateTime createdAt;
  final DateTime updatedAt;

  @JsonKey(name: '__v')
  final int v;

  Doctor({
    required this.id,
    required this.userId,
    required this.specialtyId,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });

  factory Doctor.fromJson(Map<String, dynamic> json) => _$DoctorFromJson(json);

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

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@JsonSerializable()
class Schedule {
  final String day;
  final String startTime;
  final String endTime;

  Schedule({required this.day, required this.startTime, required this.endTime});

  factory Schedule.fromJson(Map<String, dynamic> json) =>
      _$ScheduleFromJson(json);

  Map<String, dynamic> toJson() => _$ScheduleToJson(this);
}

@JsonSerializable()
class Pagination {
  final PageInfo specialties;
  final PageInfo doctors;

  Pagination({required this.specialties, required this.doctors});

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);

  Map<String, dynamic> toJson() => _$PaginationToJson(this);
}

@JsonSerializable()
class PageInfo {
  final int total;
  final int page;
  final int limit;
  final int pages;
  final bool hasNext;
  final bool hasPrev;

  PageInfo({
    required this.total,
    required this.page,
    required this.limit,
    required this.pages,
    required this.hasNext,
    required this.hasPrev,
  });

  factory PageInfo.fromJson(Map<String, dynamic> json) =>
      _$PageInfoFromJson(json);

  Map<String, dynamic> toJson() => _$PageInfoToJson(this);
}
