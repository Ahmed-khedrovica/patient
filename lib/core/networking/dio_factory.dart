import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../helpers/navigator_key.dart';
import '../helpers/token_manger.dart';
import '../routing/routes.dart';

/// Singleton factory for [Dio] with auth interceptors.
class DioFactory {
  DioFactory._();

  static Dio? dio;
  static final TokenManager _tokenManager = TokenManager();

  static Dio getDio() {
    const timeOut = Duration(seconds: 30);
    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      _addInterceptors();
    }
    return dio!;
  }

  static void _addInterceptors() {
    dio?.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = await _tokenManager.getAccessToken();

          if (token != null) {
            options.headers['Authorization'] = 'Bearer $token';
          }
          options.headers['Accept'] = 'application/json';
          return handler.next(options);
        },
        onError: (error, handler) async {
          if (error.response?.statusCode == 401) {
            await _tokenManager.clearTokens();
            _redirectToLogin();
          }

          return handler.next(error);
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

  /// Navigates to the login screen and clears the entire
  /// navigation stack so the user cannot go back.
  static void _redirectToLogin() {
    navigatorKey.currentState?.pushNamedAndRemoveUntil(
      Routes.loginScreen,
      (_) => false,
    );
  }
}
