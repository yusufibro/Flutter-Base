import 'package:base/ui/theme/colors.dart';
import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget? child;
  final double? width;
  final BorderRadiusGeometry? borderRadius;
  TextFieldContainer({Key? key, this.child, this.borderRadius, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: width != null ? width : size.width * 0.8,
      decoration: BoxDecoration(
          color: ThemeColors.kLightColor,
          borderRadius: borderRadius != null ? borderRadius : BorderRadius.circular(29)),
      child: child,
    );
  }
}

class RoundedTextField extends StatelessWidget {
  final String? hinText;
  final IconData? icon;
  final ValueChanged<String>? onChanged;
  final TextEditingController? controller;
  final FormFieldValidator? validate;
  RoundedTextField({
    Key? key,
    this.hinText,
    this.icon = Icons.person,
    this.onChanged,
    this.controller,
    this.validate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TextFieldContainer(
      child: TextFormField(
        controller: controller,
        onChanged: onChanged,
        validator: validate ,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: ThemeColors.kPColor,
          ),
          hintText: hinText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
