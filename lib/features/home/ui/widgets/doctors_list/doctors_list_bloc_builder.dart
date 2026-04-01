import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient/features/home/data/models/specialties_response.dart';
import 'package:patient/features/home/logic/specialities_cubit.dart';
import 'package:patient/features/home/logic/specialities_state.dart';
import 'package:patient/features/home/ui/widgets/home_state_widgets.dart';
import 'package:patient/features/home/ui/widgets/doctors_list/doctors_list_loading_skeleton.dart';
import 'package:patient/features/home/ui/widgets/doctors_list/doctors_list_view_item.dart';

class DoctorsListBlocBuilder extends StatelessWidget {
  const DoctorsListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final selectedIndex = context.select(
      (SpecialitiesCubit cubit) => cubit.selectedIndex,
    );

    return BlocBuilder<
      SpecialitiesCubit,
      SpecialitiesState<SpecialtiesResponse>
    >(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => const DoctorsLoadingSkeleton(),
          success: (response) =>
              _DoctorsSuccessView(response: response, selectedIndex: selectedIndex),
          error: (errorMessage) => HomeErrorView(message: errorMessage),
        );
      },
    );
  }
}

class _DoctorsSuccessView extends StatelessWidget {
  final SpecialtiesResponse response;
  final int selectedIndex;

  const _DoctorsSuccessView({
    required this.response,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    final doctors = _filterDoctorsBySelectedSpecialty(
      response: response,
      selectedIndex: selectedIndex,
    );

    if (doctors.isEmpty) {
      return const HomeEmptyView(message: 'No doctors found for this specialty.');
    }

    return ListView.builder(
      itemCount: doctors.length,
      itemBuilder: (context, index) => DoctorsListViewItem(doctor: doctors[index]),
    );
  }
}

List<Doctor> _filterDoctorsBySelectedSpecialty({
  required SpecialtiesResponse response,
  required int selectedIndex,
}) {
  final specialties = response.data.specialties;
  final doctors = response.data.doctors;

  if (specialties.isEmpty || selectedIndex >= specialties.length) {
    return doctors;
  }

  final selectedSpecialtyId = specialties[selectedIndex].id;
  return doctors
      .where((doctor) => doctor.specialtyId.id == selectedSpecialtyId)
      .toList();
}
