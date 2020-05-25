import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function questionFunction;
  final String answerText;

  Answer(this.questionFunction, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      // takes width of the container
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blueGrey,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: questionFunction,
      ),
    );
  }
}
