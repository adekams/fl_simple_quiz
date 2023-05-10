import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.dataSummary, {super.key});

  final List<Map<String, Object>> dataSummary;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: dataSummary.map(
            (data) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 40,
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          backgroundColor:
                              const Color.fromARGB(255, 211, 21, 211),
                          foregroundColor: Colors.white,
                        ),
                        child: Text(
                          (data['question_number'] as int).toString(),
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data['question'] as String,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 17),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            data['choosen_answer'] as String,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 211, 21, 211),
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            data['correct_answer'] as String,
                            style: const TextStyle(
                              color: Color.fromARGB(255, 38, 141, 225),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
