import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient/core/theming/app_colors.dart';
import 'package:patient/features/home/data/models/specialties_response.dart';
import 'package:patient/features/home/logic/specialities_cubit.dart';
import 'package:patient/features/home/logic/specialities_state.dart';

import 'widgets/all_specialties/all_specialties_app_bar.dart';
import 'widgets/all_specialties/specialties_error_view.dart';
import 'widgets/all_specialties/specialties_grid.dart';

/// Full-page view of all medical specialties.
///
/// Composes smaller widgets from `widgets/all_specialties/`.
class AllSpecialtiesScreen extends StatelessWidget {
  const AllSpecialtiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const AllSpecialtiesAppBar(),
            Expanded(child: _buildBody()),
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
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
