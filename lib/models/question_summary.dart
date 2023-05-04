import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.dataSummary, {super.key});

  final List<Map<String, Object>> dataSummary;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: dataSummary.map(
        (data) {
          return Row(
            children: [
              Text(
                (data['question_number'] as int).toString(),
              ),
              Column(
                children: [
                  Text(data['question'] as String),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(data['choosen_answer'] as String),
                  Text(data['correct_answer'] as String),
                ],
              )
            ],
          );
        },
      ).toList(),
    );
  }
}
