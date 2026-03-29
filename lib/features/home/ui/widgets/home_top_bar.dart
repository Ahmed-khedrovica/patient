import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';

class HomeTopBar extends StatelessWidget {
  final String userName;
  const HomeTopBar({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, $userName!',
            style: AppTextStyles.font18DarkBlueBold,
            ),
            Text(
              'How are you feeling today?',
              style: AppTextStyles.font12GreyRegular,
            ),
          ],
        ),
        const Spacer(),
        CircleAvatar(
          radius: 24,
          backgroundColor: AppColors.moreLightGrey,
          child: SvgPicture.asset(
              'assets/svgs/notifications.svg'
          ),
        )
      ],
    );
  }
}
