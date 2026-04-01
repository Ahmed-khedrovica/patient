import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:patient/core/di/dependency_injection.dart';
import 'package:patient/core/theming/app_colors.dart';
import 'package:patient/features/appointments/logic/appointments_cubit.dart';
import 'package:patient/features/home/ui/home_screen.dart';

import '../../appointments/ui/appointments_screen.dart';
import '../../profile/ui/profile_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  late final List<Widget> screens;

  @override
  void initState() {
    super.initState();
    screens = [
      HomeScreen(),
      BlocProvider(
        create: (_) => getIt<AppointmentsCubit>()..getAppointments(),
        child: const AppointmentsScreen(),
      ),
      ProfileScreen(),
    ];
  }

  int _selectedTab = 0;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: screens[_selectedTab],
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 30.h, left: 50.w, right: 50.w),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
            child: Container(
              decoration: BoxDecoration(color: AppColors.grey.withAlpha(40)),
              child: Theme(
                data: Theme.of(context).copyWith(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                ),
                child: BottomNavigationBar(
                  currentIndex: _selectedTab,
                  onTap: _handleIndexChanged,
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  type: BottomNavigationBarType.fixed,
                  selectedItemColor: AppColors.mainGreen,
                  unselectedItemColor: AppColors.lightGrey,
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(IconlyLight.home),
                      activeIcon: Icon(IconlyBold.home),
                      label: '',
                    ),
                    // BottomNavigationBarItem(
                    //   icon: Icon(IconlyLight.heart),
                    //   activeIcon: Icon(IconlyBold.heart),
                    //   label: '',
                    // ),
                    BottomNavigationBarItem(
                      icon: Icon(IconlyLight.paper),
                      activeIcon: Icon(IconlyBold.paper),
                      label: '',
                    ),
                    // BottomNavigationBarItem(
                    //   icon: Icon(IconlyLight.search),
                    //   activeIcon: Icon(IconlyBold.search),
                    //   label: '',
                    // ),
                    BottomNavigationBarItem(
                      icon: Icon(IconlyLight.user),
                      activeIcon: Icon(IconlyBold.user_2),
                      label: '',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
