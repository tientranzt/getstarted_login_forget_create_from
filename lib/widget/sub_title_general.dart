import 'package:flutter/material.dart';




class SubTitleGeneral extends StatelessWidget {
  final String subTitle;
  SubTitleGeneral({this.subTitle});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
      EdgeInsets.only(right: 50, left: 50, bottom: 30, top: 5),
      child: Text(
        subTitle,
        textAlign: TextAlign.center,
      ),
    );
  }
}
