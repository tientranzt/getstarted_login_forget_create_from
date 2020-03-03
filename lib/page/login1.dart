import 'package:flutter/material.dart';
import 'package:getstarted/widget/LoginButton.dart';
import 'package:getstarted/widget/PassField.dart';
import 'package:getstarted/widget/email_field.dart';
import 'package:getstarted/widget/header.dart';
import 'package:getstarted/widget/remember_the_milk.dart';

class Login1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
             Header(),
              EmailField(),
              PassField(),
              Remember(),
              LoginButton(),
              SizedBox(height: 65,),
              Center(child: Text("No have account yet",style: TextStyle(color: Colors.grey),)),
            ],
          ),

          Positioned(
            right: 0,
            left: 0,
            bottom: 10,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 31),
              width: double.infinity,
              child:
                  OutlineButton(
                    borderSide: BorderSide(width: 1, color:Colors.black ),
                    onPressed: (){
                      Navigator.pushNamed(context, "create_acc");
                    },
                    child: Text("CREATE AN ACCOUNT", ),

              ),
            ),
          )
        ],
      ),
    );
  }
}
