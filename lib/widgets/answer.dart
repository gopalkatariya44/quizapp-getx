import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Answer extends StatelessWidget {
  final VoidCallback onPressed;
  final String answerText;
  Answer({required this.onPressed, required this.answerText, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 50,
        width: Get.width / 1.3,
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
            answerText,
            style: const TextStyle(fontSize: 18, letterSpacing: 2),
          ),
        ),
      ),
    );
  }
}
