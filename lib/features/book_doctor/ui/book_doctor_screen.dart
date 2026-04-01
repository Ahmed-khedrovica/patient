import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient/core/animations/staggered_entrance_animation.dart';
import 'package:patient/core/helpers/spacing.dart';
import 'package:patient/features/book_doctor/logic/book_doctor_cubit.dart';
import 'package:patient/features/book_doctor/ui/widgets/book_doctor_bloc_listener.dart';
import 'package:patient/features/book_doctor/ui/widgets/book_section_title.dart';
import 'package:patient/features/book_doctor/ui/widgets/confirm_booking_button.dart';
import 'package:patient/features/book_doctor/ui/widgets/day_chips.dart';
import 'package:patient/features/book_doctor/ui/widgets/doctor_header_card.dart';
import 'package:patient/features/book_doctor/ui/widgets/hour_chips.dart';
import 'package:patient/features/home/data/models/specialties_response.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Screen that lets the user pick a day and hour and confirm an appointment
/// with the given [doctor].
class BookDoctorScreen extends StatelessWidget {
  final Doctor doctor;

  const BookDoctorScreen({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Book Appointment'),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
          child: Stack(
            children: [
              _BookingBody(doctor: doctor),
              const BookDoctorBlocListener(),
            ],
          ),
        ),
      ),
    );
  }
}

class _BookingBody extends StatelessWidget {
  final Doctor doctor;

  const _BookingBody({required this.doctor});

  @override
  Widget build(BuildContext context) {
    final days = context.read<BookDoctorCubit>().availableDays(doctor);

    return SingleChildScrollView(
      child: StaggeredEntrance(
        children: [
          DoctorHeaderCard(doctor: doctor),
          verticalSpace(20),
          const BookingSectionTitle(title: 'Choose Day'),
          verticalSpace(12),
          DayChips(days: days),
          verticalSpace(20),
          const BookingSectionTitle(title: 'Choose Hour'),
          verticalSpace(12),
          HourChips(doctor: doctor),
          verticalSpace(28),
          ConfirmBookingButton(doctor: doctor),
        ],
      ),
    );
  }
}
