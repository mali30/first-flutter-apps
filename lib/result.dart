import 'package:flutter/material.dart';

import './main.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  // getter

  String get resultPhrase {
    var resultText;
    if (resultScore < 8) {
      resultText = "You are awesome";
    } else if (resultScore > 50) {
      resultText = "Okay tough guy";
    } else {
      resultText = "You are a super hero";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: new TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(child: Text("Restart Quiz"), textColor: Colors.blue, textTheme: ButtonTextTheme.accent, onPressed: resetQuiz)
        ],
      ),
    );
  }
}
