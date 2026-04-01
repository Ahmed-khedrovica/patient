import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../features/home/data/models/specialties_response.dart';
import 'specialty_card.dart';

class SpecialtiesGrid extends StatelessWidget {
  const SpecialtiesGrid({super.key, required this.specialties});

  final List<Specialty> specialties;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: specialties.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.w,
        mainAxisSpacing: 12.h,
        childAspectRatio: 0.75,
      ),
      itemBuilder: (context, index) {
        return SpecialtyCard(
          specialty: specialties[index],
        );
      },
    );
  }
}