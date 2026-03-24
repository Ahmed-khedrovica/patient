import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_text_styles.dart';

class ProfileSectionLabel extends StatelessWidget {
  const ProfileSectionLabel({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 4.w, bottom: 10.h, top: 4.h),
      child: Text(title, style: AppTextStyles.font14BlueSemiBold),
    );
  }
}
