import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient/features/book_doctor/data/models/book_doctor_request.dart';
import 'package:patient/features/book_doctor/data/repos/book_doctor_repo.dart';
import 'package:patient/features/book_doctor/logic/book_doctor_state.dart';
import 'package:patient/features/home/data/models/specialties_response.dart';

import '../../../core/networking/api_result.dart';

class BookDoctorCubit extends Cubit<BookDoctorState> {
  final BookDoctorRepo _bookDoctorRepo;

  BookDoctorCubit(this._bookDoctorRepo) : super(const BookDoctorInitial());

  String? selectedDay;
  String? selectedHour;

  /// Selects [day] as the active day and clears any selected hour.
  /// Pass an empty string to deselect the current day.
  void selectDay(String day) {
    selectedDay = day.isEmpty ? null : day;
    selectedHour = null;
    emit(BookDoctorSelectionUpdated(selectedDay: selectedDay));
  }

  /// Selects [hour] as the active hour.
  /// Pass an empty string to deselect the current hour.
  void selectHour(String hour) {
    selectedHour = hour.isEmpty ? null : hour;
    emit(
      BookDoctorSelectionUpdated(
        selectedDay: selectedDay,
        selectedHour: selectedHour,
      ),
    );
  }

  List<String> availableDays(Doctor doctor) {
    return doctor.specialtyId.schedule.map((e) => e.day).toList();
  }

  List<String> availableHoursForDay(Doctor doctor) {
    if (selectedDay == null) return [];
    final slots = doctor.specialtyId.schedule
        .where((e) => e.day == selectedDay)
        .toList();
    if (slots.isEmpty) return [];

    final hours = <String>{};
    for (final slot in slots) {
      hours.add(slot.startTime);
      hours.add(slot.endTime);
    }
    return hours.toList()..sort();
  }

  Future<void> bookAppointment({required Doctor doctor}) async {
    if (selectedDay == null || selectedHour == null) {
      emit(const BookDoctorError('Please select a day and hour first.'));
      return;
    }

    emit(const BookDoctorLoading());
    final response = await _bookDoctorRepo.bookDoctor(
      BookDoctorRequest(
        doctorId: doctor.id,
        day: selectedDay!,
        hour: selectedHour!,
      ),
    );

    response.when(
      success: (data) => emit(BookDoctorSuccess(data)),
      failure: (error) => emit(
        BookDoctorError(error.apiErrorModel.message ?? 'Booking failed.'),
      ),
    );
  }
}
