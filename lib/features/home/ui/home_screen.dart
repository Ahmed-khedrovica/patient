import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient/features/home/ui/widgets/doctors_blue_container.dart';
import 'package:patient/features/home/ui/widgets/doctors_list/doctors_list_view.dart';
import 'package:patient/features/home/ui/widgets/doctors_list/doctors_list_view_item.dart';
import 'package:patient/features/home/ui/widgets/doctors_speciality_see_all.dart';
import 'package:patient/features/home/ui/widgets/home_top_bar.dart';
import 'package:patient/features/home/ui/widgets/specializations_list/speciality_list_view.dart';

import '../../../core/helpers/spacing.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:  SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.fromLTRB(20, 16, 20, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopBar(userName: 'User',),
              DoctorsBlueContainer(),
              verticalSpace(24.h),
              const DoctorsSpecialitySeeAll(),
              verticalSpace(24.h),
              SpecialityListView(),
              verticalSpace(24.h),
              Expanded(child: DoctorsListView()),
            ],
          ),
        ),
      ),
    );
  }
}