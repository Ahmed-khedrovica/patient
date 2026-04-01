import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'appointment_card.dart';
import 'appointments_placeholder_data.dart';

/// A shimmer-animated skeleton that mirrors the real appointment
/// list layout. Wraps placeholder [AppointmentCard]s inside
/// [Skeletonizer] so bone shapes exactly match the production UI.
class AppointmentsLoadingSkeleton extends StatelessWidget {
  const AppointmentsLoadingSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    final placeholders = appointmentsPlaceholderData();

    return Skeletonizer(
      enabled: true,
      child: AbsorbPointer(
        child: ListView.builder(
          padding: EdgeInsets.fromLTRB(20.w, 20.h, 20.w, 100.h),
          itemCount: placeholders.length,
          itemBuilder: (context, index) =>
              AppointmentCard(appointment: placeholders[index]),
        ),
      ),
    );
  }
}
