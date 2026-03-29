import 'package:json_annotation/json_annotation.dart';

part 'specialties_response.g.dart';

@JsonSerializable()
class SpecialtiesResponse {
  final String message;
  final Data data;

  SpecialtiesResponse({
    required this.message,
    required this.data,
  });

  factory SpecialtiesResponse.fromJson(Map<String, dynamic> json) =>
      _$SpecialtiesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SpecialtiesResponseToJson(this);
}

@JsonSerializable()
class Data {
  final List<Specialty> specialties;
  final Pagination pagination;

  Data({
    required this.specialties,
    required this.pagination,
  });

  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);

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
  final int v;

  final DateTime createdAt;
  final DateTime updatedAt;

  Specialty({
    required this.id,
    required this.name,
    required this.schedule,
    required this.maxAppointmentsPerDay,
    required this.v,
    required this.createdAt,
    required this.updatedAt,
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

@JsonSerializable()
class Pagination {
  final SpecialtiesPagination specialties;

  Pagination({
    required this.specialties,
  });

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);

  Map<String, dynamic> toJson() => _$PaginationToJson(this);
}

@JsonSerializable()
class SpecialtiesPagination {
  final int total;
  final int page;
  final int limit;
  final int pages;
  final bool hasNext;
  final bool hasPrev;

  SpecialtiesPagination({
    required this.total,
    required this.page,
    required this.limit,
    required this.pages,
    required this.hasNext,
    required this.hasPrev,
  });

  factory SpecialtiesPagination.fromJson(Map<String, dynamic> json) =>
      _$SpecialtiesPaginationFromJson(json);

  Map<String, dynamic> toJson() =>
      _$SpecialtiesPaginationToJson(this);
}