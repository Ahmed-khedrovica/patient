import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient/features/profile/data/models/profile_response.dart';

import '../../../core/di/dependency_injection.dart';
import '../../../core/routing/routes.dart';
import '../logic/profile_cubit.dart';
import '../logic/profile_state.dart';
import 'widgets/profile_content_scroll.dart';
import 'widgets/profile_error_screen.dart';
import 'widgets/profile_loading_skeleton.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<ProfileCubit>()..getProfile(),
      child: Scaffold(
        body: SafeArea(
          bottom: false,
          child: BlocBuilder<ProfileCubit, ProfileState<ProfileResponse>>(
            builder: (context, state) {
              return state.map(
                initial: (_) => const ProfileLoadingSkeleton(),
                loading: (_) => const ProfileLoadingSkeleton(),
                success: (s) => ProfileContentScroll(
                  response: s.data,
                  onSignOut: () => _signOut(context),
                ),
                error: (e) => ProfileErrorScreen(message: e.errorMessage),
              );
            },
          ),
        ),
      ),
    );
  }

  static Future<void> _signOut(BuildContext context) async {
    await context.read<ProfileCubit>().logout();
    if (!context.mounted) return;
    Navigator.of(
      context,
      rootNavigator: true,
    ).pushNamedAndRemoveUntil(Routes.loginScreen, (_) => false);
  }
}
