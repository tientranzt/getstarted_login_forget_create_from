import 'package:flutter/material.dart';
import 'package:getstarted/widget/orange_button.dart';
import 'package:getstarted/widget/sub_title_general.dart';
import 'package:getstarted/widget/text_field_general.dart';
import 'package:getstarted/widget/title_general.dart';

class ForgetAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var rotate = MediaQuery.of(context).orientation;
    const double kBottomNavigationBarHeight = 56.0;
    print(rotate);
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
      body: SingleChildScrollView(
        child: Container(
          height: size.height -40,
          width: size.width,
          child: Column(
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Image.asset("assets/images/key.png"),
                    ),
                    TitleGeneral(
                      title: "Forgot Password",
                    ),
                    SubTitleGeneral(
                      subTitle:
                      "You just input a registrator email and we will send a link to reset password",
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    TextFieldGeneral(
                      text: "Enter your Email",
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      child: Column(children: <Widget>[OrangeButton(title: "SUBMIT",)],),
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text("Dont' have and account"),
                          Text(
                            "SIGN UP",
                            style: TextStyle(color: Color(0xffFF910E)),
                          ),
                          SizedBox(height: 40,)
                        ],
                      ),
                    )
                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
