import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient/features/home/ui/widgets/specializations_list/speciality_list_view_item.dart';

class SpecialityListView extends StatefulWidget {
  const SpecialityListView({super.key});

  @override
  State<SpecialityListView> createState() => _SpecialityListViewState();
}

class _SpecialityListViewState extends State<SpecialityListView> {
  var selectedSpecializationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) {
        return GestureDetector(
            onTap: () {
              setState(() {
                selectedSpecializationIndex = index;
              });
            },
            child: SpecialityListViewItem(
              itemIndex: index,
              selectedIndex: selectedSpecializationIndex,
            ),
        );
      },
      ),
    );
  }
}
