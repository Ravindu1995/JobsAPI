import 'package:flutter/material.dart';
import 'package:intership_interview/classes/Recipe.dart';
import 'package:intership_interview/classes/job.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:async';


class Question6Screen extends StatefulWidget {
  const Question6Screen({Key key}) : super(key: key);

   

  @override
  _Question6ScreenState createState() => _Question6ScreenState();
}

class _Question6ScreenState extends State<Question6Screen> {
  String url = 'https://jobs.github.com/positions.json?location=remote';

        Future<List<job>> fetchJobs() async { 
          var data await http.get("https://official-joke-api.appspot.com/jokes/ten");

          var jsonData = json.decode(data.body);

          list<job> jobs= [];

          for(var u in jsondata){
            job jobs = job(u["company"],u["title"],);
            jobs.add(job);
          }
        print(jobs.length);

        return jobs;
        }

          



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Question 6"),
        ),
        body: Container(
        
          // crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,

        

          child: FutureBuilder (
            future: fetchJobs(),
            builder: (BuildContext context, AsyncSnapshot snapshot){

              if(snapshot.data == null){
                return Container(
                  child: Center(
                    child: Text("loading..."),
                  ),
                );
              }else{

              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context , int index){
                  return ListTile(
                    leading: CircleAvatar(
                      
                    ),
                    title: Text(snapshot.data[index].company),
                  );
                },
              );
              }
            },
              ),
            
          ),
        ),
      );
    
  }
}

class job {
  job(this.company, this.title);

  final String company;
  final String title;

  job.fromJson(Map<String, dynamic> json)
      : company = json['company'],
        title = json['title'];
}

