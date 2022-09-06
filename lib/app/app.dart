import 'package:base/ui/pages/onboarding/onboarding.dart';
import 'package:base/ui/pages/profile/profile.dart';
import 'package:base/ui/pages/splashscreen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../ui/pages/home/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Base Flutter',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreenPage(),
      getPages: [
        GetPage(name: '/SplashsScreen', page: () => SplashScreenPage()),
      ],
    );
  }
}
