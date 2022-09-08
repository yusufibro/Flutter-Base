import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../components/button/button_global.dart';
import '../../../components/text-field/textField.dart';
import '../../../theme/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool isLoading = false;
  bool isHidden = true;
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
                'res/images/main_top.png',
                width: size.width * 0.3,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                'res/images/login_bottom.png',
                width: size.width * 0.3,
              ),
            ),
            Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "res/images/login.svg",
                      height: size.height * 0.35,
                    ),
                    SizedBox(height: size.height * 0.05),
                    RoundedTextField(
                      controller: _emailController,
                      hinText: 'Your Mail',
                      onChanged: (value) {},
                      validate: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Email wajib diisi';
                        }
                        return null;
                      },
                    ),
                    TextFieldContainer(
                      child: TextFormField(
                        controller: _passwordController,
                        obscureText: isHidden,
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.lock,
                            color: ThemeColors.kPColor,
                          ),
                          suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                isHidden = !isHidden;
                              });
                            },
                            child: Icon(
                              isHidden
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: ThemeColors.kPColor,
                            ),
                          ),
                          hintText: 'Your Password',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    ButtonCircle(
                      text: 'LOGIN',
                      press: () {
                        if (_formKey.currentState!.validate()) {
                          if (_emailController.text == 'yusuf@gmail.com' &&
                              _passwordController.text == 'admin123') {
                            Get.offNamed('/DashboardPage');
                          } else {
                            Get.snackbar(
                              'Error',
                              'Username or Password Wrong',
                              colorText: Colors.white,
                              snackPosition: SnackPosition.TOP,
                              margin: EdgeInsets.all(30),
                              backgroundColor: Color.fromARGB(255, 230, 19, 19),
                              shouldIconPulse: true,
                            );
                            _emailController.clear();
                            _passwordController.clear();
                          }
                        }
                      },
                    ),
                    SizedBox(height: size.height * 0.03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an Account ? ",
                          style: TextStyle(
                            color: ThemeColors.kPColor,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.offNamed('/RegisterPage');
                          },
                          child: Text(
                            "Sign Up ",
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
            ),
          ],
        ),
      ),
    );
  }
}
