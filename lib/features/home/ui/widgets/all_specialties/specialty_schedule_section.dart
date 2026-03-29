import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../data/models/specialties_response.dart';

/// Tinted container listing each day's time range for a
/// specialty.
class SpecialtyScheduleSection extends StatelessWidget {
  const SpecialtyScheduleSection({super.key, required this.schedule});

  final List<Schedule> schedule;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.r),
      decoration: BoxDecoration(
        color: AppColors.mainGreen.withAlpha(10),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(),
          verticalSpace(6),
          ...schedule.map(_buildRow),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        Icon(IconlyBold.calendar, size: 12.sp, color: AppColors.mainGreen),
        horizontalSpace(4),
        Text(
          'Schedule',
          style: TextStyle(
            fontSize: 11.sp,
            fontWeight: FontWeight.w600,
            color: AppColors.mainGreen,
          ),
        ),
      ],
    );
  }

  Widget _buildRow(Schedule entry) {
    return Padding(
      padding: EdgeInsets.only(bottom: 3.h),
      child: Row(
        children: [
          SizedBox(
            width: 32.w,
            child: Text(
              _abbreviateDay(entry.day),
              style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.darkBlue,
              ),
            ),
          ),
          Expanded(
            child: Text(
              '${entry.startTime} – ${entry.endTime}',
              style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.grey,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  String _abbreviateDay(String day) {
    if (day.length > 3) return day.substring(0, 3);
    return day;
  }
}
