import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconly/iconly.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../data/models/specialties_response.dart';
import 'specialty_schedule_section.dart';

/// A single glassmorphism-styled card that displays a specialty's
/// name, max appointment slots, and full weekly schedule.
class SpecialtyCard extends StatelessWidget {
  const SpecialtyCard({super.key, required this.specialty});

  final Specialty specialty;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [AppColors.lightBlue, AppColors.moreLighterGrey],
        ),
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: AppColors.mainGreen.withAlpha(30)),
        boxShadow: [
          BoxShadow(
            color: AppColors.darkBlue.withAlpha(10),
            blurRadius: 16,
            offset: const Offset(0, 6),
          ),
          BoxShadow(
            color: AppColors.mainGreen.withAlpha(8),
            blurRadius: 24,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _SpecialtyIcon(),
          verticalSpace(14),
          Text(
            specialty.name,
            style: AppTextStyles.font15DarkBlueMedium,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          verticalSpace(10),
          _SlotsBadge(maxAppointments: specialty.maxAppointmentsPerDay),
          if (specialty.schedule.isNotEmpty) ...[
            verticalSpace(10),
            SpecialtyScheduleSection(schedule: specialty.schedule),
          ],
        ],
      ),
    );
  }
}

/// Tinted SVG icon displayed at the top of each card.
class _SpecialtyIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.r),
      decoration: BoxDecoration(
        color: AppColors.mainGreen.withAlpha(20),
        borderRadius: BorderRadius.circular(14.r),
      ),
      child: SvgPicture.asset(
        'assets/svgs/general_speciality.svg',
        height: 32.h,
        width: 32.w,
        colorFilter: ColorFilter.mode(AppColors.mainGreen, BlendMode.srcIn),
      ),
    );
  }
}

/// Shows "X slots/day" with a clock icon.
class _SlotsBadge extends StatelessWidget {
  const _SlotsBadge({required this.maxAppointments});

  final int maxAppointments;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(IconlyBold.time_circle, size: 14.sp, color: AppColors.mainGreen),
        horizontalSpace(4),
        Expanded(
          child: Text(
            '$maxAppointments slots/day',
            style: AppTextStyles.font12GreyMedium,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
