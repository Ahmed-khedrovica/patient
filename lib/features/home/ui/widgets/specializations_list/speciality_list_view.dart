import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient/features/home/data/models/specialties_response.dart';
import 'package:patient/features/home/logic/specialities_cubit.dart';
import 'package:patient/features/home/logic/specialities_state.dart';
import 'package:patient/features/home/ui/widgets/specializations_list/speciality_list_view_item.dart';

class SpecialityListView extends StatefulWidget {
  const SpecialityListView({super.key});

  @override
  State<SpecialityListView> createState() => _SpecialityListViewState();
}

class _SpecialityListViewState extends State<SpecialityListView> {
  var selectedSpecializationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<
      SpecialitiesCubit,
      SpecialitiesState<SpecialtiesResponse>
    >(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => SizedBox(
            height: 100.h,
            child: const Center(child: CircularProgressIndicator()),
          ),
          success: (response) {
            final specialties = response.data.specialties;
            return SizedBox(
              height: 100.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: specialties.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedSpecializationIndex = index;
                      });
                    },
                    child: SpecialityListViewItem(
                      specialty: specialties[index],
                      itemIndex: index,
                      selectedIndex: selectedSpecializationIndex,
                    ),
                  );
                },
              ),
            );
          },
          error: (errorMessage) => SizedBox(
            height: 100.h,
            child: Center(child: Text(errorMessage)),
          ),
        );
      },
    );
  }
}
