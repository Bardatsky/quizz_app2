import 'package:flutter/material.dart';
import 'package:quizz_app2/questions_screen.dart';
import 'package:quizz_app2/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  Widget activeScreen = const StartScreen(); // the variable contains active screen that user see.

  void switchScreen() {
    setState(() {
      activeScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: RadialGradient(
              colors: [
                Color.fromARGB(255, 105, 170, 144),
                Color.fromARGB(255, 1, 34, 20),
              ],
              radius: 0.9,
              center: Alignment.center,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}