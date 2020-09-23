import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final someQuestions = const [
    {
      'questionText': 'Which car is most faster?',
      'answers': [
        {'text': 'McLaren', 'score': 10},
        {'text': 'ZAZ', 'score': 1},
        {'text': 'BMW', 'score': 5},
      ],
    },
    {
      'questionText': 'What do you do in free time?',
      'answers': [
        {'text': 'Watch TV', 'score': 3},
        {'text': 'Cook', 'score': 7},
        {'text': 'sleep', 'score': 1},
        {'text': 'learn Dart', 'score': 10},
      ],
    },
    {
      'questionText': 'How are you?',
      'answers': [
        {'text': 'Pretty good', 'score': 10},
        {'text': 'bad', 'score': 1},
      ],
    },
  ];

  int _questionIndex = 0;
  int _totalScore = 0;
  void _answerQuestion(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    _totalScore += score;
    print(_totalScore);
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'QUIZ',
          ),
        ),
        body: _questionIndex < someQuestions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: someQuestions,
                questionIndex: _questionIndex,
              )
            : Result(
                resultScore: _totalScore,
                resetQuiz: _resetQuiz,
              ),
      ),
    );
  }
}
