import 'package:flutter/material.dart';

class TitleGeneral extends StatelessWidget {
  final String title;
  TitleGeneral({this.title});
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: Color(0xffFF910E),
          fontSize: 18,
          fontWeight: FontWeight.bold),
    );
  }
}
