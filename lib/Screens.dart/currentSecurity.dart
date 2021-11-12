import 'package:flutter/material.dart';

class CurrentProtocols extends StatefulWidget {
  @override
  _CurrentProtocolsState createState() => _CurrentProtocolsState();
}

class _CurrentProtocolsState extends State<CurrentProtocols> {

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
          constraints: BoxConstraints.tightForFinite( // containtainer styling for the white card
            width: 1000,
            height: 600,
          ),
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              SizedBox(height: 50),
              AppBar(
                title: Text(
                  'What Are Your Current Security Protocols?',
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
              /*
                IN PROGRESS: 
                Here is the list of security protocols in a list format
                they are of type check list and allow the user to select each item as true or false.
              */
            ],
          ),
        ),
      ),
    );
  }
}
