import 'package:flutter/material.dart';

import '../../../../core/theming/app_text_styles.dart';

class BookingSectionTitle extends StatelessWidget {
  final String title;

  const BookingSectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title, style: AppTextStyles.font15DarkBlueMedium);
  }
}
