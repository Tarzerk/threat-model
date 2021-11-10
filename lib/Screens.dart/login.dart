import 'package:flutter/material.dart';
import 'package:threat_model/Screens.dart/actionMenu.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xfff8EE4AF),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: Colors.white,
          ),
          constraints: BoxConstraints.tightForFinite(
            width: 1000,
            height: 600,
          ),
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 110,
              ),
              Row(
                children: <Widget>[
                  SizedBox(width: 100,),
                  Icon(
                    Icons.lock,
                    color: Colors.green[900],
                    size: 350,
                  ),
                  SizedBox(width: 80,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      color: Colors.blue,
                    ),
                    constraints: BoxConstraints.tightForFinite(
                      width: 350,
                      height: 50,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
