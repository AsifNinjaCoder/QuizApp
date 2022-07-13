import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      margin:EdgeInsets.all(10),
      child: Text(
      questionText,
      style: TextStyle(
        color: Color.fromARGB(255, 4, 51, 182),
        fontSize: 20,
      ),
      textAlign: TextAlign.center,
    ),);
  }
}
