import 'package:get/get.dart';

class HomeController extends GetxController {
  List favoirites = [];
  RxInt questionIndex = 0.obs;
  RxDouble totalScore = 0.0.obs;
  onPress(double score, String value) {
    favoirites.add(value);
    totalScore.value += score;
    questionIndex += 1;
  }

  restartQuiz() {
    favoirites.clear();
    questionIndex.value = 0;
    totalScore.value = 0.0;
  }

  String get resultText {
    String text = "";
    if (totalScore <= 8) {
      text = "You are asome";
    } else if (totalScore <= 12) {
      text = "you cool";
    } else {
      text = "okh its good";
    }
    return text;
  }

  List questions = [
    {
      'questionText': 'What\'s your favourite colors ?',
      'answers': [
        {'text': 'black', 'score': 10.1},
        {'text': 'blue', 'score': 3},
        {'text': 'yellow', 'score': 4},
        {'text': 'red', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favourite Animal ?',
      'answers': [
        {'text': 'rabbit', 'score': 10},
        {'text': 'elephant', 'score': 3},
        {'text': 'dog', 'score': 4},
        {'text': 'cow', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favourite city ?',
      'answers': [
        {'text': 'surat', 'score': 10},
        {'text': 'ahemdabad', 'score': 3},
        {'text': 'indor', 'score': 4},
        {'text': 'narmada', 'score': 1},
      ],
    },
  ];
}
