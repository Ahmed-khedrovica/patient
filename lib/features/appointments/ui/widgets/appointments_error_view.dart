import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:patient/core/helpers/spacing.dart';
import 'package:patient/core/theming/app_colors.dart';
import 'package:patient/core/theming/app_text_styles.dart';

class AppointmentsErrorView extends StatelessWidget {
  final VoidCallback onRetry;

  const AppointmentsErrorView({
    super.key,
    required this.onRetry,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 80.w,
              height: 80.w,
              decoration: BoxDecoration(
                color: const Color(0xFFFEE2E2),
                shape: BoxShape.circle,
              ),
              child: Icon(
                IconlyLight.info_circle,
                size: 40.sp,
                color: const Color(0xFFEF4444),
              ),
            ),
            verticalSpace(20),
            Text(
              'Oops, something went wrong',
              style: AppTextStyles.font18DarkBlueSemiBold,
              textAlign: TextAlign.center,
            ),
            verticalSpace(24),
            SizedBox(
              width: 160.w,
              height: 44.h,
              child: ElevatedButton.icon(
                onPressed: onRetry,
                icon: const Icon(Icons.refresh, size: 18),
                label: const Text('Try Again'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.mainGreen,
                  foregroundColor: Colors.white,
                  elevation: 0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
