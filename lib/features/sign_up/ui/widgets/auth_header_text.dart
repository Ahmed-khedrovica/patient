import 'package:flutter/cupertino.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_text_styles.dart';

class AuthTextHeader extends StatelessWidget {
  final String text1;
  final String text2;

  const AuthTextHeader({super.key, required this.text1, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text1, style: AppTextStyles.font24GreenBold),
        verticalSpace(8),
        Text(text2, style: AppTextStyles.font14GreyRegular),
      ],
    );
  }
}