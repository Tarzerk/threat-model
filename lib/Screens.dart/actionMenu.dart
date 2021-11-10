import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:threat_model/Screens.dart/currentSecurity.dart';
import 'package:threat_model/Screens.dart/error.dart';

class ActionMenu extends StatefulWidget {
  @override
  _ActionMenuState createState() => _ActionMenuState();
}

class _ActionMenuState extends State<ActionMenu> {
  @override
  Widget build(BuildContext context) {
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
              SizedBox(height: 50),
              AppBar(
                title: Text(
                  'Hello Srimathi, Please Select an Action Below',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                elevation: 0,
                backgroundColor: Colors.white,
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => ErrorScreen()));
                      },
                      child: Container(
                          padding: EdgeInsets.all(80),
                          decoration: BoxDecoration(
                              color: Color(0xff005533),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          child: Column(children: [
                            Icon(
                              Icons.history,
                              size: 100,
                              color: Color(0xffffffff),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text('View History',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 25,
                                ))
                          ])),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => CurrentProtocols()));
                      },
                      child: Container(
                        padding: EdgeInsets.all(80),
                        decoration: BoxDecoration(
                            color: Color(0xff05366B),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          children: [
                            Icon(
                              Icons.task,
                              size: 100,
                              color: Color(0xffffffff),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Take a Test',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 25),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
