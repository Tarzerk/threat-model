import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:threat_model/Screens.dart/currentSecurity.dart';
import 'package:threat_model/Screens.dart/error.dart';

class ActionMenu extends StatefulWidget {
  @override
  _ActionMenuState createState() => _ActionMenuState();
}

// This screen allows user to select between taking a test to viewing the history ?? GUI

class _ActionMenuState extends State<ActionMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff8EE4AF),
      body: Center(
        child: Container(
          // This is the containter where our buttons are located
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: Colors.white,
          ),
          constraints: BoxConstraints.tightForFinite(
            width: 1000, // the size of the containter
            height: 600,
          ),
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              SizedBox(height: 50),
              AppBar(
                iconTheme: IconThemeData(color: Colors.black),
                // the text at the top of our white container
                title: Text(
                  '                    Hello fellow user, Please Select an Action Below',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                elevation: 0,
                backgroundColor: Colors.white,
              ),
              SizedBox(
                // for spacing between elements
                height: 50,
              ),
              Container(
                // this containter houses our two button to switch between the history and test screen
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      // button to view history
                      onTap: () {
                        Navigator.push(
                            // in progress: will be to view history
                            context,
                            MaterialPageRoute(
                                builder: (context) => ErrorScreen()));
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
                      // button to take a test
                      onTap: () {
                        Navigator.push(
                            // changes current Screen to the CurrentProtocols Screen
                            context,
                            MaterialPageRoute(
                                builder: (context) => CurrentProtocols()));
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
                              // styling of the button
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
