// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

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
    //flutter most return values ro objects;
    final List<String> questions = [
      'What your favorite color?',
      'What is your favorite food?',
      'What is your favorite movie?',
      'What is your favorite book?',
      'What is your favorite sport?',
      'What is your favorite Animal',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Questions'),
        ),
        body: Column(
          children: [
            Question(text: questions.elementAt(_questionSelected)),
            ElevatedButton(
                onPressed: () => _toRespond(), child: Text('Answer 1')),
            ElevatedButton(
                onPressed: () => _toRespond(), child: Text('Answer 2')),
            ElevatedButton(
                onPressed: () => _toRespond(), child: Text('Answer 3'))
          ],
        ),
      ),
    );
  }
}

class QuestionApp extends StatefulWidget {
  //widget = view component;
  @override
  _QuestionAppState createState() {
    return _QuestionAppState();
  }
}
