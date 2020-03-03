import 'package:flutter/material.dart';


class OrangeButton extends StatelessWidget {
  final String title;
  OrangeButton({this.title});
  @override
  Widget build(BuildContext context) {
    return  RaisedButton(
      onPressed: (){},
      color: Color(0xffFF910E),
      shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(18.0),
          side: BorderSide(color: Color(0xffFF910E))
      ),
      child: Text(title, style: TextStyle(color: Colors.white),),
    );
  }
}
