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

    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: ()=> Navigator.pushNamed(context, "login1"),
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
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Column(
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
                ),
                Expanded(
                  flex: 1,
                  child: Column(children: <Widget>[OrangeButton(title: "DONE",)],),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text("Dont' have and account"),
                      Text(
                        "SIGN UP",
                        style: TextStyle(color: Color(0xffFF910E)),
                      ),
                      SizedBox(height: 5,)
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
          alignment: Alignment.center,
            child: Container(
              alignment: Alignment.center,
              child: SingleChildScrollView(
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
            ),
          )
        ],
      ),
    );
  }
}
