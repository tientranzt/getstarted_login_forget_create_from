import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: FlatButton(
        color: Color(0xFF38D2B3),
        child: Text("Get Started", style: TextStyle(color: Colors.white),),
        onPressed: (){
          Navigator.pushNamed(context, "login1");
        },
      ),
    );
  }
}
