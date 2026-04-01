import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient/core/helpers/spacing.dart';
import 'package:patient/core/theming/app_colors.dart';
import 'package:patient/core/theming/app_text_styles.dart';

/// A row showing an icon in a tinted box alongside a title and value.
class AppointmentInfoTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const AppointmentInfoTile({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 36.w,
          height: 36.w,
          decoration: BoxDecoration(
            color: AppColors.mainGreen.withAlpha(18),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Icon(icon, size: 18.sp, color: AppColors.mainGreen),
        ),
        horizontalSpace(12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: AppTextStyles.font12GreyRegular),
            Text(value, style: AppTextStyles.font13DarkBlueMedium),
          ],
        ),
      ],
    );
  }
}
