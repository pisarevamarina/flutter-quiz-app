import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  var questionsIndex = 0;

  void choseAnswer() {
    questionsIndex++;
  }

  @override
  Widget build(BuildContext context) {

    var questionsList = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
      'What\'s your favourite job?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Column(
          children: [
            Text(
              questionsList[questionsIndex],
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: choseAnswer,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: choseAnswer,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: choseAnswer,
            ),
          ],
        ),
      ),
    );
  }
}
