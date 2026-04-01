import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:patient/core/helpers/spacing.dart';
import 'package:patient/core/theming/app_colors.dart';
import 'package:patient/core/theming/app_text_styles.dart';
import 'package:patient/features/appointments/ui/widgets/appointment_status_badge.dart';

/// Gradient header row with doctor avatar, name, specialty, and status.
class AppointmentCardHeader extends StatelessWidget {
  final String doctorName;
  final String specialty;
  final String status;

  const AppointmentCardHeader({
    super.key,
    required this.doctorName,
    required this.specialty,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppColors.mainGreen, Color(0xFF4EC5C8)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 44.w,
            height: 44.w,
            decoration: BoxDecoration(
              color: Colors.white.withAlpha(40),
              borderRadius: BorderRadius.circular(14.r),
            ),
            child: Icon(
              IconlyBold.user_2,
              color: Colors.white,
              size: 22.sp,
            ),
          ),
          horizontalSpace(12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorName,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.font15DarkBlueMedium.copyWith(
                    color: Colors.white,
                  ),
                ),
                verticalSpace(2),
                Text(
                  specialty,
                  style: AppTextStyles.font12GreyRegular.copyWith(
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
          AppointmentStatusBadge(status: status),
        ],
      ),
    );
  }
}
