import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  Quiz({Key? key}) : super(key: key);
  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          homeController.questions[homeController.questionIndex.value]
              ['questionText'],
          style: const TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        ...(homeController.questions[homeController.questionIndex.value]
                ['answers'] as List<Map<String, dynamic>>)
            .map(
              (value) => Answer(
                onPressed: () => homeController
                    .onPress(double.parse(value['score'].toString())),
                answerText: value['text'],
              ),
            )
            .toList(),
      ],
    );
  }
}
