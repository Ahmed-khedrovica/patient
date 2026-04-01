import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient/core/theming/app_text_styles.dart';
import 'package:patient/features/sign_up/ui/widgets/already_have_an_account_text.dart';
import 'package:patient/features/sign_up/ui/widgets/auth_header_text.dart';
import 'package:patient/features/sign_up/ui/widgets/sign_up_bloc_listener.dart';
import 'package:patient/features/sign_up/ui/widgets/sign_up_form.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/widgets/app_text_button.dart';
import '../../login/ui/widgets/termes_and_conditions_text.dart';
import '../logic/signup_cubit.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AuthTextHeader(
                  text1: 'Create Account',
                  text2:
                      'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                ),
                verticalSpace(16),
                Column(
                  children: [
                    const SignupForm(),
                    verticalSpace(20),
                    AppTextButton(
                      buttonText: "Create Account",
                      textStyle: AppTextStyles.font16WhiteSemiBold,
                      onPressed: () {
                        validateThenDoSignup(context);
                      },
                    ),
                    verticalSpace(10),
                    const TermesAndConditionsText(),
                    verticalSpace(20),
                    const AlreadyHaveAccountText(),
                    const SignupBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupStates();
    }
  }
}
