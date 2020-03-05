import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:getstarted/model/Auth.dart';
import 'package:getstarted/widget/form_login1.dart';
import 'package:getstarted/widget/header.dart';

class Login1 extends StatefulWidget {
  @override
  _Login1State createState() => _Login1State();
}

class _Login1State extends State<Login1> {

  double _statusBarHeight = 0.0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    Auth.getOdoo();
//    initPlatformState();
//    FlutterStatusbarManager.setFullscreen(true);
//    FlutterStatusbarManager.setColor(Colors.transparent);
//    FlutterStatusbarManager.setNavigationBarColor(Colors.transparent);
//    FlutterStatusbarManager.setTranslucent(true);
  }

//  Future<void> initPlatformState() async {
//    double statusBarHeight;
//    // Platform messages may fail, so we use a try/catch PlatformException.
//    try {
//      statusBarHeight = await FlutterStatusbarManager.getHeight;
//    } on PlatformException {
//      statusBarHeight = 0.0;
//    }
//    if (!mounted) return;
//
//    setState(() {
//      _statusBarHeight = statusBarHeight;
//    });
//  }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).dispose();
      },
      child: Scaffold(
        extendBody: true,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            ListView(
              children: <Widget>[
                Header(),
                FormLogin1(),
//                EmailField(),
//                PassField(),
//                Remember(),
//                LoginButton(),
                SizedBox(
                  height: 65,
                ),
                Center(
                    child: Text(
                  "No have account yet",
                  style: TextStyle(color: Colors.grey),
                )),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 31),
                  width: double.infinity,
                  child: OutlineButton(
                    borderSide: BorderSide(width: 1, color: Colors.black),
                    onPressed: () {
                      Navigator.pushNamed(context, "create_acc");
                    },
                    child: Text(
                      "CREATE AN ACCOUNT",
                    ),
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
