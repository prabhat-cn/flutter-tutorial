import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const Answer({Key? key}) : super(key: key);
  final Function selectHandler;
  final Function answerText;

  const Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        // child: const Text('Answer 1'),
        child: Text(answerText()),
        onPressed: selectHandler(),
        // onPressed: null, // creates disabled button
      ),
    );
  }
}
