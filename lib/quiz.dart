import 'package:flutter/material.dart';
import 'package:adv_basics/dashboard.dart';
import 'package:adv_basics/questions.dart';
import 'package:adv_basics/data/questions_content.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var currentScreen = 'dashboard';

  void changeScreen() {
    setState(() {
      currentScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questionContent.length) {
      setState(() {
        currentScreen = 'dashboard';
        selectedAnswers = [];
      });
    }
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(132, 70, 240, 1),
                Color.fromRGBO(45, 39, 63, 1)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: currentScreen == 'dashboard'
              ? Dashboard(changeScreen)
              : QuestionScreen(
                  onSelectAnswer: chooseAnswer,
                ),
        ),
      ),
    );
  }
}
