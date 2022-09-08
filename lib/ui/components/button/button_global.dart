import 'package:base/core/models/menu_model.dart';
import 'package:base/ui/theme/colors.dart';
import 'package:flutter/material.dart';

class ButtonCircle extends StatelessWidget {
  final String? text;
  final VoidCallback? press;
  final Color? color, textColor;
  ButtonCircle({
    Key? key,
    this.text,
    this.press,
    this.color = ThemeColors.kPColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: MediaQuery.of(context).size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 20,
          ),
          color: color,
          onPressed: press,
          child: Text(
            text!,
            style: TextStyle(
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}

class RecommendWidget extends StatefulWidget {
  final MenuModel? menuText;
  Color? color, fntColor;
  RecommendWidget({
    Key? key,
    this.color = Colors.purple,
    this.menuText,
    this.fntColor,
  }) : super(key: key);

  @override
  State<RecommendWidget> createState() => _RecommendWidgetState();
}

class _RecommendWidgetState extends State<RecommendWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      margin: EdgeInsets.symmetric(
        horizontal: 10,
      ),
      height: 30,
      // width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(
          14,
        ),
        border: Border.all(
          color: ThemeColors.kPColor,
        ),
      ),
      child: Row(
        children: [
          Image.asset(
            widget.menuText!.image.toString(),
            width: 20,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            widget.menuText!.text.toString(),
            style: TextStyle(
              fontSize: 15,
              color: widget.fntColor != null
                  ? widget.fntColor
                  : Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
}

class BannerRecommendWidget extends StatelessWidget {
  final MenuModel? menuWidget;
  BannerRecommendWidget({Key? key, this.menuWidget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      height: 130,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          children: [
            Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                color: ThemeColors.kLightColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  menuWidget!.image.toString(),
                  width: 80,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      menuWidget!.text.toString(),
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '800 m | 🌟 4.9 ( 2.3 )',
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "🛵 Rp. 500.000",
                        ),
                        Icon(Icons.favorite, color: Color.fromARGB(255, 233, 30, 169),)
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
