import 'package:base/ui/pages/auth/welcome.dart';
import 'package:base/ui/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

import '../../components/button/button_global.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      bodyTextStyle: TextStyle(fontSize: 19),
      bodyPadding: EdgeInsets.all(16),
    );
    return IntroductionScreen(
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: 'Fractional shares',
          body:
              'Instead of having to buy an entire share, invest any amount you want.',
          image: Image.asset(
            'res/images/onboarding_image_1.png',
            width: 350,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Learn as you go',
          body:
              'Download the Stockpile app and master the market with our mini-lesson.',
          image: Image.asset(
            'res/images/onboarding_image_2.png',
            width: 350,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Kids and teens',
          body:
              'Kids and teens can track their stocks 24/7 and place trades that you approve.',
          image: Image.asset(
            'res/images/onboarding_image_3.png',
            width: 350,
          ),
          decoration: pageDecoration,
          footer: ButtonCircle(
            text: 'Get Started',
            press: () {
              Get.off(WelcomPage());
            },
          ),
        ),
      ],
      onDone: () {},
      showSkipButton: true,
      showNextButton: true,
      showDoneButton: true,
      showBackButton: false,
      back: Icon(Icons.arrow_back),
      skip: Text(
        'Skip',
        style:
            TextStyle(fontWeight: FontWeight.bold, color: ThemeColors.kPColor),
      ),
      next: Icon(
        Icons.arrow_forward,
        color: ThemeColors.kPColor,
      ),
      done: Text(
        'Done',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: ThemeColors.kPColor,
        ),
      ),
      dotsDecorator: DotsDecorator(
        size: Size(10, 10),
        color: ThemeColors.kLightColor,
        activeSize: Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
        ),
      ),
    );
  }
}
