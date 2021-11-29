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
    var column = Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                // in progress: will be to view history
                context,
                MaterialPageRoute(builder: (context) => ActionMenu()));
          },
        ),
      ],
    );
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
                  SizedBox(
                    width: 100,
                  ),
                  Icon(
                    Icons.lock,
                    color: Colors.green[900],
                    size: 350,
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  Column(
                    children: [
                      Text(
                        'Threat Model Evaluator',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        // username field
                        width: 350,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(width: 2),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(30)),
                              ),
                              hintText: 'username'),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        // password field
                        width: 350,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(width: 2),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(30)),
                              ),
                              hintText: 'password'),
                              obscureText: true,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              // in progress: will be to view history
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ActionMenu()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.blue,
                          ),
                          constraints: BoxConstraints.tightForFinite(
                            width: 350,
                            height: 50,
                          ),
                        ),
                      ),
                    ],
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
