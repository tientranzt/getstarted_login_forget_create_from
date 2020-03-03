import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getstarted/widget/orange_button.dart';
import 'package:getstarted/widget/sub_title_general.dart';
import 'package:getstarted/widget/text_field_general.dart';
import 'package:getstarted/widget/title_general.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    print(orientation);
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pushNamed(context, "login1"),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Color(0xffffffff),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      child: Image.asset("assets/images/key.png"),
                    ),
                    TitleGeneral(
                      title: "Create new Password",
                    ),
                    SubTitleGeneral(
                      subTitle:
                          "Please create a new passrod. Password must be alphanumeric",
                    ),
                  ],
                ),
                Container(
                    height: 300,
                    alignment: Alignment.bottomCenter,
                    child: OrangeButton(
                      title: "DONE",
                    )),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Dont' have and account"),
                    Text(
                      "SIGN UP",
                      style: TextStyle(color: Color(0xffFF910E)),
                    ),
                    SizedBox(
                      height: 5,
                    )
                  ],
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                color: Colors.white,
                margin: orientation == Orientation.landscape
                    ? EdgeInsets.only(top: 0)
                    : EdgeInsets.only(top: 40),
                child: Column(
                  children: <Widget>[
                    TextFieldGeneral(
                      text: "New password",
                    ),
                    TextFieldGeneral(
                      text: "Confirm password",
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
