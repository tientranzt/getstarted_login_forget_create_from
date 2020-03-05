import 'package:flutter/material.dart';
import 'package:getstarted/model/Auth.dart';

class FormLogin1 extends StatefulWidget {
  @override
  _FormLogin1State createState() => _FormLogin1State();
}

class _FormLogin1State extends State<FormLogin1> {
  final _formKey = GlobalKey<FormState>();

  bool checkIsEmail(String mail) {
    String p =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$";
    RegExp regExp = RegExp(p);
    return regExp.hasMatch(mail);
  }

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "EMAIL",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            TextFormField(
              controller: _emailController,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                if (!checkIsEmail(value)) {
                  return "This is not email";
                }
                return null;
              },
              decoration: InputDecoration(
                  hintText: "Enter your email address",
                  hintStyle: TextStyle(fontSize: 13)),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "PASSWORD",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Stack(
              children: <Widget>[
                TextFormField(
                  controller: _passController,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter some text';
                    }
                    if (value.length < 6) {
                      return 'Password must be greater than 8';
                    }
                    return null;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter your password",
                      hintStyle: TextStyle(fontSize: 13)),
                ),
                Positioned(
                  right: 0,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "forget_acc");
                      },
                      child: Text(
                        "Forget",
                        style: TextStyle(color: Color(0xFF4B8D62)),
                      )),
                )
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  value: true,
                  checkColor: Color(0xFF4B8D62),
                ),
                Text(
                  "REMEMBER ME",
                  style: TextStyle(color: Colors.grey, fontSize: 12),
                )
              ],
            ),
            RaisedButton(
              padding: EdgeInsets.all(0),
              color: Colors.white,
              elevation: 0,
              onPressed: () async {
                if (_formKey.currentState.validate()) {
                  var user = _emailController.text.trim();
                  var pass = _passController.text.trim();
                  var result = await Auth.getToken(user, pass);
                  if (result) {
                    var userInfo = await Auth.checkLogin();
                    if (userInfo != null){
//                      print(userInfo);
                    }
                  }
                }
              },
              child: Ink(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xff4B8C61), Color(0xff28664D)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(2.0)),
                child: Container(
                  color: Colors.transparent,
                  constraints: BoxConstraints(
                      maxWidth: double.infinity, minHeight: 40.0),
                  alignment: Alignment.center,
                  child: Text(
                    "LOGIN",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
