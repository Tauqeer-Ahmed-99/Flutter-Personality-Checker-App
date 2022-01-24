import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int resultScore;
  VoidCallback restartHandler;

  Result(this.resultScore, this.restartHandler);

  String get resultPhrase {
    String resultText;

    if (resultScore < 15) {
      resultText = " You Are Awesome & Innocent.";
    } else if (resultScore <= 22) {
      resultText = " You Are Good & a little Strange.";
    } else if (resultScore <= 30) {
      resultText = "You are Strange!";
    } else {
      resultText = "You are bad!!!";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(50),
        child: Column(children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.all(50),
            child: ElevatedButton(
                onPressed: restartHandler, child: Text("Restart Quiz")),
          )
        ]));
  }
}
