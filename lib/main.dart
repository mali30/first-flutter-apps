// Deleted everything and will write from scratch!
import 'package:flutter/material.dart';

import "./quiz.dart";
import "./result.dart";

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

  final _myQuestionList = const [
    {
      "questionText": "What is your name?",
      "answer": ["Larry", "Curly", "Moe"]
    },
    {
      "questionText": "What is your age?",
      "answer": ["21", "22", "25"]
    },
    {
      "questionText": "What is your favorite food?",
      "answer": ["pizza", "chicken", "chick-fil-a"]
    },
  ];

  // here is where we set the State for the index
  void _answerMyQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }
  
  @override
//  build method must be called
  Widget build(BuildContext context) {
    // list of objects

    // takes in "named" arguments
    // home -> core widget
    return MaterialApp(
      home: new Scaffold(
      appBar: AppBar(title: Text("My First App")),
      body: _questionIndex < _myQuestionList.length
          ? Quiz(
              answerQuestion: _answerMyQuestion,
              questionIndex: _questionIndex,
              questions: _myQuestionList)
          : Result() ,
    ));
  }
}
