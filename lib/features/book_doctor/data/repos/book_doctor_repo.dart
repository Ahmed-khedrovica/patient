import 'package:patient/core/networking/api_error_handler.dart';
import 'package:patient/core/networking/api_result.dart';
import 'package:patient/core/networking/api_service.dart';
import 'package:patient/features/book_doctor/data/models/book_doctor_request.dart';
import 'package:patient/features/book_doctor/data/models/book_doctor_response.dart';

class BookDoctorRepo {
  final ApiService _apiService;

  BookDoctorRepo(this._apiService);

  Future<ApiResult<BookDoctorResponse>> bookDoctor(
    BookDoctorRequest request,
  ) async {
    try {
      final response = await _apiService.bookDoctor(request);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
