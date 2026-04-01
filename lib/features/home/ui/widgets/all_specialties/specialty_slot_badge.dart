import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_text_styles.dart';

/// Shows "X slots/day" with a clock icon.
class SlotsBadge extends StatelessWidget {
  const SlotsBadge({super.key, required this.maxAppointments});

  final int maxAppointments;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(IconlyBold.time_circle, size: 14.sp, color: AppColors.mainGreen),
        horizontalSpace(4),
        Expanded(
          child: Text(
            '$maxAppointments slots/day',
            style: AppTextStyles.font12GreyMedium,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
