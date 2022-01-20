import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  const Answer(
      {Key? key, required this.answerText, required this.answerHandler})
      : super(key: key);
  final String? answerText;
  final VoidCallback answerHandler;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            child: RaisedButton(
              padding: const EdgeInsets.all(10),
              color: Colors.blue,
              textColor: Colors.white,
              child: Text(answerText!),
              onPressed: answerHandler,
            ),
          )
        ],
      ),
    );
  }
}
