import "package:flutter/material.dart";

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String AnswerText;
  Answer(this.selectHandler, this.AnswerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color.fromARGB(205, 22, 7, 230),
      margin: EdgeInsets.all(10),
      child: RaisedButton(
        onPressed: selectHandler,
        child: Text(AnswerText,
        style: TextStyle(color: Color.fromARGB(255, 55, 13, 224),),),
        
      ),
    );
  }
}
