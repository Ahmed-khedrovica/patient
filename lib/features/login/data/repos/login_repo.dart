import 'package:patient/core/networking/api_error_handler.dart';
import 'package:patient/core/networking/api_result.dart';
import 'package:patient/core/networking/api_service.dart';
import 'package:patient/features/login/data/models/login_response.dart';

import '../models/login_request.dart';

class LoginRepo {
  final ApiService _apiService;

  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponse>> login(LoginRequest loginRequest) async {
    try {
      final response = await _apiService.login(loginRequest);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
