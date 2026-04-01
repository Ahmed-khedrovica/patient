import 'package:patient/features/book_doctor/data/models/book_doctor_response.dart';

abstract class BookDoctorState {
  const BookDoctorState();
}

class BookDoctorInitial extends BookDoctorState {
  const BookDoctorInitial();
}

/// Emitted whenever the user changes their day or hour selection.
/// Carrying the values ensures the state object is never equal to the
/// previous one, so BlocBuilder always rebuilds.
class BookDoctorSelectionUpdated extends BookDoctorState {
  final String? selectedDay;
  final String? selectedHour;

  const BookDoctorSelectionUpdated({this.selectedDay, this.selectedHour});
}

class BookDoctorLoading extends BookDoctorState {
  const BookDoctorLoading();
}

class BookDoctorSuccess extends BookDoctorState {
  final BookDoctorResponse response;

  const BookDoctorSuccess(this.response);
}

class BookDoctorError extends BookDoctorState {
  final String message;

  const BookDoctorError(this.message);
}
