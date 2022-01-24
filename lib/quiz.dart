import 'package:flutter/material.dart';

import 'questions.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final _questions;
  final int _questionNumber;
  final Function pressHandler;

  Quiz(this._questions, this._questionNumber, this.pressHandler);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(_questions[_questionNumber]["question"] as String),
        ...(_questions[_questionNumber]["answers"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              () => pressHandler(answer["points"]), answer["answerText"]);
        }),
      ],
    );
  }
}
