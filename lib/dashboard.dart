import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(132, 255, 253, 253),
        ),
        const SizedBox(
          height: 80,
        ),
        const Text(
          'Learn Flutter the Fun Way!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        OutlinedButton.icon(
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            // textStyle: const TextStyle(color: Colors.deepPurpleAccent),
          ),
          onPressed: () {
            startQuiz();
          },
          label: const Text(
            'Start Quiz',
          ),
          icon: const Icon(
            Icons.play_arrow_outlined,
          ),
        )
      ]),
    );
  }
}
