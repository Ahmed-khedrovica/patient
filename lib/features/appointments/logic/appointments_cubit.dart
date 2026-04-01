import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient/features/appointments/data/repos/appointments_repo.dart';
import 'package:patient/features/appointments/logic/appointments_state.dart';

import '../../../core/networking/api_result.dart';

class AppointmentsCubit extends Cubit<AppointmentsState> {
  final AppointmentsRepo _appointmentsRepo;

  AppointmentsCubit(this._appointmentsRepo)
    : super(const AppointmentsState.initial());

  Future<void> getAppointments() async {
    emit(const AppointmentsState.loading());

    final result = await _appointmentsRepo.getAppointments();

    result.when(
      success: (response) =>
          emit(AppointmentsState.success(response.data.appointments)),
      failure: (error) => emit(
        AppointmentsState.error(
          errorMessage:
              error.apiErrorModel.message ?? 'Failed to load appointments.',
        ),
      ),
    );
  }
}
