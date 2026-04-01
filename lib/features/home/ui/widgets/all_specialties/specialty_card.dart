import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient/features/home/ui/widgets/all_specialties/specialty_icon.dart';
import 'package:patient/features/home/ui/widgets/all_specialties/specialty_slot_badge.dart';

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
          ),
          BoxShadow(
            color: AppColors.mainGreen.withAlpha(8),
            blurRadius: 24,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SpecialtyIcon(),
          verticalSpace(4),
          Text(
            specialty.name,
            style: AppTextStyles.font15DarkBlueMedium,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SlotsBadge(maxAppointments: specialty.maxAppointmentsPerDay),
          if (specialty.schedule.isNotEmpty) ...[
            verticalSpace(10),
            Flexible(
              fit: FlexFit.loose,
              child: SpecialtyScheduleSection(
                schedule: specialty.schedule,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
