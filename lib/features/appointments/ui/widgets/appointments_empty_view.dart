import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:patient/core/helpers/spacing.dart';
import 'package:patient/core/theming/app_colors.dart';
import 'package:patient/core/theming/app_text_styles.dart';

/// Empty-state placeholder shown when the patient has no appointments.
class AppointmentsEmptyView extends StatelessWidget {
  const AppointmentsEmptyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 100.w,
            height: 100.w,
            decoration: BoxDecoration(
              color: AppColors.mainGreen.withAlpha(20),
              shape: BoxShape.circle,
            ),
            child: Icon(
              IconlyLight.paper,
              size: 48.sp,
              color: AppColors.mainGreen,
            ),
          ),
          verticalSpace(20),
          Text(
            'No appointments yet',
            style: AppTextStyles.font18DarkBlueSemiBold,
          ),
          verticalSpace(8),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.w),
            child: Text(
              'Book a doctor to schedule your first visit',
              style: AppTextStyles.font13GreyRegular,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
