import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answertext;
  final void Function() onpressed;
  const AnswerButton({
    super.key,
    required this.answertext,
    required this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: const Text('Answer 3'),
    );
  }
}
