import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient/core/helpers/spacing.dart';

/// A pill-shaped badge showing the appointment status with a contextual icon.
class AppointmentStatusBadge extends StatelessWidget {
  final String status;

  const AppointmentStatusBadge({super.key, required this.status});

  IconData get _icon => switch (status.toLowerCase()) {
        'confirmed' => Icons.check_circle_outline,
        'cancelled' => Icons.cancel_outlined,
        _ => Icons.schedule,
      };

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      decoration: BoxDecoration(
        color: Colors.white.withAlpha(30),
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: Colors.white.withAlpha(60)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(_icon, size: 12.sp, color: Colors.white),
          horizontalSpace(4),
          Text(
            status.toUpperCase(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 10.sp,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}
