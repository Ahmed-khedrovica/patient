// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specialties_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SpecialtiesResponse _$SpecialtiesResponseFromJson(Map<String, dynamic> json) =>
    SpecialtiesResponse(
      message: json['message'] as String,
      data: Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SpecialtiesResponseToJson(
  SpecialtiesResponse instance,
) => <String, dynamic>{'message': instance.message, 'data': instance.data};

Data _$DataFromJson(Map<String, dynamic> json) => Data(
  specialties: (json['specialties'] as List<dynamic>)
      .map((e) => Specialty.fromJson(e as Map<String, dynamic>))
      .toList(),
  doctors: (json['doctors'] as List<dynamic>)
      .map((e) => Doctor.fromJson(e as Map<String, dynamic>))
      .toList(),
  pagination: Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
  'specialties': instance.specialties,
  'doctors': instance.doctors,
  'pagination': instance.pagination,
};

Specialty _$SpecialtyFromJson(Map<String, dynamic> json) => Specialty(
  id: json['_id'] as String,
  name: json['name'] as String,
  schedule: (json['schedule'] as List<dynamic>)
      .map((e) => Schedule.fromJson(e as Map<String, dynamic>))
      .toList(),
  maxAppointmentsPerDay: (json['maxAppointmentsPerDay'] as num).toInt(),
  v: (json['__v'] as num?)?.toInt(),
  createdAt: json['createdAt'] == null
      ? null
      : DateTime.parse(json['createdAt'] as String),
  updatedAt: json['updatedAt'] == null
      ? null
      : DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$SpecialtyToJson(Specialty instance) => <String, dynamic>{
  '_id': instance.id,
  'name': instance.name,
  'schedule': instance.schedule,
  'maxAppointmentsPerDay': instance.maxAppointmentsPerDay,
  '__v': instance.v,
  'createdAt': instance.createdAt?.toIso8601String(),
  'updatedAt': instance.updatedAt?.toIso8601String(),
};

Doctor _$DoctorFromJson(Map<String, dynamic> json) => Doctor(
  id: json['_id'] as String,
  userId: User.fromJson(json['userId'] as Map<String, dynamic>),
  specialtyId: Specialty.fromJson(json['specialtyId'] as Map<String, dynamic>),
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  v: (json['__v'] as num).toInt(),
);

Map<String, dynamic> _$DoctorToJson(Doctor instance) => <String, dynamic>{
  '_id': instance.id,
  'userId': instance.userId,
  'specialtyId': instance.specialtyId,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
  '__v': instance.v,
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

Pagination _$PaginationFromJson(Map<String, dynamic> json) => Pagination(
  specialties: PageInfo.fromJson(json['specialties'] as Map<String, dynamic>),
  doctors: PageInfo.fromJson(json['doctors'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PaginationToJson(Pagination instance) =>
    <String, dynamic>{
      'specialties': instance.specialties,
      'doctors': instance.doctors,
    };

PageInfo _$PageInfoFromJson(Map<String, dynamic> json) => PageInfo(
  total: (json['total'] as num).toInt(),
  page: (json['page'] as num).toInt(),
  limit: (json['limit'] as num).toInt(),
  pages: (json['pages'] as num).toInt(),
  hasNext: json['hasNext'] as bool,
  hasPrev: json['hasPrev'] as bool,
);

Map<String, dynamic> _$PageInfoToJson(PageInfo instance) => <String, dynamic>{
  'total': instance.total,
  'page': instance.page,
  'limit': instance.limit,
  'pages': instance.pages,
  'hasNext': instance.hasNext,
  'hasPrev': instance.hasPrev,
};
