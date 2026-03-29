import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:patient/core/theming/app_text_styles.dart';
import 'package:patient/features/home/data/models/specialties_response.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/app_colors.dart';

/// Displays a single specialty item in the horizontal list.
class SpecialityListViewItem extends StatelessWidget {
  final Specialty specialty;
  final int itemIndex;
  final int selectedIndex;

  const SpecialityListViewItem({
    super.key,
    required this.specialty,
    required this.itemIndex,
    required this.selectedIndex,
  });

  bool get _isSelected => itemIndex == selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
      child: Column(
        children: [
          _buildAvatar(),
          verticalSpace(2),
          Text(
            specialty.name,
            style: _isSelected
                ? AppTextStyles.font14DarkBlueMedium
                : AppTextStyles.font12DarkBlueRegular,
          ),
        ],
      ),
    );
  }

  Widget _buildAvatar() {
    final avatar = CircleAvatar(
      radius: 28,
      backgroundColor: AppColors.lightBlue,
      child: SvgPicture.asset(
        'assets/svgs/general_speciality.svg',
        height: _isSelected ? 45.h : 32.h,
        width: _isSelected ? 42.w : 40.w,
      ),
    );

    if (_isSelected) {
      return Container(
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.darkBlue),
          shape: BoxShape.circle,
        ),
        child: avatar,
      );
    }

    return avatar;
  }
}
