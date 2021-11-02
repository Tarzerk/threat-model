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
      backgroundColor: Color(0xfff8EE4AF),
      body: Container(
        constraints: BoxConstraints.tightForFinite(
          width: 1080,
          height: 500gi,
        ),
        padding: EdgeInsets.all(10),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Icon(
                      Icons.history,
                      size: 200,
                      color: Color(0xffffffff),
                    ),
                    color: Color(0xff005533),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    child: Icon(
                      Icons.task,
                      size: 200,
                      color: Color(0xffffffff),
                    ),
                    color: Color(0xff05366B),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
