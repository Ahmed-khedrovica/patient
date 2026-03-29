import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/networking/api_result.dart';
import '../data/models/specialties_response.dart';
import '../data/repos/specialties_repo.dart';
import 'specialities_state.dart';

/// Loads the list of medical specialties for the home screen.
class SpecialitiesCubit extends Cubit<SpecialitiesState<SpecialtiesResponse>> {
  final SpecialtiesRepo _specialtiesRepo;

  SpecialitiesCubit(this._specialtiesRepo)
    : super(const SpecialitiesState.initial());

  /// Fetches specialties from the API and emits the
  /// corresponding loading / success / error states.
  void getSpecialties() async {
    emit(const SpecialitiesState.loading());

    final response = await _specialtiesRepo.getSpecialties();
    response.when(
      success: (specialtiesResponse) {
        emit(SpecialitiesState.success(specialtiesResponse));
      },
      failure: (error) {
        emit(
          SpecialitiesState.error(
            errorMessage: error.apiErrorModel.message ?? '',
          ),
        );
      },
    );
  }
}
