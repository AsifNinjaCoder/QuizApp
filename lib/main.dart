import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/result.dart';
import './answer.dart';
import './quiz.dart';
import './question.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State {
  var _questions = [
    {
      "questionText":
          "Grand Central Terminal, Park Avenue, New York is the world's",
      'answers': [
        {'text': 'largest railway station', 'Score': 1},
        {'text': 'highest railway station', 'Score': 0},
        {'text': 'longest railway station', 'Score': 0},
        {'text': 'None of the above', 'Score': 0}
      ],
    },
    {
      "questionText":
          "Each year World Red Cross and Red Crescent Day is celebrated on",
      'answers': [
        {'text': 'May 8', 'Score': 1},
        {'text': 'May 18', 'Score': 0},
        {'text': 'June 8', 'Score': 0},
        {'text': 'June 18', 'Score': 0}
      ],
    },
    {
      "questionText": "Guru Gobind Singh was",
      'answers': [
        {'text': 'the 10th Guru of the Sikhs', 'Score': 0},
        {
          'text': 'founder of Khalsa, the inner council of the Sikhs in 1699',
          'Score': 0
        },
        {'text': 'author of Dasam Granth', 'Score': 0},
        {'text': 'All the above', 'Score': 1}
      ],
    },
  ];
  var _questionindex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionindex = 0;
      _totalScore = 0;
    });
  }

  void _answerquestion(int score) {
    _totalScore += score;
    setState(() {
      _questionindex++;
    });
    print("this is your answer!");
    if (_questionindex < _questions.length) {
      print("We Have More Question");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz APP'),
        ),
        body: _questionindex < _questions.length
            ? Quiz(
                questions: _questions,
                answerquestion: _answerquestion,
                questionindex: _questionindex)
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
