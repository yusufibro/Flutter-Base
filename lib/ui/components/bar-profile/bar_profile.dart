import 'package:base/core/models/login_model.dart';
import 'package:base/ui/theme/colors.dart';
import 'package:flutter/material.dart';

class BarProfileWidget extends StatefulWidget {
  const BarProfileWidget({Key? key}) : super(key: key);

  @override
  State<BarProfileWidget> createState() => _BarProfileWidgetState();
}

class _BarProfileWidgetState extends State<BarProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(
            'res/images/logo.png',
            width: 50,
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Chief Executive Officer',
                style: TextStyle(),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Maulana Yusuf Ibrohim',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: ThemeColors.kLightColor,
            shape: BoxShape.circle
          ),
          child: Icon(
            Icons.notifications,
            color: ThemeColors.kPColor,
            size: 24,
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: ThemeColors.kLightColor,
            shape: BoxShape.circle
          ),
          child: Icon(
            Icons.shopping_basket,
            color: ThemeColors.kPColor,
            size: 24,
          ),
        )
      ],
    );
  }
}
