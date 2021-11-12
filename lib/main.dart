import 'package:flutter/material.dart';
import 'package:threat_model/Screens.dart/actionMenu.dart';
import 'package:threat_model/Screens.dart/login.dart';
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
      home: Login(),  // the home : points to our first screen in the app.
    );
  }
}
/*
  This is the object for user input
 */
class Data {
  int userType = 0; // 0 1 2
  int assetType = 0; // 0 1 2

  var selection = {}; // 0 - 6
}
