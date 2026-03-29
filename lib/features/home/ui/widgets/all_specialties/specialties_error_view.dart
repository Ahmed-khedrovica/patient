import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../logic/specialities_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Error state with retry button for the specialties screen.
class SpecialtiesErrorView extends StatelessWidget {
  const SpecialtiesErrorView({super.key, required this.message});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(IconlyLight.danger, size: 48.sp, color: AppColors.grey),
            verticalSpace(12),
            Text(
              message.isNotEmpty ? message : 'Something went wrong',
              textAlign: TextAlign.center,
              style: AppTextStyles.font14GreyRegular,
            ),
            verticalSpace(20),
            TextButton(
              onPressed: () =>
                  context.read<SpecialitiesCubit>().getSpecialties(),
              child: Text('Retry', style: AppTextStyles.font14BlueSemiBold),
            ),
          ],
        ),
      ),
    );
  }
}
