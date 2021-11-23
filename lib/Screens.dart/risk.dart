import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:threat_model/Screens.dart/error.dart';
//import 'package:threat_model/Screens.dart/checkbox_link_list.dart';

class Risk extends StatefulWidget {
  @override
  _RiskState createState() => _RiskState();
}

var score = 3.141592;
//String textData = "pls work";

//  Map<String, bool> values = {
//     'install firewall': true,
//     'use password generator': false,
//   };

class _RiskState extends State<Risk> {
  List<String> _texts = [
    'Install VPN',
    'Update PC',
    'Enable Firewall',
    'Physical Cover',
    'Use a Password',
    'Use Biometrics'
  ];

  bool value = false;
  List<bool> _isChecked;

  @override
  void initState() {
    super.initState();
    _isChecked = List<bool>.filled(_texts.length, false);
  }

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Color(0xff05366B);
    }

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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              //SizedBox(width: 50),
              AppBar(
                title: Text(
                  //***
                  'Personalized Risk Score & Security Suggestions',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xff005533),
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                elevation: 0,
                backgroundColor: Colors.white,
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                //*** change where this goes */
                                builder: (context) => ErrorScreen()));
                      },
                      child: Container(
                          padding: EdgeInsets.all(125),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff005533),

                            //borderRadius:
                            //  BorderRadius.all(Radius.circular(20))
                          ),
                          child: Column(children: <Widget>[
                            Text(score.toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 25,
                                )),
                            SizedBox(
                              height: 1,
                            ),
                          ])),
                    ),
                    SizedBox(
                      width: 5,
                    ),

//** CHECKBOX LIST */
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Checkbox(
                                checkColor: Colors.white,
                                fillColor:
                                    MaterialStateProperty.resolveWith(getColor),
                                value: _isChecked[0],
                                onChanged: (val) {
                                  setState(() {
                                    _isChecked[0] = val;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                onTap: () => launch(
                                    'https://stackoverflow.com/questions/43583411/how-to-create-a-hyperlink-in-flutter-widget'),
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Colors.white,
                                  ),
                                  child: Text(_texts[0],
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff05366B),
                                        fontSize: 25,
                                      )),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),

                          //*** NUMBER 2 */
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Checkbox(
                                checkColor: Colors.white,
                                fillColor:
                                    MaterialStateProperty.resolveWith(getColor),
                                value: _isChecked[1],
                                onChanged: (val) {
                                  setState(() {
                                    _isChecked[1] = val;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                onTap: () => launch(
                                    'https://stackoverflow.com/questions/43583411/how-to-create-a-hyperlink-in-flutter-widget'),
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Colors.white,
                                  ),
                                  child: Text(_texts[1],
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff05366B),
                                        fontSize: 25,
                                      )),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),

                          //*** number 3 */

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Checkbox(
                                checkColor: Colors.white,
                                fillColor:
                                    MaterialStateProperty.resolveWith(getColor),
                                value: _isChecked[2],
                                onChanged: (val) {
                                  setState(() {
                                    _isChecked[2] = val;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                onTap: () => launch(
                                    'https://stackoverflow.com/questions/43583411/how-to-create-a-hyperlink-in-flutter-widget'),
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Colors.white,
                                  ),
                                  child: Text(_texts[2],
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff05366B),
                                        fontSize: 25,
                                      )),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),

                          //** number 4 */

                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Checkbox(
                                checkColor: Colors.white,
                                fillColor:
                                    MaterialStateProperty.resolveWith(getColor),
                                value: _isChecked[3],
                                onChanged: (val) {
                                  setState(() {
                                    _isChecked[3] = val;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                onTap: () => launch(
                                    'https://stackoverflow.com/questions/43583411/how-to-create-a-hyperlink-in-flutter-widget'),
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Colors.white,
                                  ),
                                  child: Text(_texts[3],
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff05366B),
                                        fontSize: 25,
                                      )),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),

                          //** number 5 */
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Checkbox(
                                checkColor: Colors.white,
                                fillColor:
                                    MaterialStateProperty.resolveWith(getColor),
                                value: _isChecked[4],
                                onChanged: (val) {
                                  setState(() {
                                    _isChecked[4] = val;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                onTap: () => launch(
                                    'https://stackoverflow.com/questions/43583411/how-to-create-a-hyperlink-in-flutter-widget'),
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Colors.white,
                                  ),
                                  child: Text(_texts[4],
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff05366B),
                                        fontSize: 25,
                                      )),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),

                          //** number 6 */
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Checkbox(
                                checkColor: Colors.white,
                                fillColor:
                                    MaterialStateProperty.resolveWith(getColor),
                                value: _isChecked[5],
                                onChanged: (val) {
                                  setState(() {
                                    _isChecked[5] = val;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                onTap: () => launch(
                                    'https://stackoverflow.com/questions/43583411/how-to-create-a-hyperlink-in-flutter-widget'),
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    color: Colors.white,
                                  ),
                                  child: Text(_texts[5],
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xff05366B),
                                        fontSize: 25,
                                      )),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      ),
                    )
// INSERT OTHER CHECKBOX HERE
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
