import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../components/button/button_global.dart';
import '../../theme/colors.dart';

class WelcomPage extends StatelessWidget {
  const WelcomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                'res/images/main_top.png',
                width: 120,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                'res/images/main_bottom.png',
                width: 120,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Spacer(),
                    Expanded(
                      flex: 8,
                      child: SvgPicture.asset(
                        "res/images/chat.svg",
                        height: size.height * 0.45,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
                SizedBox(height: size.height * 0.05),
                ButtonCircle(
                  text: 'LOGIN',
                  press: () {
                    Get.toNamed('/LoginPage');
                  },
                ),
                ButtonCircle(
                  text: 'SIGN UP',
                  press: () {
                    Get.toNamed('/RegisterPage');
                  },
                  textColor: Colors.black,
                  color: ThemeColors.kLightColor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
