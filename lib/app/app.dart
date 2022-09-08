import 'package:base/ui/pages/auth/notification/notification.dart';
import 'package:base/ui/pages/auth/register/register.dart';
import 'package:base/ui/pages/auth/welcome.dart';
import 'package:base/ui/pages/home/dashboard.dart';
import 'package:base/ui/pages/onboarding/onboarding.dart';
import 'package:base/ui/pages/profile/profile.dart';
import 'package:base/ui/pages/splashscreen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../ui/pages/auth/login/login.dart';
import '../ui/pages/home/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Base Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreenPage(),
      getPages: [
        GetPage(name: '/SplashsScreen', page: () => SplashScreenPage()),
        GetPage(name: '/LoginPage', page: () => LoginPage()),
        GetPage(name: '/RegisterPage', page: () => RegisterPage()),
        GetPage(name: '/DashboardPage', page: () => DashboardPage()),
        GetPage(name: '/HomePage', page: () => HomePage()),
        GetPage(name: '/NotificationPage', page: () => Notificationpage()),
        GetPage(name: '/ProfilePage', page: () => ProfilePage()),
      ],
    );
  }
}
