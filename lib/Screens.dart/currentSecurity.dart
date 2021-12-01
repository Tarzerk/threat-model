import 'package:flutter/material.dart';
import 'package:threat_model/Screens.dart/userTypeSelect.dart';

List<bool> selections = [false, false, false, false, false, false];

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
          constraints: BoxConstraints.tightForFinite(
            // containtainer styling for the white card
            width: 1000,
            height: 600,
          ),
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              SizedBox(height: 50),
              AppBar(
                iconTheme: IconThemeData(color: Colors.black),
                title: Text(
                  ' What Are Your Current Security Protocols?',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
                elevation: 0,
                backgroundColor: Colors.white,
                actions: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Color(0xff05366B),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UserSelect()));
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              // List of possible selections

              buildCheckbox('Password', selections[0], 0),
              buildCheckbox('Firewall', selections[1], 1),
              buildCheckbox('VPN', selections[2], 2),
              buildCheckbox('Antivirus', selections[3], 3),
              buildCheckbox('Two - Factor Authentication', selections[4], 4),
              buildCheckbox('Biometrics', selections[5], 5),
            ],
          ),
        ),
      ),
    );
  }

  /*
    Logic for checkbox
  */
  Widget buildCheckbox(String title, bool isSelected, int i) => ListTile(
        leading: Checkbox(
          value: isSelected,
          onChanged: (isSelected) {
            setState(() {
              isSelected = isSelected;
              selections[i] = isSelected;
            });
          },
        ),
        title: Text('$title',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      );
}
