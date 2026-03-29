import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:patient/core/theming/app_text_styles.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/app_colors.dart';

class SpecialityListViewItem extends StatelessWidget {
  final int itemIndex;
  final int selectedIndex;

  const SpecialityListViewItem({
    super.key,
    required this.itemIndex,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
      child: Column(
        children: [
          itemIndex == selectedIndex
              ? Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.darkBlue),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: AppColors.lightBlue,
                    child: SvgPicture.asset(
                      'assets/svgs/general_speciality.svg',
                      height: 45.h,
                      width: 42.w,
                    ),
                  ),
                )
              : CircleAvatar(
                  radius: 28,
                  backgroundColor: AppColors.lightBlue,
                  child: SvgPicture.asset(
                    'assets/svgs/general_speciality.svg',
                    height: 32.h,
                    width: 40.w,
                  ),
                ),
          verticalSpace(2),
          Text(
             'Specialization',
            style: itemIndex == selectedIndex
                ? AppTextStyles.font14DarkBlueMedium
                : AppTextStyles.font12DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}
