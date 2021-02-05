import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intership_interview/screens/Questions/Question1.dart';
import 'package:intership_interview/screens/Questions/Question2.dart';
import 'package:intership_interview/screens/Questions/Question3.dart';
import 'package:intership_interview/screens/Questions/Question5.dart';
import 'package:intership_interview/screens/Questions/Question6.dart';

import 'Questions/Question4.dart';

class QuestionsScreen extends StatelessWidget {
  QuestionsScreen({Key key}) : super(key: key);
  final String title;
  final List<Widget> questionPages = [
    Question1Screen(),
    Question2Screen(),
    Question3Screen(),
    Question4Screen(),
    Question5Screen(),
    JobsListView(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 80,
              color: Colors.lightBlue,
              alignment: Alignment.center,
              child: Text(
                "Interview Questions",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: questionPages.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    height: 50,
                    color: Colors.yellow,
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.greenAccent,
                            alignment: Alignment.center,
                            child: Text(
                              "Question ${index + 1}",
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 60,
                          alignment: Alignment.center,
                          child: RaisedButton(
                            elevation: 0,
                            onPressed: () {
                              Get.to(questionPages[index]);
                            },
                            padding: EdgeInsets.all(0),
                            child: Container(
                              width: 60,
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.arrow_forward_ios,
                              ),
                              // color: Colors.grey,
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
