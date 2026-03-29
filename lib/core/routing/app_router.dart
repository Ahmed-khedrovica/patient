import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:patient/core/routing/routes.dart';

import '../../features/home/logic/specialities_cubit.dart';
import '../../features/home/ui/all_specialties_screen.dart';
import '../../features/login/logic/login_cubit.dart';
import '../../features/login/ui/login_screen.dart';
import '../../features/navigation/ui/navigation_screen.dart';
import '../../features/sign_up/logic/signup_cubit.dart';
import '../../features/sign_up/ui/signup_screen.dart';
import '../di/dependency_injection.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    /// this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      // case Routes.onBoardingScreen:
      //   return MaterialPageRoute(builder: (_) => const OnboardingScreen());

      // case Routes.homeScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider(
      //       create: (context) => HomeCubit(getIt())..getSpecializations(),
      //       child: const HomeScreen(),
      //     ),
      //   );

      case Routes.navigationScreen:
        return MaterialPageRoute(builder: (_) => const NavigationScreen());

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );

      case Routes.signupScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignupScreen(),
          ),
        );

      case Routes.allSpecialtiesScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SpecialitiesCubit>()..getSpecialties(),
            child: const AllSpecialtiesScreen(),
          ),
        );
      default:
        return null;
    }
  }
}
