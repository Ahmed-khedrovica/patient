import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patient/core/helpers/extensions.dart';
import 'package:patient/core/routing/routes.dart';
import 'package:patient/core/widgets/app_text_button.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/app_text_styles.dart';
import '../../../data/models/specialties_response.dart';

/// Displays a single doctor card in the doctors list.
class DoctorsListViewItem extends StatelessWidget {
  final Doctor doctor;

  const DoctorsListViewItem({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    final fullName = '${doctor.userId.firstName} ${doctor.userId.lastName}';
    final specialtyName = doctor.specialtyId.name;
    final phone = doctor.userId.phone;

    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          CachedNetworkImage(
            imageUrl:
                'https://img.freepik.com/premium-vector/'
                'cartoon-boy-with-stethoscope-around-his-neck'
                '_969863-204775.jpg?w=2000',
            imageBuilder: (context, imageProvider) => Container(
              width: 110.w,
              height: 120.h,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(12.0),
                image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
              ),
            ),
          ),
          horizontalSpace(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  fullName,
                  style: AppTextStyles.font18DarkBlueBold,
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpace(5),
                Text(specialtyName, style: AppTextStyles.font12GrayMedium),
                verticalSpace(5),
                Text(phone, style: AppTextStyles.font12GrayMedium),
                verticalSpace(10),
                AppTextButton(
                  buttonText: 'Book Now',
                  textStyle: AppTextStyles.font12GreenRegular.copyWith(
                    color: Colors.white,
                    letterSpacing: 0.8.w
                  ),
                  buttonWidth: 100.w,
                  buttonHeight: 10.h,
                  borderRadius: 100,
                  onPressed: () {
                    context.pushNamed(
                      Routes.bookDoctorScreen,
                      arguments: doctor,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
