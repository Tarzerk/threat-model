import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:threat_model/Screens.dart/actionMenu.dart';
import 'package:threat_model/Screens.dart/signUp.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

// Demo purposes username and password
Map<String, String> user = {'test': 'test123@'};

// checks if the login data is valid
bool ValidateLogin(String username, String password, Map map) {
  return (map.containsKey(username) && map[username] == password);
}

class _LoginState extends State<Login> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
                  Form(
                    autovalidateMode: AutovalidateMode.always,
                    child: Column(
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
                          child: TextFormField(
                            controller: userNameController,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(width: 2),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30)),
                                ),
                                hintText: 'username'),
                            validator: RequiredValidator(
                                errorText: 'username must not be empty'),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          // password field
                          width: 350,
                          child: TextFormField(
                            controller: passwordController,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(width: 2),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30)),
                                ),
                                hintText: 'password'),
                            obscureText: true,
                            validator: RequiredValidator(
                                errorText: 'password must not be empty'),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        SizedBox(
                            // sign in button
                            height: 40,
                            width: 350,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(30.0),
                                  ),
                                ),
                                onPressed: () {
                                  print(userNameController.text);
                                  print(passwordController.text);

                                  if (ValidateLogin(userNameController.text,
                                      passwordController.text, user)) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ActionMenu()));
                                  } else if (passwordController.text == "" ||
                                      userNameController.text == "") {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title: Text('Error'),
                                            content: Text(
                                                'yo, buddy fill out the fields'),
                                            actions: [
                                              TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text('fine'))
                                            ],
                                          );
                                        });
                                  } else {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return AlertDialog(
                                            title: Text('Error'),
                                            content: Text(
                                                'Invalid username / password, please verify information'),
                                            actions: [
                                              TextButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: Text('fine'))
                                            ],
                                          );
                                        });
                                  }
                                },
                                child: Text('Sign In'))),
                        SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => signUp()));
                          },
                          child: RichText(
                              text: TextSpan(children: [
                            TextSpan(text: "Don't Have An Account? "),
                            TextSpan(text: 'Click '),
                            TextSpan(
                              text: 'Here ',
                              style: TextStyle(color: Colors.green[900]),
                            ),
                            TextSpan(text: 'To Sign Up '),
                          ])),
                        )
                      ],
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
