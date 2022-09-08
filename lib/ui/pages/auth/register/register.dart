import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../components/button/button_global.dart';
import '../../../components/text-field/textField.dart';
import '../../../theme/colors.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
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
                'res/images/signup_top.png',
                width: 120,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                'res/images/login_bottom.png',
                width: 120,
              ),
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "res/images/signup.svg",
                    height: size.height * 0.35,
                  ),
                  SizedBox(height: size.height * 0.03),
                  RoundedTextField(
                    hinText: 'Your Name',
                    onChanged: (value) {},
                  ),
                  RoundedTextField(
                    hinText: 'Your Mail',
                    onChanged: (value) {},
                  ),
                  TextFieldContainer(
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.lock,
                          color: ThemeColors.kPColor,
                        ),
                        suffixIcon: Icon(
                          Icons.visibility,
                          color: ThemeColors.kPColor,
                        ),
                        hintText: 'Your Password',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  ButtonCircle(
                    text: 'LOGIN',
                    press: () {},
                  ),
                  SizedBox(height: size.height * 0.03),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Have an Account ? ",
                        style: TextStyle(
                          color: ThemeColors.kPColor,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.offNamed('/LoginPage');
                        },
                        child: Text(
                          "Sign In ",
                          style: TextStyle(
                            color: ThemeColors.kPColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
