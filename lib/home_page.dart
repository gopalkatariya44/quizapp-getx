import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/home_controller.dart';
import 'widgets/quiz.dart';
import 'widgets/result.dart';

class HomePage extends StatelessWidget {
  final homeController = Get.put(HomeController());

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("data"),
      ),
      body: Center(
        child: Obx(
          () => homeController.questionIndex.value >=
                  homeController.questions.length
              ? Result()
              : Quiz(),
        ),
      ),
    );
  }
}
