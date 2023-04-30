import 'package:adv_basics/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/data/questions_content.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionScreen> {
  var currentQuestionIndx = 0;

  void answerQuestion() {
    setState(() {
      currentQuestionIndx++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questionContent[currentQuestionIndx];

    // use sizwdBox width to take all available space
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.shuffleAnswers().map((answer) {
              return AnswerButton(
                answerText: answer,
                onBtnClick: answerQuestion,
              );
            })
          ],
        ),
      ),
    );
  }
}
