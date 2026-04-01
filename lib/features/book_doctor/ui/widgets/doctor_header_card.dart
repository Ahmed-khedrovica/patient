import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient/core/helpers/spacing.dart';
import 'package:patient/core/theming/app_colors.dart';
import 'package:patient/core/theming/app_text_styles.dart';
import 'package:patient/features/home/data/models/specialties_response.dart';

/// A gradient card showing the doctor's name, specialty, and phone number.
class DoctorHeaderCard extends StatelessWidget {
  final Doctor doctor;

  const DoctorHeaderCard({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    final fullName = '${doctor.userId.firstName} ${doctor.userId.lastName}';

    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [AppColors.mainGreen, Color(0xFF4EC5C8)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(fullName, style: AppTextStyles.font18WhiteMedium),
          verticalSpace(8),
          Text(
            doctor.specialtyId.name,
            style: AppTextStyles.font14LightGreyRegular.copyWith(
              color: AppColors.moreLightGrey,
            ),
          ),
          verticalSpace(4),
          Text(
            doctor.userId.phone,
            style: AppTextStyles.font14LightGreyRegular.copyWith(
              color: AppColors.moreLightGrey,
            ),
          ),
        ],
      ),
    );
  }
}
