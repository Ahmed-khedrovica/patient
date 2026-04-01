import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:convert';

import '../../../core/networking/api_result.dart';
import '../data/models/specialties_response.dart';
import '../data/repos/specialties_repo.dart';
import 'specialities_state.dart';

/// Loads the list of medical specialties for the home screen
/// and filters doctors based on the selected specialty.
class SpecialitiesCubit extends Cubit<SpecialitiesState<SpecialtiesResponse>> {
  final SpecialtiesRepo _specialtiesRepo;

  SpecialtiesResponse? _cachedResponse;
  int _selectedIndex = 0;

  SpecialitiesCubit(this._specialtiesRepo)
    : super(const SpecialitiesState.initial());

  /// The index of the currently selected specialty.
  int get selectedIndex => _selectedIndex;

  /// Fetches specialties from the API and emits the
  /// corresponding loading / success / error states.
  void getSpecialties() async {
    emit(const SpecialitiesState.loading());

    final response = await _specialtiesRepo.getSpecialties();
    response.when(
      success: (specialtiesResponse) {
        _cachedResponse = specialtiesResponse;
        _selectedIndex = 0;
        emit(SpecialitiesState.success(_freshSuccessResponse()));
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

  /// Updates the selected specialty and re-emits
  /// the success state so listeners rebuild.
  void selectSpecialty(int index) {
    if (_cachedResponse == null) return;
    if (index < 0 || index >= _cachedResponse!.data.specialties.length) return;
    _selectedIndex = index;
    emit(SpecialitiesState.success(_freshSuccessResponse()));
  }

  SpecialtiesResponse _freshSuccessResponse() {
    final response = _cachedResponse!;
    final jsonMap = jsonDecode(jsonEncode(response)) as Map<String, dynamic>;
    return SpecialtiesResponse.fromJson(jsonMap);
  }
}
