// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:project_questions/answer.dart';

import 'question.dart';

void main(List<String> args) => runApp(QuestionApp());

class _QuestionAppState extends State<QuestionApp> {
  var _questionSelected = 0;

  void _toRespond() {
    setState(() => _questionSelected++);
    print('Answer responded!');
  }

  @override
  Widget build(BuildContext context) {
    //flutter most return values to objects;
    final questions = [
      {
        'text': 'What your favorite animal? ',
        'answer': ['Dog', 'cat', 'monkey', 'Rabbit']
      },
      {
        'text': 'What your favorite color? ',
        'answer': ['red', 'purple', 'pink', 'black']
      },
    ];

    List<Widget> answer = [];

    for (String textAnser
        in questions[_questionSelected]['answer'] as List<String>) {
      answer.add(Answer(
        text: textAnser,
        onClick: _toRespond,
      ));
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Home - Question'),
        ),
        body: Column(
          children: <Widget>[
            Question(text: questions[_questionSelected]['text'] as String),
            ...answer,
          ],
        ),
      ),
    );
  }
}

class QuestionApp extends StatefulWidget {
  //widget = view component;
  @override
  _QuestionAppState createState() => _QuestionAppState();
}
