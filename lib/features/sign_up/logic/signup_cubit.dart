import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient/core/networking/api_result.dart';
import 'package:patient/features/sign_up/data/repos/signup_repo.dart';
import 'package:patient/features/sign_up/logic/signup_state.dart';

import '../data/models/signup_request.dart';

class SignupCubit extends Cubit<SignupState> {
  final SignupRepo _signupRepo;

  SignupCubit(this._signupRepo) : super(SignupState.initial());

  TextEditingController firstNameController = TextEditingController();
  TextEditingController secondNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitSignupStates() async {
    emit(const SignupState.loading());
    // await Future.delayed(Duration(seconds: 2));
    final response = await _signupRepo.signup(
      SignupRequest(
        firstName: firstNameController.text,
        lastName: secondNameController.text,
        email: emailController.text,
        password: passwordController.text,
        confirmPassword: passwordConfirmationController.text,
        phone: phoneController.text,
      ),
    );
    response.when(
      success: (signupResponse) {
        emit(SignupState.success(signupResponse));
      },
      failure: (error) {
        emit(
          SignupState.error(errorMessage: error.apiErrorModel.message ?? ''),
        );
      },
    );
  }
}
