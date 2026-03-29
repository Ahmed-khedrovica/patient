import 'package:patient/core/networking/api_error_handler.dart';
import 'package:patient/core/networking/api_result.dart';
import 'package:patient/core/networking/api_service.dart';

import '../models/specialties_response.dart';

/// Fetches medical specialties from the backend.
class SpecialtiesRepo {
  final ApiService _apiService;

  SpecialtiesRepo(this._apiService);

  Future<ApiResult<SpecialtiesResponse>> getSpecialties() async {
    try {
      final response = await _apiService.getSpecialties();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
