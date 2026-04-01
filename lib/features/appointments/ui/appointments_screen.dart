import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient/core/theming/app_colors.dart';
import 'package:patient/features/appointments/logic/appointments_cubit.dart';
import 'package:patient/features/appointments/logic/appointments_state.dart';
import 'package:patient/features/appointments/ui/widgets/appointment_card.dart';
import 'package:patient/features/appointments/ui/widgets/appointments_empty_view.dart';
import 'package:patient/features/appointments/ui/widgets/appointments_error_view.dart';
import 'package:patient/features/appointments/ui/widgets/appointments_header.dart';

/// Screen that lists all appointments for the currently logged-in patient.
///
/// Expects [AppointmentsCubit] to be provided above in the widget tree
/// (e.g. from [NavigationScreen]).
class AppointmentsScreen extends StatelessWidget {
  const AppointmentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7FAFA),
      body: SafeArea(
        child: Column(
          children: [
            const AppointmentsHeader(),
            Expanded(child: _AppointmentsBody()),
          ],
        ),
      ),
    );
  }
}

class _AppointmentsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppointmentsCubit, AppointmentsState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => const Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                AppColors.mainGreen,
              ),
            ),
          ),
          success: (data) {
            final list = data as List;
            if (list.isEmpty) return const AppointmentsEmptyView();
            return _AppointmentsList(appointments: list);
          },
          error: (msg) => AppointmentsErrorView(
            onRetry: () =>
                context.read<AppointmentsCubit>().getAppointments(),
          ),
        );
      },
    );
  }
}

class _AppointmentsList extends StatelessWidget {
  final List appointments;

  const _AppointmentsList({required this.appointments});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.fromLTRB(20.w, 20.h, 20.w, 100.h),
      itemCount: appointments.length,
      itemBuilder: (context, index) =>
          AppointmentCard(appointment: appointments[index]),
    );
  }
}