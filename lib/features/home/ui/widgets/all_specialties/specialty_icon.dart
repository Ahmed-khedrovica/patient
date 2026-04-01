import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theming/app_colors.dart';


/// Tinted SVG icon displayed at the top of each card.
class SpecialtyIcon extends StatelessWidget {
  const SpecialtyIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.r),
      decoration: BoxDecoration(
        color: AppColors.mainGreen.withAlpha(20),
        borderRadius: BorderRadius.circular(14.r),
      ),
      child: SvgPicture.asset(
        'assets/svgs/general_speciality.svg',
        height: 20.h,
        width: 16.w,
        colorFilter: ColorFilter.mode(AppColors.mainGreen, BlendMode.srcIn),
      ),
    );
  }
}