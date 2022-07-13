import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function reset;
  Result(this.score, this.reset);
  String get newResult {
    String ans;
    if (score == 1) {
      return "That Was Not Good You got 1 out of 3";
    } else if (score == 2) {
      return "Good But Need To Retry You got 2 out of 3";
    } else {
      return "Awesome! You got 3 out of 3";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            newResult,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: reset,
            child: Text("Restart Quiz!"),
            textColor: Colors.red,
          ),
        ],
      ),
    );
  }
}
