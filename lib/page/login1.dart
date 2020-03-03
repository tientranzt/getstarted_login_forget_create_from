import 'package:flutter/material.dart';
import 'package:getstarted/widget/LoginButton.dart';
import 'package:getstarted/widget/PassField.dart';
import 'package:getstarted/widget/email_field.dart';
import 'package:getstarted/widget/header.dart';
import 'package:getstarted/widget/remember_the_milk.dart';

class Login1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){  FocusScope.of(context).dispose(); },
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
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
                Container(
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
                )
              ],
            ),


          ],
        ),
      ),
    );
  }
}
