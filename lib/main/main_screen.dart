import 'package:flutter/material.dart';
import 'package:uts/main/history_screen.dart';
import 'package:uts/main/home_screen.dart';
import 'package:uts/main/profile_screen.dart';
import 'package:uts/main/shop_screen.dart';
import 'package:uts/auth/login_screen.dart';
import 'package:uts/user_model.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key, required this.userData});

  final UserData userData;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentScreenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentScreenIndex,
        onDestinationSelected: (value) {
          setState(() {
            if (value == 4) {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
                (route) => false,
              );
            }
            _currentScreenIndex = value;
          });
        },
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(
            icon: Icon(Icons.medication),
            label: 'Beli Obat',
          ),
          NavigationDestination(icon: Icon(Icons.history), label: 'Riwayat'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          NavigationDestination(icon: Icon(Icons.logout), label: 'Log out'),
        ],
      ),
      body: [
        HomeScreen(user: widget.userData),
        ShopScreen(user: widget.userData),
        HistoryScreen(),
        ProfileScreen(user: widget.userData),
        SizedBox(),
      ][_currentScreenIndex],
    );
  }
}
