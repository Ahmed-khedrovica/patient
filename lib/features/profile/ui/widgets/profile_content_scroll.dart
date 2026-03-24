import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:patient/features/profile/data/models/profile_response.dart';

import '../../../../core/animations/staggered_entrance_animation.dart';
import '../../../../core/helpers/profile_display_helpers.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_text_styles.dart';
import 'profile_header_banner.dart';
import 'profile_menu_tile.dart';
import 'profile_section_label.dart';
import 'profile_stat_badge.dart';

class ProfileContentScroll extends StatelessWidget {
  const ProfileContentScroll({
    super.key,
    required this.response,
    required this.onSignOut,
    this.useEntranceAnimation = true,
  });

  final ProfileResponse response;
  final Future<void> Function() onSignOut;
  final bool useEntranceAnimation;

  @override
  Widget build(BuildContext context) {
    final user = response.data;
    final displayName = '${user.firstName} ${user.lastName}'.trim();

    final sections = <Widget>[
      Row(
        children: [
          ProfileStatBadge(
            label: profileDisplayRole(user.role),
            value: 'Role',
            icon: IconlyBold.profile,
          ),
          horizontalSpace(10),
          ProfileStatBadge(
            label: user.phone.isEmpty ? '—' : user.phone,
            value: 'Phone',
            icon: IconlyBold.call,
          ),
          horizontalSpace(10),
          ProfileStatBadge(
            label: '${user.createdAt?.year ?? '—'}',
            value: 'Since',
            icon: IconlyBold.calendar,
          ),
        ],
      ),
      verticalSpace(26),
      Text('Your account', style: AppTextStyles.font24BlueBold),
      verticalSpace(6),
      Text(
        'Manage preferences, security, and how we reach you.',
        style: AppTextStyles.font14GreyRegular,
      ),
      verticalSpace(20),
      const ProfileSectionLabel(title: 'Settings'),
      ProfileMenuTile(
        title: 'Email',
        subtitle: user.email,
        leadingIcon: IconlyLight.profile,
        onTap: () {},
      ),
      verticalSpace(10),
      ProfileMenuTile(
        title: 'Notifications',
        leadingIcon: IconlyLight.notification,
        onTap: () {},
      ),
      verticalSpace(10),
      ProfileMenuTile(
        title: 'Privacy & security',
        subtitle: 'User ID · ${profileShortId(user.id)}',
        leadingIcon: IconlyLight.shield_done,
        onTap: () {},
      ),
      verticalSpace(22),
      const ProfileSectionLabel(title: 'Support'),
      ProfileMenuTile(
        title: 'Help center',
        leadingIcon: IconlyLight.info_circle,
        onTap: () {},
      ),
      verticalSpace(10),
      ProfileMenuTile(
        title: 'Sign out',
        leadingIcon: IconlyLight.logout,
        trailing: const SizedBox.shrink(),
        onTap: onSignOut,
      ),
    ];

    final scrollBody = useEntranceAnimation
        ? StaggeredEntrance(children: sections)
        : Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: sections,
          );

    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: ProfileHeaderBanner(
            displayName: displayName.isEmpty ? '—' : displayName,
            subtitle: profileMemberSubtitle(user),
            onEditTap: () {},
          ),
        ),
        SliverPadding(
          padding: EdgeInsets.fromLTRB(24.w, 22.h, 24.w, 120.h),
          sliver: SliverToBoxAdapter(child: scrollBody),
        ),
      ],
    );
  }
}
