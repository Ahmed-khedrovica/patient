import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient/core/theming/app_colors.dart';
import 'package:patient/features/appointments/data/models/appointments_response.dart';
import 'package:patient/features/appointments/ui/widgets/appointment_card_body.dart';
import 'package:patient/features/appointments/ui/widgets/appointment_card_header.dart';

/// A premium appointment card that composes [AppointmentCardHeader]
/// and [AppointmentCardBody].
class AppointmentCard extends StatelessWidget {
  final Appointment appointment;

  const AppointmentCard({super.key, required this.appointment});

  @override
  Widget build(BuildContext context) {
    final doc = appointment.doctorId;
    final doctorName = 'Dr. ${doc.userId.firstName} ${doc.userId.lastName}';

    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.mainGreen.withAlpha(20),
            blurRadius: 24,
            offset: const Offset(0, 8),
          ),
          BoxShadow(
            color: AppColors.lighterGrey,
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          AppointmentCardHeader(
            doctorName: doctorName,
            specialty: doc.specialtyId.name,
            status: appointment.status,
          ),
          AppointmentCardBody(appointment: appointment),
        ],
      ),
    );
  }
}
