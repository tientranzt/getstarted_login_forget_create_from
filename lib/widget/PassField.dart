import 'package:flutter/material.dart';

class PassField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30, right: 30, left: 30, bottom: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "PASSWORD",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Stack(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                    hintText: "Enter your password",
                    hintStyle: TextStyle(fontSize: 13)),
              ),
              Positioned(
                right: 0,
                child: GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, "forget_acc");
                    },
                    child: Text(
                  "Forget",
                  style: TextStyle(color: Color(0xFF4B8D62)),
                )),
              )
            ],
          )
        ],
      ),
    );
  }
}
