import 'dart:async';

import 'package:base/app/app.dart';
import 'package:base/ui/pages/onboarding/onboarding.dart';
import 'package:base/ui/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Get.off(OnBoardingPage());
      // isi tujuan seabis splashscreen
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // isi splash screen
      body: Container(
        width: Get.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              ThemeColors.kPColor,
              Color.fromARGB(255, 131, 58, 165),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'res/images/splash_image_.png',
              height: 400,
              width: 400,
              fit: BoxFit.fitWidth,
            ),
          ],
        ),
      ),
    );
  }
}
