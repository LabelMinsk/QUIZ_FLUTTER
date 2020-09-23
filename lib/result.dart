import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result({@required this.resultScore, @required this.resetQuiz});

  String get resultPhrase {
    String resultText;
    if (resultScore <= 10) {
      resultText = 'You are strange?!';
    } else if (resultScore <= 20) {
      resultText = 'You are likeable?!';
    } else if (resultScore >= 21) {
      resultText = 'You are awesome and innocent?!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetQuiz, 
            child: Text('Reset Quiz!'),
            textColor: Colors.blue,)
        ],
      ),
    );
  }
}
