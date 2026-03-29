import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_styles.dart';

/// Custom app bar with a styled back button and title.
class AllSpecialtiesAppBar extends StatelessWidget {
  const AllSpecialtiesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              padding: EdgeInsets.all(8.r),
              decoration: BoxDecoration(
                color: AppColors.lightBlue,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Icon(
                IconlyLight.arrow_left,
                color: AppColors.darkBlue,
                size: 22.sp,
              ),
            ),
          ),
          horizontalSpace(16),
          Text('All Specialties', style: AppTextStyles.font18DarkBlueSemiBold),
        ],
      ),
    );
  }
}
