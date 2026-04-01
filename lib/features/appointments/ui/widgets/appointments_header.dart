import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient/core/helpers/spacing.dart';
import 'package:patient/core/theming/app_colors.dart';
import 'package:patient/core/theming/app_text_styles.dart';

class AppointmentsHeader extends StatelessWidget {
  const AppointmentsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(24.w, 24.h, 24.w, 24.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.mainGreen,
            Color.lerp(AppColors.mainGreen, AppColors.darkBlue, 0.35)!,
          ],
        ),
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(28.r)),
        boxShadow: [
          BoxShadow(
            color: AppColors.mainGreen.withValues(alpha: 0.35),
            blurRadius: 24,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'My Appointments',
            style: AppTextStyles.font24BlackBold.copyWith(
              color: Colors.white,
            ),
          ),
          verticalSpace(4),
          Text(
            'Track all your upcoming visits',
            style: AppTextStyles.font13GreyRegular.copyWith(
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}
