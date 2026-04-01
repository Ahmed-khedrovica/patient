import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient/features/home/ui/widgets/all_specialties/specialties_error_view.dart';
import 'package:patient/features/home/ui/widgets/all_specialties/specialties_grid.dart';

import '../../../../../core/theming/app_colors.dart';
import '../../../data/models/specialties_response.dart';
import '../../../logic/specialities_cubit.dart';
import '../../../logic/specialities_state.dart';

class AllSpecialityBlocBuilder extends StatelessWidget {
  const AllSpecialityBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<
      SpecialitiesCubit,
      SpecialitiesState<SpecialtiesResponse>
    >(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => const Center(
            child: CircularProgressIndicator(color: AppColors.mainGreen),
          ),
          success: (response) =>
              SpecialtiesGrid(specialties: response.data.specialties),
          error: (message) => SpecialtiesErrorView(message: message),
        );
      },
    );
  }
}
