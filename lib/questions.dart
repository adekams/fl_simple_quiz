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
  @override
  Widget build(context) {
    final currentQuestion = questionContent[0];

    // use sizwdBox width to take all available space
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(
            onBtnClick: () {},
            answerText: currentQuestion.answers[0],
          ),
          AnswerButton(
            onBtnClick: () {},
            answerText: currentQuestion.answers[1],
          ),
          AnswerButton(
            onBtnClick: () {},
            answerText: currentQuestion.answers[2],
          ),
          AnswerButton(
            onBtnClick: () {},
            answerText: currentQuestion.answers[3],
          ),
        ],
      ),
    );
  }
}
