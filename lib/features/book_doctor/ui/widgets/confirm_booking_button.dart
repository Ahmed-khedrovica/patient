import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient/core/theming/app_text_styles.dart';
import 'package:patient/core/widgets/app_text_button.dart';
import 'package:patient/features/book_doctor/logic/book_doctor_cubit.dart';
import 'package:patient/features/book_doctor/logic/book_doctor_state.dart';
import 'package:patient/features/home/data/models/specialties_response.dart';

/// A button that confirms the booking, showing a loading label while in
/// progress.
class ConfirmBookingButton extends StatelessWidget {
  final Doctor doctor;

  const ConfirmBookingButton({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookDoctorCubit, BookDoctorState>(
      builder: (context, state) {
        final isLoading = state is BookDoctorLoading;
        return AppTextButton(
          buttonText: isLoading ? 'Booking...' : 'Confirm Booking',
          textStyle: AppTextStyles.font16WhiteSemiBold,
          onPressed: isLoading
              ? () {}
              : () =>
                  context.read<BookDoctorCubit>().bookAppointment(doctor: doctor),
        );
      },
    );
  }
}
