import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient/features/home/logic/specialities_cubit.dart';
import 'package:patient/features/home/ui/widgets/doctors_green_container.dart';
import 'package:patient/features/home/ui/widgets/doctors_list/doctors_list_view.dart';
import 'package:patient/features/home/ui/widgets/doctors_speciality_see_all.dart';
import 'package:patient/features/home/ui/widgets/home_top_bar.dart';
import 'package:patient/features/home/ui/widgets/specializations_list/speciality_list_view.dart';

import '../../../core/di/dependency_injection.dart';
import '../../../core/helpers/spacing.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SpecialitiesCubit>()..getSpecialties(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(20, 16, 20, 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeTopBar(),
                const DoctorsGreenContainer(),
                verticalSpace(24.h),
                const DoctorsSpecialitySeeAll(),
                verticalSpace(24.h),
                const SpecialityListView(),
                verticalSpace(24.h),
                const Expanded(child: DoctorsListView()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
