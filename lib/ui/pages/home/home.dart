import 'package:base/core/models/login_model.dart';
import 'package:base/core/models/menu_model.dart';
import 'package:base/ui/components/button/button_global.dart';
import 'package:base/ui/components/empty/empty_screen.dart';
import 'package:base/ui/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/bar-profile/bar_profile.dart';
import '../../components/menu/menu.dart';
import '../../components/search/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late MenuModel menu;
  int selectedIndex = 0;
  int categoryIndex = 0;
  int menuRecomendIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(95, 236, 236, 236),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: BarProfileWidget(),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 18.0,
                  right: 18.0,
                ),
                child: SearchWidget(),
              ),
              SizedBox(
                height: 20,
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: menus.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 0.0,
                  childAspectRatio: 1.0,
                ),
                itemBuilder: (context, index) => MenuWidget(
                  menusM: menus[index],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 18.0,
                  right: 18.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recommended',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                        fontSize: 16,
                        color: ThemeColors.kPColor,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 30,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: menus.length,
                  itemBuilder: ((context, index) => GestureDetector(
                        onTap: () {
                          setState(() {
                            categoryIndex = index;
                          });
                        },
                        child: RecommendWidget(
                          menuText: menus[index],
                          color: index == categoryIndex
                              ? ThemeColors.kPColor
                              : ThemeColors.kLightColor,
                          fntColor: index == categoryIndex
                              ? Colors.white
                              : ThemeColors.kPColor,
                        ),
                      )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: Get.height * 0.2,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: menus.length,
                  itemBuilder: ((context, index) => BannerRecommendWidget(
                    menuWidget: menus[index],
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
