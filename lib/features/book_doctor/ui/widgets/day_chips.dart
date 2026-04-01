import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient/core/theming/app_colors.dart';
import 'package:patient/features/book_doctor/logic/book_doctor_cubit.dart';
import 'package:patient/features/book_doctor/logic/book_doctor_state.dart';

/// A wrap of [ChoiceChip]s for the available appointment days.
class DayChips extends StatelessWidget {
  final List<String> days;

  const DayChips({super.key, required this.days});

  @override
  Widget build(BuildContext context) {
    if (days.isEmpty) {
      return const Text('No available days.');
    }

    return BlocBuilder<BookDoctorCubit, BookDoctorState>(
      buildWhen: (previous, current) => current is! BookDoctorLoading,
      builder: (context, _) {
        final selectedDay = context.read<BookDoctorCubit>().selectedDay;

        return Wrap(
          spacing: 8.w,
          runSpacing: 8.h,
          children: days.map((day) {
            final isSelected = selectedDay == day;
            return ChoiceChip(
              label: Text(
                day.toUpperCase(),
                style: TextStyle(
                  color: isSelected ? Colors.white : AppColors.darkBlue,
                  fontWeight: FontWeight.w600,
                  fontSize: 13.sp,
                ),
              ),
              selected: isSelected,
              onSelected: (_) =>
                  context.read<BookDoctorCubit>().selectDay(day),
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
