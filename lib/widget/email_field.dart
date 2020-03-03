import 'package:flutter/material.dart';


class EmailField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30, right: 30, left: 30, bottom: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("EMAIL", style: TextStyle(fontWeight: FontWeight.bold),),
          TextField(
            decoration: InputDecoration(
                hintText: "Enter your email address",
                hintStyle: TextStyle(fontSize: 13)
            ),
          )

        ],
      ),
    );
  }
}
