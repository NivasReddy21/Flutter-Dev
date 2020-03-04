import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'What is your favourite color?',
      'answers': [
        {'text': 'White', 'score': 10},
        {'text': 'Yellow', 'score': 20},
        {'text': 'Green', 'score': 30},
        {'text': 'Red', 'score': 40}
      ]
    },
    {
      'questionText': 'What is your favourite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Snake', 'score': 20},
        {'text': 'Lion', 'score': 30},
        {'text': 'Elephant', 'score': 40}
      ]
    }
  ];
  var questionIndex = 0;
  var totalScore = 0;

  void answerQuestion(int score) {
    totalScore += score;

    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
    if (questionIndex < questions.length) {
      print('There are more questions');
    }
  }

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'My First App',
            ),
          ),
          body: questionIndex < questions.length
              ? Quiz(
                  answerQuestion: answerQuestion,
                  questionIndex: questionIndex,
                  questions: questions,
                )
              : Result(totalScore, resetQuiz)),
    );
  }
}
