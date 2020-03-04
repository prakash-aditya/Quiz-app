import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function buttonPressed;
  final String ansText;
  final String correctAnswer;

  Answer(this.buttonPressed, this.ansText, this.correctAnswer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: RaisedButton(
        child: Text(ansText),
        color: Colors.purple,
        textColor: Colors.white,
        onPressed: () => buttonPressed(ansText, correctAnswer),
      ),
    );
  }
}
