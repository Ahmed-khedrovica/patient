import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient/features/home/logic/specialities_cubit.dart';
import 'package:patient/features/home/ui/all_specialties_screen.dart';

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
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => BlocProvider.value(
                  value: context.read<SpecialitiesCubit>(),
                  child: const AllSpecialtiesScreen(),
                ),
              ),
            );
          },
          child: Text('See All', style: AppTextStyles.font12GreenRegular),
        ),
      ],
    );
  }
}
