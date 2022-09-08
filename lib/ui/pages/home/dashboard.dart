import 'package:base/ui/pages/auth/notification/notification.dart';
import 'package:base/ui/pages/home/home.dart';
import 'package:flutter/material.dart';

import '../../theme/colors.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int selectedIndex = 0;

  List screenPage = [
    HomePage(),
    Notificationpage(),
    HomePage(),
  ];

  void onClicked(int index) {
    setState(() {
      selectedIndex = index;
      if (selectedIndex == 0) {
      } else if (selectedIndex == 1) {
      } else if (selectedIndex == 2) {}
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xFFD8DEF6),
              offset: Offset.fromDirection(3, 1),
              spreadRadius: 1,
              blurRadius: 5,
            ),
          ],
        ),
        child: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: 'Notifikasi',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profil',
              ),
            ],
            currentIndex: selectedIndex,
            onTap: onClicked,
            selectedItemColor: ThemeColors.kPColor,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed),
      ),
      body: Container(
        child: screenPage[selectedIndex],
      ),
    );
  }
}
