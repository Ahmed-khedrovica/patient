import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient/core/theming/app_colors.dart';
import 'package:patient/core/theming/app_text_styles.dart';
import 'package:patient/features/book_doctor/logic/book_doctor_cubit.dart';
import 'package:patient/features/book_doctor/logic/book_doctor_state.dart';
import 'package:patient/features/home/data/models/specialties_response.dart';

/// A wrap of [ChoiceChip]s for the available appointment hours.
///
/// Recomputes available hours from [doctor] inside the builder so it
/// always reflects the currently selected day.
class HourChips extends StatelessWidget {
  final Doctor doctor;

  const HourChips({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookDoctorCubit, BookDoctorState>(
      buildWhen: (previous, current) => current is! BookDoctorLoading,
      builder: (context, _) {
        final cubit = context.read<BookDoctorCubit>();
        final hours = cubit.availableHoursForDay(doctor);

        if (cubit.selectedDay == null) {
          return _Placeholder(
            message: 'Select a day first to see available hours.',
          );
        }

        if (hours.isEmpty) {
          return const Text('No hours available for this day.');
        }

        final selectedHour = cubit.selectedHour;

        return Wrap(
          spacing: 8.w,
          runSpacing: 8.h,
          children: hours.map((hour) {
            final isSelected = selectedHour == hour;
            return ChoiceChip(
              label: Text(
                hour,
                style: TextStyle(
                  color: isSelected ? Colors.white : AppColors.darkBlue,
                  fontWeight: FontWeight.w600,
                  fontSize: 13.sp,
                ),
              ),
              selected: isSelected,
              onSelected: (_) => cubit.selectHour(hour),
              selectedColor: AppColors.mainGreen,
              backgroundColor: Colors.white,
              showCheckmark: false,
              side: BorderSide(
                color: isSelected ? AppColors.mainGreen : AppColors.lightGrey,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 12.w,
                vertical: 8.h,
              ),
            );
          }).toList(),
        );
      },
    );
  }
}

class _Placeholder extends StatelessWidget {
  final String message;

  const _Placeholder({required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(12.w),
      decoration: BoxDecoration(
        color: AppColors.moreLighterGrey,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Text(message, style: AppTextStyles.font12GreyMedium),
    );
  }
}
