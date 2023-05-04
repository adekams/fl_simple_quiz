import 'package:flutter/material.dart';
import 'package:adv_basics/models/question_summary.dart';
import 'package:adv_basics/data/questions_content.dart';

class Result extends StatelessWidget {
  const Result({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add(
        {
          'question_number': i + 1,
          'question': questionContent[i].text,
          'correct_answer': questionContent[i].answers[0],
          'choosen_answer': chosenAnswers[i],
        },
      );
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(
          40,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You answered x questions correctly'),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(
              getSummaryData(),
            ),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                // textStyle: const TextStyle(color: Colors.deepPurpleAccent),
              ),
              onPressed: () {},
              label: const Text(
                'Restart Quiz',
              ),
              icon: const Icon(
                Icons.refresh_outlined,
              ),
            )
          ],
        ),
      ),
    );
  }
}
