import 'package:dio/dio.dart';
import 'package:patient/core/helpers/constants.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../helpers/shared_pref_helper.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    final timeOut = const Duration(seconds: 30);
    
    if (dio == null) {
      dio = Dio();

      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;

      addInterceptors();
    }
    return dio!;
  }

  static void addInterceptors() {
    dio?.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = await SharedPrefHelper.getSecuredString(
            PrefKeys.userToken,
          );
          if (token.isNotEmpty) {
            options.headers['Authorization'] = 'Bearer $token';
          }
          options.headers['Accept'] = 'application/json';
          return handler.next(options);
        },
      ),
    );

    dio?.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
    );
  }
}
