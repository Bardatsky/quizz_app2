import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});

final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
        child: Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(150, 242, 233, 202),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          "Learn Flutter the fun way!",
          style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 242, 233, 202),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
        ),
        const SizedBox(
          height: 30,
        ),
        //The button starts the quiz.
        OutlinedButton.icon(
          onPressed: startQuiz, //pointer to the function which starts the quiz.
          style: OutlinedButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 242, 233, 202),
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text(
            'Start quiz!',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    ));
  }
}
