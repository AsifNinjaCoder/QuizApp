import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerquestion;
  final int questionindex;
  Quiz(
      {@required this.questions,
      @required this.answerquestion,
      @required this.questionindex});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionindex]["questionText"] as String,
        ),
        ...(questions[questionindex]["answers"] as List<Map<String,Object>>).map((answer) {
          return Answer(() => answerquestion(answer['Score']), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
