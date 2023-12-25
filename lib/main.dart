import 'package:flutter/material.dart';

void main(List<String> args) => runApp(const QuestionApp());

class QuestionApp extends StatelessWidget {
  const QuestionApp({super.key});

  //widget = view component;

  @override
  Widget build(BuildContext context) {
    //flutter most return values ro objects;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Questions'),
        ),
        body: const Text('Hello Flutter'),
      ),
    );
  }
}
