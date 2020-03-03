import 'package:flutter/material.dart';


class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: RaisedButton(
        color: Colors.white,
        elevation: 0,
        onPressed: () {},
        child: Ink(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Color(0xff4B8C61), Color(0xff28664D)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(2.0)
          ),
          child: Container(
            color: Colors.transparent,
            constraints: BoxConstraints(maxWidth: double.infinity, minHeight: 40.0),
            alignment: Alignment.center,
            child: Text(
              "LOGIN",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white
              ),
            ),
          ),
        ),
      ),
    );
  }
}
