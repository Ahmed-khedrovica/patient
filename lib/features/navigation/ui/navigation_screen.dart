import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:patient/core/theming/app_colors.dart';
import 'package:patient/features/home/ui/home_screen.dart';

import '../../profile/ui/profile_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final List<Widget> screens = [
    HomeScreen(),
    Container(color: Colors.blue),
    Container(color: Colors.white),
    Container(color: Colors.blueGrey),
    ProfileScreen(),
  ];

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
      body: IndexedStack(index: _selectedTab, children: screens),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 26, left: 30, right: 30),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.grey.withAlpha(40),
                border: Border.all(
                  color: AppColors.grey.withAlpha(40),
                  width: 1,
                ),
              ),
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
                    BottomNavigationBarItem(
                      icon: Icon(IconlyLight.heart),
                      activeIcon: Icon(IconlyBold.heart),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(IconlyLight.plus),
                      activeIcon: Icon(IconlyBold.plus),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(IconlyLight.search),
                      activeIcon: Icon(IconlyBold.search),
                      label: '',
                    ),
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
