import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

import '../../../../../core/theming/app_colors.dart';
import '../home_state_widgets.dart';

class SpecialitiesLoadingSkeleton extends StatelessWidget {
  const SpecialitiesLoadingSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: HomeListUiConstants.specialitiesListHeight.h,
      child: Skeletonizer(
        enabled: true,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 6,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
              child: Column(
                children: [
                  const CircleAvatar(
                      backgroundColor: AppColors.lighterGrey,
                      radius: 28, child: Icon(Icons.medical_services)),
                  SizedBox(height: 4.h),
                  Container(
                    width: 70.w,
                    height: 12.h,
                    decoration: BoxDecoration(
                      color: AppColors.lighterGrey,
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
