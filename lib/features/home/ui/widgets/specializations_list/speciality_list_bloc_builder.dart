import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient/features/home/data/models/specialties_response.dart';
import 'package:patient/features/home/logic/specialities_cubit.dart';
import 'package:patient/features/home/logic/specialities_state.dart';
import 'package:patient/features/home/ui/widgets/home_state_widgets.dart';
import 'package:patient/features/home/ui/widgets/specializations_list/speciality_list_loading_skeleton.dart';
import 'package:patient/features/home/ui/widgets/specializations_list/speciality_list_view_item.dart';

class SpecialityListBlocBuilder extends StatelessWidget {
  const SpecialityListBlocBuilder({super.key});

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
          loading: () => const SpecialitiesLoadingSkeleton(),
          success: (response) => _SpecialitiesSuccessView(
            response: response,
            selectedIndex: selectedIndex,
          ),
          error: (errorMessage) => HomeErrorView(
            message: errorMessage,
            height: HomeListUiConstants.specialitiesListHeight.h,
          ),
        );
      },
    );
  }
}

class _SpecialitiesSuccessView extends StatelessWidget {
  final SpecialtiesResponse response;
  final int selectedIndex;

  const _SpecialitiesSuccessView({
    required this.response,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    final specialties = response.data.specialties;
    if (specialties.isEmpty) {
      return HomeEmptyView(
        message: 'No specializations available right now.',
        height: HomeListUiConstants.specialitiesListHeight.h,
      );
    }

    return SizedBox(
      height: HomeListUiConstants.specialitiesListHeight.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: specialties.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => context.read<SpecialitiesCubit>().selectSpecialty(index),
            child: SpecialityListViewItem(
              specialty: specialties[index],
              itemIndex: index,
              selectedIndex: selectedIndex,
            ),
          );
        },
      ),
    );
  }
}
