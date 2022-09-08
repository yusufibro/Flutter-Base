import 'dart:async';

import 'package:base/app/app.dart';
import 'package:base/ui/pages/onboarding/onboarding.dart';
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
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFF9A825),
              Color(0xFFFF8F00),
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
