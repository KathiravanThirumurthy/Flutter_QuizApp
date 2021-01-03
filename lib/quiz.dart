import 'package:flutter/material.dart';
import 'package:quizApp/Question.dart';
import 'package:quizApp/answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function checkAnswer;
  Quiz(this.question, this.questionIndex, this.checkAnswer);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question[questionIndex]['questionText']),
        ...(question[questionIndex]['answerText'] as List<String>)
            .map((answer) {
          return Answer(answer, checkAnswer);
        }).toList(),
      ],
    );
  }
}
