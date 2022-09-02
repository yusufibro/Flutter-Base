import 'dart:async';

import 'package:base/app/app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({ Key? key }) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      // isi tujuan seabis splashscreen
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      // isi splash screen
    );
  }
}