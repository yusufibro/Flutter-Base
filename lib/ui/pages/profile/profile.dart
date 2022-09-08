import 'package:base/ui/components/button/button_global.dart';
import 'package:base/ui/theme/colors.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeColors.kPColor,
        title: Text(
          'Profile',
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.only(top: 4),
                      child: Stack(
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage('res/images/avatar.png'),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                color: ThemeColors.kPColor,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.edit,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Muhamad Alawi',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'muhamadalawi981@gmail.com',
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ButtonProfileWidget(
                      icon: Icons.person,
                      text: 'My Account',
                      press: () {},
                      icon2: Icons.arrow_forward_ios,
                    ),
                    ButtonProfileWidget(
                      icon: Icons.notifications,
                      text: 'Notifications',
                      press: () {},
                      icon2: Icons.arrow_forward_ios,
                    ),
                    ButtonProfileWidget(
                      icon: Icons.settings,
                      text: 'Settings',
                      press: () {},
                      icon2: Icons.arrow_forward_ios,
                    ),
                    ButtonProfileWidget(
                      icon: Icons.help_outline,
                      text: 'Help & Support',
                      press: () {},
                      icon2: Icons.arrow_forward_ios,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ButtonCircle(
                      text: 'Logout',
                      press: () {
                        print('tes keluar');
                      },
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
