import 'package:patient/core/networking/api_result.dart';
import 'package:patient/core/networking/api_service.dart';
import 'package:patient/features/sign_up/data/models/signup_response.dart';

import '../../../../core/networking/api_error_handler.dart';
import '../models/signup_request.dart';

class SignupRepo {
  final ApiService _apiService;

  SignupRepo(this._apiService);

  Future<ApiResult<SignupResponse>> signup(SignupRequest signupRequest) async {
    try {
      final response = await _apiService.signup(signupRequest);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
