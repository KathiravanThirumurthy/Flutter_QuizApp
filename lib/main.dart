import 'package:flutter/material.dart';

import 'package:quizApp/quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void _checkAnswer() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  var _questionIndex = 0;
  final _question = [
    {
      'questionText': 'How is your favorite Actor ?',
      'answerText': ['Rajini', 'Vijay', 'Ajith', 'Kamal'],
    },
    {
      'questionText': 'Do you like Coding?',
      'answerText': ['Yes', 'No', 'both'],
    },
    {
      'questionText': 'Do you like pets?',
      'answerText': ['Yes', 'No', 'both'],
    },
    {
      'questionText': 'What is your favorite color?',
      'answerText': ['Blue', 'Black', 'Green', 'Ornage', 'purple'],
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
            : Center(
                child: Text('you did it'),
              ),
      ),
    );
  }
}
