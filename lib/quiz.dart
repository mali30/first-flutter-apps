import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz({@required this.answerQuestion, @required this.questions, @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Custom Widgets
        // will display the current question from our map
        Question(
          questions[questionIndex]["questionText"],
        ),
        // pulls values out of list adds into one list instead of list of list
        ...(questions[questionIndex]["answer"] as List<Map<String, Object>>).map((answer) {
          // creating function on the fly
          // executed when onPressed is triggered
          // address gets bounded to the button
          return Answer(() => answerQuestion(answer['score']), answer["text"]);
        }).toList()
      ],
    );
  }
}
