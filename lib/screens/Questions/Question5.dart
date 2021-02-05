import 'package:flutter/material.dart';

class Question5Screen extends StatefulWidget {
  Question5Screen({Key key}) : super(key: key);

  @override
  _Question5ScreenState createState() => _Question5ScreenState();
}

class _Question5ScreenState extends State<Question5Screen> {
  bool isShowing = true;
  int blueCount = 0;
  int redCount = 0;
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Question 5"),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
            alignment: Alignment.center,
            child: RaisedButton(
              child: (Text('Delete blue')),
              onPressed: () {
                setState(() {
                  isShowing = false;
                  pressed= true;
                });
              },
            ),
          ),

          

          if (isShowing)
            RaisedButton(
              color: Colors.blue,
              onPressed: () {
                setState(() {
                  blueCount += 1;
                });
              },
              child: Text("$blueCount"),
            ),
          RaisedButton(
            color: Colors.red,
            onPressed: () {
              setState(() {
                redCount += 1;
              });
            },
            child: Text("$redCount"),
          ),

          if(pressed)
            Text('Blue text deleted',)
            //style: Colors.,),
          //TODO  display blue button deleted text here
        ]
       
        ),
      ),
    );
  }
}
