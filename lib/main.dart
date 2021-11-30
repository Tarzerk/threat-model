import 'package:flutter/material.dart';
import 'package:threat_model/Screens.dart/actionMenu.dart';
import 'package:threat_model/Screens.dart/currentSecurity.dart';
import 'package:threat_model/Screens.dart/login.dart';
import 'package:threat_model/Screens.dart/risk.dart';
import 'package:threat_model/Screens.dart/signUp.dart';
import 'package:threat_model/Screens.dart/systemSelect.dart';
import 'package:threat_model/Screens.dart/wait.dart';

void main() {
  runApp(MyApp());
}

/*
  This is the main Method, this is where our app starts
*/
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Threat',
      home: Login(), // the home : points to our first screen in the app.
    );
  }
}
