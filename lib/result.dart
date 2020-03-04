import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final int maxScore;
  final Function restart;

  Result(this.score, this.maxScore, this.restart);

  String get resultPhrase {
    String resultPhrase;
    if (score <= maxScore / 2) {
      resultPhrase = 'Too bad! \n';
    } else if (score <= 3 * maxScore / 4) {
      resultPhrase = 'Good! \n';
    } else {
      resultPhrase = 'Excellent!!\n';
    }
    resultPhrase = resultPhrase +
        '\nYou have scored\n' +
        score.toString() +
        ' out of ' +
        maxScore.toString() +
        '.';
    return resultPhrase;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Text(
              resultPhrase,
              style: TextStyle(fontSize: 30),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.lightBlue,
              child: Text('Restart Quiz'),
              textColor: Colors.white,
              onPressed: restart,
            ),
          ),
        ],
      ),
    );
  }
}
