import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0xff),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 200),
              Icon(
                Icons.verified_user,
                size: 80.0,
                color: Color(0xff14DB92),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Username'),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Password'),
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                child: const Text('Sign in'),
                onPressed: () {
                  
                },
              )
            ]));
  }

  buildText(String s) {}
}
