import 'package:base/core/models/menu_model.dart';
import 'package:base/ui/theme/colors.dart';
import 'package:flutter/material.dart';

class MenuWidget extends StatefulWidget {
  final MenuModel menusM;
  MenuWidget({Key? key, required this.menusM}) : super(key: key);

  @override
  State<MenuWidget> createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  late final MenuModel menuM;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: ThemeColors.kLightColor,
            borderRadius: BorderRadius.circular(12),
            // image: DecorationImage(
            //   image: AssetImage(
            //     widget.menusM.image.toString(),
            //   ),
            //   // fit: BoxFit.contain,
            // ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              widget.menusM.image.toString(),
              width: 24,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          widget.menusM.text.toString(),
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
