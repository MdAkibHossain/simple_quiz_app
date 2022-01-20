import 'package:flutter/material.dart';
import '/answer.dart';
import '/question.dart';

class Quiz extends StatelessWidget {
  const Quiz(
      {Key? key,
      required this.questions,
      required this.questionIndex,
      required this.changeQuestion})
      : super(key: key);
  final List<Map<String?, Object?>> questions;
  final int questionIndex;
  final Function changeQuestion;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questionText: questions[questionIndex]['question'] as String,
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String?, Object?>>)
            .map(
          (answer) {
            return Answer(
              answerText: answer['text'] as String?,
              answerHandler: () => changeQuestion(answer['score'] as int),
            );
          },
        ).toList(),
      ],
    );
  }
}
