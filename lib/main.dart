import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(Dave());

class Dave extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DaveState();
  }
}

class _DaveState extends State<Dave> {
  var _counter = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _counter = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _counter++;
    });
    print(_counter);
  }

  static const _questions = [
    {
      'questionText': "What's your Favorite Programming language?",
      'answers': [
        {'text': 'PHP', 'score': 10},
        {'text': 'solitary', 'score': 5},
        {'text': 'Python', 'score': 3},
        {'text': 'Javascript', 'score': 1}
      ]
    },
    {
      'questionText': "What type of developer you want to be?",
      'answers': [
        {'text': 'Frontend ', 'score': 3},
        {'text': 'Backend', 'score': 5},
        {'text': 'Maching Learning', 'score': 9},
        {'text': 'Other', 'score': 11}
      ]
    },
    {
      'questionText': "Who your Favorite Teacher?",
      'answers': [
        {'text': 'Dave', 'score': 1},
        {'text': 'Markos', 'score': 2},
        {'text': 'Aman', 'score': 5},
        {'text': 'leykun', 'score': 4},
        {'text': 'esubalw', 'score': 3}
      ]
    },
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('My First app'),
            ),
            body: _counter < _questions.length
                ? Quiz(
                    answerQuestion: _answerQuestion,
                    questionIndex: _counter,
                    questions: _questions,
                  )
                : Result(_totalScore, _resetQuiz)));
  }
}
