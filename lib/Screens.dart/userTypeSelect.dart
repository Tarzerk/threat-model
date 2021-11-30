import 'package:flutter/material.dart';
import 'package:threat_model/Screens.dart/error.dart';

import 'package:threat_model/Screens.dart/currentSecurity.dart';
// how are usernames being stored and stuff??
import 'package:threat_model/Screens.dart/login.dart';
import 'package:threat_model/Screens.dart/actionMenu.dart';
import 'package:threat_model/Screens.dart/systemSelect.dart';

// type st and it'll fill in a stateful widget and type the name of your class

/**
 * improvements:
 * fix alignment of icons (choose different icons?) -- DONE
 * have username passed in from login screen
 */
class UserSelect extends StatefulWidget {
  @override
  _UserSelectState createState() => _UserSelectState();
}

var experience;

class _UserSelectState extends State<UserSelect> {
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
              //SizedBox(height: 50),
              AppBar(
                title: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Welcome user',
                    // center of the screen???***
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
                elevation: 0,
                backgroundColor: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              AppBar(
                title: Align(
                  alignment: Alignment.center,
                  child: Text(
                    // rephrase ***
                    'Choose your technological literacy',
                    // center of the screen???***
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        // change color ? ***
                        color: Color(0xff005533),
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
                elevation: 0,
                backgroundColor: Colors.white,
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        // change destination***
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SystemSelect()));
                        experience = 0;
                      },
                      // software button
                      child: Container(
                          // affects box size
                          width: 300,
                          height: 80,
                          padding: EdgeInsets.all(25),
                          decoration: BoxDecoration(
                              color: Color(0xff05366B),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          //changed to row
                          child: Row(children: [
                            SizedBox(
                              height: 80,
                              width: 150,
                              child: Text('Beginner',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 22,
                                  )),
                            ),
                            SizedBox(
                              width: 20,
                              //height: 10,
                            ),
                            Icon(
                              Icons.fireplace_rounded,
                              size: 25,
                              color: Color(0xffffffff),
                            ),
                          ])),
                    ),
                    // gap btwn buttons?
                    SizedBox(
                      //width: 20,
                      height: 10,
                    ),

                    // hardware button
                    InkWell(
                      onTap: () {
                        // change this section!!***
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SystemSelect()));
                        experience = 1;
                      },
                      child: Container(
                          // affects box size
                          width: 300,
                          height: 80,
                          padding: EdgeInsets.all(25),
                          decoration: BoxDecoration(
                              color: Color(0xff05366B),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          //changed to row
                          child: Row(children: [
                            SizedBox(
                              height: 80,
                              width: 150,
                              child: Text('Intermediate',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 22,
                                  )),
                            ),
                            SizedBox(
                              width: 10,
                              //height: 10,
                            ),
                            Icon(
                              Icons.fireplace_rounded,
                              size: 25,
                              color: Color(0xffffffff),
                            ),
                            Icon(
                              Icons.fireplace_rounded,
                              size: 25,
                              color: Color(0xffffffff),
                            ),
                          ])),
                    ),
                    // gap btwn buttons?
                    SizedBox(
                      height: 10,
                    ),

                    // data button
                    InkWell(
                      onTap: () {
                        // is this necessary?***
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SystemSelect()));
                        experience = 2;
                      },
                      // software button
                      child: Container(
                          // affects box size
                          width: 300,
                          height: 80,
                          padding: EdgeInsets.all(25),
                          decoration: BoxDecoration(
                              color: Color(0xff05366B),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          //changed to row
                          child: Row(children: [
                            SizedBox(
                              height: 80,
                              width: 150,
                              child: Text('Expert',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 22,
                                  )),
                            ),
                            Icon(
                              Icons.fireplace_rounded,
                              size: 25,
                              color: Color(0xffffffff),
                            ),
                            Icon(
                              Icons.fireplace_rounded,
                              size: 25,
                              color: Color(0xffffffff),
                            ),
                            Icon(
                              Icons.fireplace_rounded,
                              size: 25,
                              color: Color(0xffffffff),
                            ),
                          ])),
                    ),
                    // gap btwn buttons?
                    SizedBox(
                      //width: 20,
                      height: 10,
                    ),
                    // InkWell(
                    //   onTap: () {
                    //     // change this section!!***
                    //     Navigator.push(context,MaterialPageRoute(builder: (context) => CurrentProtocols()));
                    //   },
                    // child: Container(
                    //   padding: EdgeInsets.all(80),
                    //   decoration: BoxDecoration(
                    //       color: Color(0xff05366B),
                    //       borderRadius:
                    //           BorderRadius.all(Radius.circular(20))),
                    //   child: Column(
                    //     children: [
                    //       Icon(
                    //         Icons.task,
                    //         size: 100,
                    //         color: Color(0xffffffff),
                    //       ),
                    //       SizedBox(
                    //         height: 20,
                    //       ),
                    //       Text(
                    //         'Take a Test',
                    //         style: TextStyle(
                    //             fontWeight: FontWeight.bold,
                    //             color: Colors.white,
                    //             fontSize: 25),
                    //       )
                    //     ],
                    //   ),
                    // ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
