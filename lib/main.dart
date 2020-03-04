import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var index = 0;

  var score = 0;

  var questions = [
    {
      'question': 'What is the capital of India?',
      'answers': ['Mumbai', 'New Delhi', 'Kolkata', 'Chennai'],
      'correct': 'New Delhi',
    },
    {
      'question': 'What is the currency of India?',
      'answers': ['Dindfar', 'Lira', 'Rupee', 'Dollar'],
      'correct' : 'Rupee',
    },
    {
      'question': 'Which app are you using right now?',
      'answers': ['Facebook', 'Whatsapp', 'Not using phone', 'MyApp'],
      'correct': 'MyApp',
    },
    {
      'question': 'What is the capital of Bihar?',
      'answers': ['Patna', 'Darbhanga', 'Muzaffarpur', 'Ara'],
      'correct': 'Patna',
    },
  ];

  void buttonPressed(answerText, correctAnswer) {
    setState(() {
      index++;
      if(answerText == correctAnswer){
        score++;
      }
    });
  }

  void restart() {
    setState(() {
     index = 0;
     score = 0; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyApp'),
        ),
        body: index < questions.length
            ? Quiz(
                buttonPressed: buttonPressed,
                index: index,
                questions: questions)
            : Result(score, questions.length, restart),
      ),
    );
  }
}
