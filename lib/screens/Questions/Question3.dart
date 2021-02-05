import 'package:flutter/material.dart';

class Question3Screen extends StatefulWidget {
  Question3Screen({Key key}) : super(key: key);

  @override
  _Question3ScreenState createState() => _Question3ScreenState();
}

class _Question3ScreenState extends State<Question3Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Question 3"),
        ),


        body: Wrap(
          
          children: [ 
          Chip(label: Text('I')),
          Chip(label: Text('really')),
          Chip(label: Text('really')),
          Chip(label: Text('really')),
          Chip(label: Text('really')),
          Chip(label: Text('really')),
          Chip(label: Text('really')),
          Chip(label: Text('need')),
          Chip(label: Text('a')),
          Chip(label: Text('job')),

          
        ]),
        
      ),
    );
  }
}
