import 'package:flutter/material.dart';
import 'package:threat_model/Screens.dart/actionMenu.dart';
import 'package:threat_model/Screens.dart/login.dart';
import 'package:threat_model/Screens.dart/systemSelect.dart';
import 'package:threat_model/Screens.dart/wait.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Threat',
      home: Wait(),
    );
  }
}
