import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key? key, required this.totalScore, required this.resetQuiz})
      : super(key: key);
  final int totalScore;
  final Function()? resetQuiz;

  String get getResultText {
    String resultText;
    if (totalScore <= 8) {
      return resultText = 'You are so good!';
    } else if (totalScore <= 12) {
      return resultText = 'You are good!';
    } else if (totalScore <= 16) {
      return resultText = 'You good!';
    } else {
      return resultText = 'good!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          getResultText,
          style: const TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          onPressed: resetQuiz,
          child: const Text('Reset'),
          textColor: Colors.blue,
        )
      ],
    ));
  }
}
