import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

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
      child: Text(resultPhrase,
          style: new TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold) , textAlign: TextAlign.center,),
    );
  }
}
