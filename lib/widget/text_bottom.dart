import 'package:flutter/material.dart';


class TextBottom extends StatelessWidget {
  final Alignment whereAlign;
  final String text;
  TextBottom({this.whereAlign, this.text});
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: whereAlign,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Text(
          text,
          style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 16),
        ),
      ),
    );
  }
}
