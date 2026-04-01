import 'package:patient/core/networking/api_error_handler.dart';
import 'package:patient/core/networking/api_result.dart';
import 'package:patient/core/networking/api_service.dart';
import 'package:patient/features/appointments/data/models/appointments_response.dart';

class AppointmentsRepo {
  final ApiService _apiService;

  AppointmentsRepo(this._apiService);

  Future<ApiResult<AppointmentsResponse>> getAppointments() async {
    try {
      final response = await _apiService.getAppointments();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
