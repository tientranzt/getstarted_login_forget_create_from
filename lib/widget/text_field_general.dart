import 'package:flutter/material.dart';

class TextFieldGeneral extends StatelessWidget {
  final text;
  TextFieldGeneral({this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
      EdgeInsets.only(right: 50, left: 50, bottom: 5, top: 5),
      child: TextField(
        decoration: InputDecoration(
            hintText: text,
            hintStyle: TextStyle(fontSize: 13)),
      ),
    );
  }
}
