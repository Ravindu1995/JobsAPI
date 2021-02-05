import 'package:flutter/material.dart';
import 'package:intership_interview/classes/Recipe.dart';

class Question1Screen extends StatefulWidget {
  const Question1Screen({Key key}) : super(key: key);

  @override
  _Question1ScreenState createState() => _Question1ScreenState();
}

class _Question1ScreenState extends State<Question1Screen> {
  Recipe recipe = Recipe(10, 5);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Question 1"),
        ),
        body: Column(
          
          
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          
            
          
        ),
      ),
    );
  }
}
