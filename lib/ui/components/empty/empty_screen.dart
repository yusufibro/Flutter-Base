import 'package:flutter/material.dart';

class EmptyPage extends StatelessWidget {
  const EmptyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            height: 90,
            width: 90,
            padding: EdgeInsets.all(0),
            decoration: BoxDecoration(
              color: Colors.redAccent,
            ),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Text('DATA KOSONG',),
      ],
    );
  }
}
