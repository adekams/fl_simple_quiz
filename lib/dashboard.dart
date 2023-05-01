import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        Text(
          'Learn Flutter the Fun Way!',
          style: GoogleFonts.roboto(
            color: const Color.fromARGB(255, 190, 124, 235),
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
