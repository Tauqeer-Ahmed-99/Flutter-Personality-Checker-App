import 'package:flutter/material.dart';
import 'package:my_first_app/quiz.dart';
import 'package:my_first_app/result.dart';

import 'quiz.dart';

void main() => runApp(_MyApp());

class _MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<_MyApp> {
  final _questions = [
    {
      "question": "What's your favourite color?",
      "answers": [
        {"answerText": "Red", "points": 10},
        {"answerText": "Blue", "points": 5},
        {"answerText": "Black", "points": 4},
        {"answerText": "White", "points": 1}
      ]
    },
    {
      "question": "What's your favourite Animal?",
      "answers": [
        {"answerText": "Dog", "points": 10},
        {"answerText": "Cat", "points": 1},
        {"answerText": "Horse", "points": 2},
        {"answerText": "Elephant", "points": 5}
      ]
    },
    {
      "question": "What's your favourite game?",
      "answers": [
        {"answerText": "Cricket", "points": 8},
        {"answerText": "Golf", "points": 10},
        {"answerText": "Football", "points": 6},
        {"answerText": "Hockey", "points": 4}
      ]
    },
    {
      "question": "What's your favourite Place?",
      "answers": [
        {"answerText": "Beach", "points": 10},
        {"answerText": "Hill Station", "points": 8},
        {"answerText": "Grass Land", "points": 6},
        {"answerText": "River Side", "points": 1}
      ]
    }
  ];

  var _questionNumber = 0;
  var _result = 0;

  void pressHandler(int score) {
    setState(() {
      _questionNumber = _questionNumber + 1;
      _result = _result + score;
    });
  }

  void restartQuiz() {
    setState(() {
      _questionNumber = 0;
      _result = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Personality Checker App"),
        ),
        body: _questionNumber < _questions.length
            ? Quiz(_questions, _questionNumber, pressHandler)
            : Result(_result, restartQuiz),
      ),
    );
  }
}
