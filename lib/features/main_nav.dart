import 'package:aetram_app/core/theme/app_colors.dart';
import 'package:aetram_app/features/chart/screens/chart_screen.dart';
import 'package:aetram_app/features/home/screens/home_screen.dart';
import 'package:aetram_app/features/profile/screens/profile_screen.dart';
import 'package:aetram_app/features/trading/screen/trading_screen.dart';
import 'package:flutter/material.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    TradingScreen(),
    ChartScreen(),
    ProfileScreen(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _screens[_currentIndex],
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Theme(
            data: Theme.of(context).copyWith(
              splashFactory: NoSplash.splashFactory,
              highlightColor: Colors.transparent,
            ),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: BottomNavigationBar(
                currentIndex: _currentIndex,
                onTap: _onTabTapped,
                backgroundColor: Colors.transparent,
                elevation: 0,
                type: BottomNavigationBarType.fixed,
                selectedItemColor: AppColors.golden,
                unselectedItemColor: Colors.grey,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                items: const [
                  BottomNavigationBarItem(
                    icon: SizedBox(
                      height: 15,
                      child: Center(child: Icon(Icons.home_outlined, size: 24)),
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: SizedBox(
                      height: 15,



                      child: Center(
                        child: Icon(Icons.bar_chart_outlined, size: 24),
                      ),
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: SizedBox(
                      height: 15,
                      child: Center(
                        child: Icon(Icons.calendar_today_outlined, size: 24),
                      ),
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: SizedBox(
                      height: 15,
                      child: Center(child: Icon(Icons.person, size: 24)),
                    ),
                    label: '',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
