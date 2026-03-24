import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';

class ProfileStatBadge extends StatelessWidget {
  const ProfileStatBadge({
    super.key,
    required this.label,
    required this.value,
    required this.icon,
  });

  final String label;
  final String value;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 12.w),
        decoration: BoxDecoration(
          color: AppColors.moreLightGrey,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(color: AppColors.lighterGrey),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, size: 20.sp, color: AppColors.mainGreen),
            SizedBox(height: 8.h),
            Text(value, style: AppTextStyles.font15DarkBlueMedium),
            Text(
              label,
              style: AppTextStyles.font12GreyRegular,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
