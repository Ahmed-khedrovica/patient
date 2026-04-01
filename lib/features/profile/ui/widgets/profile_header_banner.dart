import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:patient/features/profile/ui/widgets/profile_avatar_ring.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';

class ProfileHeaderBanner extends StatelessWidget {
  const ProfileHeaderBanner({
    super.key,
    required this.displayName,
    required this.subtitle,
    this.onEditTap,
  });

  final String displayName;
  final String subtitle;
  final VoidCallback? onEditTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(16.w, 16.h, 16.w, 16.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.mainGreen,
            Color.lerp(AppColors.mainGreen, AppColors.darkBlue, 0.35)!,
          ],
        ),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(28.r)),
        boxShadow: [
          BoxShadow(
            color: AppColors.mainGreen.withValues(alpha: 0.35),
            blurRadius: 24,
            offset: const Offset(0, 12),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              AvatarRing(
                child: Icon(
                  IconlyBold.user_2,
                  size: 36.sp,
                  color: AppColors.mainGreen,
                ),
              ),
              SizedBox(width: 20.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Welcome back!', style: AppTextStyles.font16WhiteSemiBold),
                    SizedBox(height: 2.h),
                    Text(
                      displayName,
                        style: AppTextStyles.font16WhiteSemiBold,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

