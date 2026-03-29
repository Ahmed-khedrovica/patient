import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/animations/staggered_entrance_animation.dart';
import '../../../../../../features/home/data/models/specialties_response.dart';
import 'specialty_card.dart';

/// Animated grid that arranges [SpecialtyCard]s in two-column
/// rows with staggered entrance animations.
class SpecialtiesGrid extends StatelessWidget {
  const SpecialtiesGrid({super.key, required this.specialties});

  final List<Specialty> specialties;

  @override
  Widget build(BuildContext context) {
    final cards = specialties.map((s) => SpecialtyCard(specialty: s)).toList();

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.fromLTRB(20.w, 8.h, 20.w, 32.h),
      child: StaggeredEntrance(
        controllerDuration: const Duration(milliseconds: 900),
        children: _buildRows(cards),
      ),
    );
  }

  List<Widget> _buildRows(List<Widget> cards) {
    final rows = <Widget>[];
    for (var i = 0; i < cards.length; i += 2) {
      final isLast = i + 1 >= cards.length;
      rows.add(
        Padding(
          padding: EdgeInsets.only(bottom: 16.h),
          child: Row(
            children: [
              Expanded(child: cards[i]),
              SizedBox(width: 16.w),
              Expanded(child: isLast ? const SizedBox.shrink() : cards[i + 1]),
            ],
          ),
        ),
      );
    }
    return rows;
  }
}
