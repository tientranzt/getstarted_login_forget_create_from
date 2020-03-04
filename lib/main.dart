import 'package:flutter/material.dart';
import 'package:getstarted/page/create_account.dart';
import 'package:getstarted/page/forget_account.dart';
import 'package:getstarted/page/get_started.dart';
import 'package:getstarted/page/login1.dart';

import 'page/forget_account.dart';
import 'page/get_started.dart';


void main() => runApp(MaterialApp(
  routes: {
    "start": (context)=> GetStarted(),
    "login1": (context)=> Login1(),
    "create_acc": (context)=> CreateAccount(),
    "forget_acc": (context)=> ForgetAccount(),
  },
  debugShowCheckedModeBanner: false,
  home: MyApp(),
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Login1();
  }
}
