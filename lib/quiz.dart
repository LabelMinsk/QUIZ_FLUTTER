import 'package:flutter/material.dart';

import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {

  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(
    {@required this.questions,
    @required this.questionIndex,
    @required this.answerQuestion}
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        QuestionText(questions[questionIndex]['questionText']), //questions
        ...(questions[questionIndex]['answers'] as List<Map<String,Object>>) //dynamic answers...and add to spread in tree answer
            .map((answer) {
          return Answer(()=>answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
