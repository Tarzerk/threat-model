/**
 * This is in progress but is where we are going to create user profiles
 */

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:threat_model/Screens.dart/actionMenu.dart';
import 'package:threat_model/Screens.dart/login.dart';

class signUp extends StatefulWidget {
  @override
  _signUpState createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  // function to check if the data is valid
  bool validate() {
    return (formkey.currentState.validate());
  }

  String validateUsername(value) {
    if (value.isEmpty) {
      return "Required";
    } else if (value.length < 6) {
      return "Username should be at least 4 characters";
    } else if (value.length > 15) {
      return "Username should not exceed 15 characters";
    } else if (containsSpecialChar(value)) {
      return 'The username should not contain a special character';
    } else {
      return null;
    }
  }

  // checks if a password is valid
  String validatePassword(value) {
    if (value.isEmpty) {
      return "Required";
    } else if (value.length < 6) {
      return "Password should be at least 6 characters";
    } else if (value.length > 15) {
      return "Password should not exceed 15 characters";
    } else if (!containsNumber(value)) {
      return 'The password should contain a number';
    } else if (!containsSpecialChar(value)) {
      return 'The password should contain a special character';
    } else {
      return null;
    }
  }

  // checks if string contains a number
  bool containsNumber(String value) {
    return (value.contains(new RegExp(r'[0-9]')));
  }

  // check if a string contains special characters
  bool containsSpecialChar(String value) {
    return (value.contains(new RegExp(r'[^a-zA-Z0-9]')));
  }

  TextEditingController newUserNameController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();

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
                // the text at the top of our white container
                title: Text(
                  '                    Hello fellow user, use the form below to create a new account',
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
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Center(
                  child: Form(
                    autovalidateMode: AutovalidateMode.always,
                    key: formkey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        TextFormField(
                            controller: newUserNameController,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Username'),
                            validator: validateUsername),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(), labelText: 'Email'),
                          validator: MultiValidator([
                            RequiredValidator(errorText: 'Required *'),
                            EmailValidator(
                                errorText: 'Please enter a valid email')
                          ]),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                            controller: newPasswordController,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'password'),
                            validator: validatePassword),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 40,
                          width: 350,
                          child: ElevatedButton(
                              onPressed: () {
                                if (validate()) {
                                  user[newUserNameController.text] =
                                      newPasswordController.text;
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title: Text('Congrats'),
                                          content: Text(
                                              'Account created succesfully'),
                                          actions: [
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              Login()));
                                                },
                                                child: Text('YAY'))
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
                                              'yo, buddy fill the form correctly'),
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
                              style: ElevatedButton.styleFrom(
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(30.0),
                                ),
                              ),
                              child: Text('Sign Up')),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
