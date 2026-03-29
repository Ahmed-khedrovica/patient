import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/helpers/token_manger.dart';
import '../../../core/networking/api_result.dart';
import '../data/models/login_request.dart';
import '../data/repos/login_repo.dart';
import 'login_state.dart';

/// Manages the login flow and persists both tokens on success.
class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  final TokenManager _tokenManager;

  LoginCubit(this._loginRepo, this._tokenManager)
    : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoginStates() async {
    emit(const LoginState.loading());

    final response = await _loginRepo.login(
      LoginRequest(
        email: emailController.text,
        password: passwordController.text,
      ),
    );
    response.when(
      success: (loginResponse) async {
        await _tokenManager.saveTokens(
          accessToken: loginResponse.accessToken,
          refreshToken: loginResponse.refreshToken,
        );
        emit(LoginState.success(loginResponse));
      },
      failure: (error) {
        emit(LoginState.error(errorMessage: error.apiErrorModel.message ?? ''));
      },
    );
  }
}
