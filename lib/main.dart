import 'package:flutter/material.dart';

import 'package:quizApp/quiz.dart';
import 'package:quizApp/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void _checkAnswer(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  var _questionIndex = 0;
  var _totalScore = 0;
  final _question = [
    {
      'questionText': 'How is your favorite Actor ?',
      'answerText': [
        {'text': 'Rajini', 'score': 4},
        {'text': 'Vijay', 'score': 3},
        {'text': 'Ajith', 'score': 2},
        {'text': 'Kamal', 'score': 1},
      ],
    },
    {
      'questionText': 'Do you like Coding?',
      'answerText': [
        {'text': 'Yes', 'score': 4},
        {'text': 'No', 'score': 3},
        {'text': 'both', 'score': 2},
      ],
    },
    {
      'questionText': 'Do you like pets?',
      'answerText': [
        {'text': 'Yes', 'score': 4},
        {'text': 'No', 'score': 3},
        {'text': 'both', 'score': 2},
      ],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _questionIndex < _question.length
            ? Quiz(_question, _questionIndex, _checkAnswer)
            : Result(_totalScore),
      ),
    );
  }
}
