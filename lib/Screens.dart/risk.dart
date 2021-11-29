import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';
import 'currentSecurity.dart'; // current security
import 'userTypeSelect.dart'; //  user types
import 'systemSelect.dart'; // device type
import 'package:threat_model/Screens.dart/error.dart';
//import 'package:threat_model/Screens.dart/checkbox_link_list.dart';

class Risk extends StatefulWidget {
  @override
  _RiskState createState() => _RiskState();
}

double getAssetMultiplier(int asset) {
  switch (asset) {
    case 0: // the user is testing software
      return .8;
    case 1: // the user is testing hardware
      return 1;
    case 2: // the user is testing data
      return 1.3;
    default:
      return -1;
  }
}

double getUserMultiplier(int user) {
  switch (user) {
    case 0: // the user is a begineer
      return .5;
    case 1: // the user is intermidiate
      return 1;
    case 2: // the user is advanced
      return 1.5;
    default:
      return -1;
  }
}

double getProtocolWeights(List<bool> selections) {
  if (selections.length != 6) return -1;

  var weights = {0: 30, 1: 10, 2: 5, 3: 10, 4: 20, 5: 5, 6: 5};

  int temp = 0;

  for (int i = 0; i < selections.length; i++) {
    if (selections[i]) {
      temp += weights[i];
    }
  }

  return temp.toDouble();
}

String CalculateRisk(List<bool> selections, int device, int experience) {
  double userMultiplier = getUserMultiplier(experience);
  double assetMultipler = getAssetMultiplier(device);
  double currentSecurityScore = getProtocolWeights(selections);

  double score = (userMultiplier * assetMultipler) + currentSecurityScore;

  print(score);

  if (score > 70) {
    return "Low Risk";
  } else if (score > 50) {
    return "Medium Risk";
  } else {
    return "High Risk";
  }
}

var score = CalculateRisk(selections, device, experience);

class _RiskState extends State<Risk> {
  List<String> _texts = [
    'Install VPN', // 1
    'Update PC', // 2
    'Enable Firewall', // 3
    'Install Antivirus', //4
    'Use a Password', //5
    'Use Biometrics' //6
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
                title: Align(
                  alignment: Alignment.center,
                  child: Text(
                    //***
                    'Personalized Risk Score & Security Suggestions',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xff005533),
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
                elevation: 0,
                backgroundColor: Colors.white,
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                  child: Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 100,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                //*** change where this goes */
                                builder: (context) => ErrorScreen()));
                      },
                      child: Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.all(125),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff005533),
                            //borderRadius:
                            //  BorderRadius.all(Radius.circular(20))
                          ),
                          child: Column(children: <Widget>[
                            Text(score,
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
                      width: 150,
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
                                    'https://www.youtube.com/watch?v=6pcUEOSpWb0'),
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
                                    'https://www.youtube.com/watch?v=eY_Yww2-Kyw'),
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
                                    'https://www.youtube.com/watch?v=dlBgoVMXIWo'),
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
                                    'https://www.youtube.com/watch?v=rk0WcOT-Z2Y'),
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
                                    'https://www.youtube.com/watch?v=3f0u-vw58A0'),
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
                                    'https://www.youtube.com/watch?v=M7v3_eE7We0'),
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
              )),
            ],
          ),
        ),
      ),
    );
  }
}
