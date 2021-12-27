import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => {runApp(MyApp())};

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return MyAppState();
  }
}

// if u make a private use "_" previous of the class or function

// class MyAppState extends StatelessWidget {
class MyAppState extends State<MyApp> {
  // int questionIndex = 0;
  var _questionIndex = 0;
  void _answerQuestion() {
    // annonymous function
    // used to rerendered user interface
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // questionIndex = questionIndex + 1;
    print(_questionIndex);
    // print('Answer 1 Chosen!');
  }

  // annotation decorator
  @override
  Widget build(BuildContext context) {
    // return const MaterialApp(
    //   home: Text('Hello!'),
    // );
    const questions = [
      // mapping
      {
        'questionText': "What's your favorite color?",
        'answers': [
          'Black',
          'Red',
          'Green',
          'White',
        ]
      },
      {
        'questionText': "What's your favorite animal?",
        'answers': [
          'Rabbit',
          'Snake',
          'Elephant',
          'Lion',
        ]
      },
      {
        'questionText': "What's your favorite instructor?",
        'answers': [
          'Max',
          'Andrew',
          'Symons',
          'Kiyara',
        ]
      },
    ];
    // var dummy = const ['Hello!'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = [];
    return MaterialApp(
      // Basic page sign and color
      home: Scaffold(
          appBar: AppBar(
            // Text is the widget
            title: const Text('My First App'),
          ),
          body: Column(
            // children: const <Widget>[],
            // children: const [

            children: [
              // const Text('The question!'),
              // 'questions' is string of array
              // Text(
              //   // questions.elementAt(1),
              //   // questions[0],
              //   questions[questionIndex],
              // ),
              Question(
                // questions.elementAt(1),
                // questions[0],
                (questions[_questionIndex]['questionText'],
              ),
              // ElevatedButton(onPressed: onPressed, child: child)
              // deprecated settings off
              // RaisedButton(
              //   child: const Text('Answer 1'),
              //   // onPressed: null,
              //   // answerQuestion() is void
              //   onPressed: answerQuestion,
              // ),
              // Answer(_answerQuestion),
              // Answer(_answerQuestion),
              // Answer(_answerQuestion),
              ...(questions[_questionIndex]['answers'] as List<String>)
                  .map((answer) =>  {
                return Answer(_answerQuestion, answer);
              }).toList()
              // RaisedButton(
              //   child: const Text('Answer 2'),
              //   onPressed: () => print('Answer 2 Chosen!'),
              // ),
              // RaisedButton(
              //   child: const Text('Answer 3'),
              //   onPressed: () {
              //     print('Answer 3 Chosen!');
              //   },
              // ), 35
            ],
          )),
    );
  }
}
