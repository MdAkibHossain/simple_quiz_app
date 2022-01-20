import 'package:flutter/material.dart';
import 'package:simple_quiz_app/quiz.dart';
import 'package:simple_quiz_app/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'question': 'What\'s your girlfriend name?',
      'answers': [
        {'text': 'Tina', 'score': 10},
        {'text': 'Mina', 'score': 5},
        {'text': 'Rina', 'score': 3},
        {'text': 'Tuna', 'score': 1},
      ],
    },
    {
      'question': 'What\'s your girlfriend father name?',
      'answers': [
        {'text': 'Korim', 'score': 3},
        {'text': 'Rohim', 'score': 11},
        {'text': 'Moksed', 'score': 5},
        {'text': 'Abul', 'score': 9},
      ],
    },
    {
      'question': 'What\'s your girlfriend brother name?',
      'answers': [
        {'text': 'Monti', 'score': 1},
        {'text': 'Pinti', 'score': 1},
        {'text': 'Punti', 'score': 1},
        {'text': 'Manti', 'score': 1},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _changeQuestion(int score) {
    _totalScore = _totalScore + score;
    setState(
      () {
        _questionIndex = _questionIndex + 1;
      },
    );
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
          title: const Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                changeQuestion: _changeQuestion)
            : Result(totalScore: _totalScore, resetQuiz: _resetQuiz),
      ),
    );
  }
}
