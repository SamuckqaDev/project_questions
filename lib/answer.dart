import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final void Function() onClick;

  const Answer({super.key, required this.text, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue[800],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: onClick,
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.black, // Cor do texto
            ),
          ),
        ));
  }
}
