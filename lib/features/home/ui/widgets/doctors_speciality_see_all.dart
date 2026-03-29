import 'package:flutter/material.dart';
import 'package:patient/core/routing/routes.dart';

import '../../../../core/theming/app_text_styles.dart';

class DoctorsSpecialitySeeAll extends StatelessWidget {
  const DoctorsSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Doctor Speciality', style: AppTextStyles.font18DarkBlueSemiBold),
        const Spacer(),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, Routes.allSpecialtiesScreen);
          },
          child: Text('See All', style: AppTextStyles.font12BlueRegular),
        ),
      ],
    );
  }
}
