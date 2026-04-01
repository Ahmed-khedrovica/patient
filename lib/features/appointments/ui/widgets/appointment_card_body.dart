import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:patient/core/helpers/spacing.dart';
import 'package:patient/features/appointments/data/models/appointments_response.dart';
import 'package:patient/features/appointments/ui/widgets/appointment_info_tile.dart';

/// The lower half of the appointment card — date, time, and schedule info.
class AppointmentCardBody extends StatelessWidget {
  final Appointment appointment;

  const AppointmentCardBody({super.key, required this.appointment});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16.w, 14.h, 16.w, 16.h),
      child: Column(
        children: [
          AppointmentInfoTile(
            icon: IconlyLight.calendar,
            title: 'Date',
            value: _formatDate(appointment.date),
          ),
          verticalSpace(10),
          AppointmentInfoTile(
            icon: IconlyLight.time_circle,
            title: 'Time',
            value: _formatTime(appointment.date),
          ),
          verticalSpace(10),
        ],
      ),
    );
  }

  static const _weekdays = [
    '', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun',
  ];

  static const _months = [
    '', 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
    'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec',
  ];

  static String _formatDate(DateTime dt) {
    final local = dt.toLocal();
    return '${_weekdays[local.weekday]}, ${local.day} '
        '${_months[local.month]} ${local.year}';
  }

  static String _formatTime(DateTime dt) {
    final local = dt.toLocal();
    final hour = local.hour % 12 == 0 ? 12 : local.hour % 12;
    final minute = local.minute.toString().padLeft(2, '0');
    final period = local.hour < 12 ? 'AM' : 'PM';
    return '$hour:$minute $period';
  }
}
