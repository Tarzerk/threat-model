import 'package:flutter/material.dart';
import 'package:threat_model/Screens.dart/actionMenu.dart';

class ErrorScreen extends StatefulWidget {
  @override
  _ErrorScreenState createState() => _ErrorScreenState();
}

class _ErrorScreenState extends State<ErrorScreen> {
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
          child: Container(
            alignment: Alignment.topCenter,
            child: Column(
              children: <Widget>[
                SizedBox(height: 50),
                AppBar(
                  title: Align(
                    alignment: Alignment.center,
                    child: Text(
                      'Something Went Wrong',
                      style: TextStyle(
                          color: Colors.red[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                  elevation: 0,
                  backgroundColor: Colors.white,
                ),
                // SizedBox(
                //   height: 50,
                // ),

                AppBar(
                  title: Align(
                    alignment: Alignment.center,
                    child: Text(
                      // *** contact IT support doesn't fit in one box
                      'Please Try Again Later',
                      style: TextStyle(
                          color: Colors.red[900],
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                  ),
                  elevation: 0,
                  backgroundColor: Colors.white,
                ),
                // AppBar(
                //   title: Align(
                //     alignment: Alignment.center,
                //     child: Text(
                //       'Contact IT at utdthreatmodel@gmail.com',
                //       style: TextStyle(
                //           color: Colors.red[900],
                //           fontWeight: FontWeight.bold,
                //           fontSize: 25),
                //     ),
                //   ),
                //   elevation: 0,
                //   backgroundColor: Colors.white,
                // ),

                SizedBox(
                  height: 50,
                ),
                Icon(
                  Icons.error,
                  size: 100,
                  color: Colors.red[900],
                ),
                SizedBox(
                  height: 50,
                ),
                InkWell(
                  onTap: () {
                    // change destination***
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ActionMenu()));
                  },
                  // software button
                  child: Container(
                      // affects box size
                      width: 300,
                      height: 80,
                      padding: EdgeInsets.all(25),
                      //padding: EdgeInsets.fromLTRB(50.0, 10.0, 50.0, 10.0),
                      decoration: BoxDecoration(
                          color: Color(0xff05366B),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      //changed to row
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 50,
                            ),
                            SizedBox(
                              height: 80,
                              width: 150,
                              child: Text('Return to Menu',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 20,
                                  )),
                            ),
                          ])),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
