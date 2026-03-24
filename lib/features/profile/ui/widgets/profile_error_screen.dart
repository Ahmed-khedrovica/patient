import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:patient/core/widgets/app_text_button.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../logic/profile_cubit.dart';

class ProfileErrorScreen extends StatelessWidget {
  const ProfileErrorScreen({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: .stretch,
        children: [
          Icon(
            IconlyLight.info_circle,
            size: 48.sp,
            color: AppColors.lightGrey,
          ),
          verticalSpace(16),
          Text(
            message.isNotEmpty ? message : 'Something went wrong',
            textAlign: TextAlign.center,
            style: AppTextStyles.font14GreyRegular,
          ),
          verticalSpace(24),
          AppTextButton(
            backgroundColor: AppColors.lighterGrey,
            onPressed: () => context.read<ProfileCubit>().getProfile(),
             buttonText: 'Try again', textStyle: AppTextStyles.font15DarkBlueMedium,
          ),
        ],
      ),
    );
  }
}
