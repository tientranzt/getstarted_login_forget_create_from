import 'package:flutter/material.dart';
import 'package:getstarted/widget/bound_circle.dart';


class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
        height: height * 0.3,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/header.PNG"),
                fit: BoxFit.cover)),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  BoundCircle(),
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  Text("Login to continue",
                      style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ],
        ));
  }
}
