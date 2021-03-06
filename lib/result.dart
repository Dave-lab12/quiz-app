import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;
  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    var resultText = "You did it";
    if (resultScore <= 8) {
      resultText = "You are awesome and a brilliant developer";
    } else if (resultScore <= 12) {
      resultText = "Pretty Average";
    } else if (resultScore <= 18) {
      resultText = "You are ....Strange";
    } else {
      resultText = 'You will be a terrible Developer';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          TextButton(
            onPressed: resetQuiz,
            child: Text(
              'Restart Quiz',
            ),
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.blue)),
          )
        ],
      ),
    );
  }
}
