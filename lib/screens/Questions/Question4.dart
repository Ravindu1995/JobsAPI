import 'package:flutter/material.dart';

class Question4Screen extends StatefulWidget {
  Question4Screen({Key key}) : super(key: key);

  @override
  _Question4ScreenState createState() => _Question4ScreenState();
}

class _Question4ScreenState extends State<Question4Screen> {
  bool isShowing = true;
  int blueCount = 0;
  int redCount = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Question 4"),
        ),
        
        body: Column(
        children: <Widget>[
          Expanded(
              child: Container(
                color: Colors.red,
              )
          ),
          
          Expanded(
              child: Container(
                color: Colors.blue,
              )
          ),
        ]
    )
      ),
    );
  }
}
