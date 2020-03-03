import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:getstarted/widget/get_started_button.dart';
import 'package:getstarted/widget/text_bottom.dart';

class GetStartedContainer extends StatelessWidget {
  final int indexImage;
  final String title;
  final String desc;

  GetStartedContainer({this.indexImage, this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        body: Stack(
          children: <Widget>[
            Positioned(
              bottom: 100,
              top: 0,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Image.asset(
                      "assets/images/get${indexImage.toString()}.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(
                            color: Color(0xFF38D2B3),
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 120),
                        child: Text(
                          desc,
                          style: TextStyle(color: Colors.grey),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            indexImage== 2 ? GetStartedButton() : Align(
              alignment: Alignment.bottomCenter,
              child: Stack(
                children: <Widget>[
                  TextBottom(text: "Skip",whereAlign: Alignment.bottomLeft,),
                  TextBottom(text: "Next",whereAlign: Alignment.bottomRight,),
                ],
              ),
            )
          ],
        ));
  }
}
