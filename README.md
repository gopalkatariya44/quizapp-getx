# quizapp

A new Flutter QuizApp.

## Getting Started

Beautiful project done with GetX

### Clone in your machin
```
git clone https://github.com/gopalkatariya44/quizapp-getx.git
```

### basics of GetxController
- this is the onpress button for the answer
```
  onPress(double score, String value) {
      favoirites.add(value);
      totalScore.value += score;
      questionIndex += 1;
    }
```

- this is reset quiz logic
```
  restartQuiz() {
    favoirites.clear();
    questionIndex.value = 0;
    totalScore.value = 0.0;
  }
```

- depend on answer chosen result in text
```
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
```

- this was the raw data
```
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
```


This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
