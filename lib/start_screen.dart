import 'package:flutter/material.dart';

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
        const Text(
          "Learn Flutter the fun way!",
          style: TextStyle(
            color: Color.fromARGB(255, 242, 233, 202),
            fontSize: 22,
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
