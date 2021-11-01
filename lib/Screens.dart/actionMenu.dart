import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ActionMenu extends StatefulWidget {
  @override
  _ActionMenuState createState() => _ActionMenuState();
}

class _ActionMenuState extends State<ActionMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Container(
            child: Icon(
              CupertinoIcons.square_favorites,
              size: 300,
            ),
            color: Color(0xff123456),
          )
        ],
      ),
    );
  }
}
