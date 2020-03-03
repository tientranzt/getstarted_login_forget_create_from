import 'package:flutter/material.dart';


class BoundCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50,),
          border: Border.all(color: Colors.white30,width: 5)
      ),
      child: Container(
        padding: EdgeInsets.all(2),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50,),
            border: Border.all(color: Colors.white70,width: 5)
        ),
        child: Container(
          padding: EdgeInsets.all(2),
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50,),
              border: Border.all(color: Colors.white,width: 5)
          ),
        ),
      ),
    );
  }
}
