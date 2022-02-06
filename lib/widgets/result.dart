import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'answer.dart';

class Result extends StatelessWidget {
  Result({Key? key}) : super(key: key);
  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            homeController.resultText,
            style: const TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 30),
          const Text(
            "You choss",
            style: TextStyle(fontSize: 24),
          ),
          ...List.generate(homeController.favoirites.length,
              (index) => Text(homeController.favoirites[index])),
          const Divider(),
          const Text(
            "Score",
            style: TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 10),
          Text(
            homeController.totalScore.toString(),
            style: const TextStyle(fontSize: 30),
          ),
          const SizedBox(height: 30),
          Answer(
            onPressed: () => homeController.restartQuiz(),
            answerText: 'Reset Quiz',
          )
        ],
      ),
    );
  }
}
