import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'profile_content_scroll.dart';
import 'profile_placeholder_data.dart';

class ProfileLoadingSkeleton extends StatelessWidget {
  const ProfileLoadingSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: true,
      child: AbsorbPointer(
        child: ProfileContentScroll(
          response: profilePlaceholderResponse(),
          useEntranceAnimation: false,
          onSignOut: () async {},
        ),
      ),
    );
  }
}
