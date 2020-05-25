// Deleted everything and will write from scratch!
import 'package:flutter/material.dart';

import "./question.dart";
import "./answer.dart";

// main method to run teh app
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  // makes the current widget stateful
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// MyAppState is stateful
class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  // here is where we set the State for the index
  void _answerMyQuestion() {
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  @override
//  build method must be called
  Widget build(BuildContext context) {
    // list of objects
    var _myQuestionList = [
      {
        "questionText": "What is your name?",
        "answer": ["Larry", "Curly", "Moe"]
      },
      {
        "questionText": "What is your age?",
        "answer": [21, 22, 25]
      },
      {
        "questionText": "What is your favorite food?",
        "answer": ["pizza", "chicken", "chick-fil-a"]
      },
    ];

    // takes in "named" arguments
    // home -> core widget
    return MaterialApp(
        home: new Scaffold(
      appBar: AppBar(title: Text("My First App")),
      body: Column(
        children: <Widget>[
          // Custom Widgets
          // will display the current question from our map
          Question(
            _myQuestionList[_questionIndex]["questionText"],
          ),
          // pulls values out of list adds into one list instead of list of list
          ...(_myQuestionList[_questionIndex]["answer"] as List<String>)
              .map((answer) {
            return Answer(_answerMyQuestion, answer);
          }).toList()
        ],
      ),
    ));
  }
}
