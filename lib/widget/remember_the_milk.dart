import 'package:flutter/material.dart';


class Remember extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18),
      child: Row(children: <Widget>[
        Checkbox(
          value: true,
          checkColor: Color(0xFF4B8D62),
        ),
        Text("REMEMBER ME", style: TextStyle(color: Colors.grey, fontSize: 12),)
      ],),
    );
  }
}
