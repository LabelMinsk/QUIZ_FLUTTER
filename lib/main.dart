import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var someQuestions = [
      'What\`s your name?',
      'What do you do?',
      'How are you?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('QUIZ'),
        ),
        body: Column(
          children: [
            QuestionText(someQuestions[_questionIndex]),
            RaisedButton(
                child: Text('Answer 1'),
                onPressed: _answerQuestion),
            RaisedButton(
                child: Text('Answer2'),
                onPressed: _answerQuestion),
          ],
        ),
      ),
    );
  }
}
