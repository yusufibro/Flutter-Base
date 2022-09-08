import 'package:base/ui/theme/colors.dart';
import 'package:flutter/material.dart';

import '../text-field/textField.dart';

class SearchWidget extends StatelessWidget {
  bool isFilter = false;
  bool? isFocus = false;
  TextEditingController? controller;
  SearchWidget({this.isFocus, this.controller});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TextFieldContainer(
      borderRadius: BorderRadius.circular(15),
      width: size.width * 0.9,
      child: TextFormField(
        controller: controller,
        autofocus: false,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: ThemeColors.kPColor,
          ),
          border: InputBorder.none,
          hintText: ' Search',
        ),
      ),
    );
  }
}
