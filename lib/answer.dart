import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function handler;
  Answer(this.answerText, this.handler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        onPressed: () {
          handler();
        },
        child: Text(answerText),
        color: Colors.blue,
        textColor: Colors.white,
      ),
    );
  }
}
