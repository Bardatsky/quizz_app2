import 'package:flutter/material.dart';
import 'package:quizz_app2/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
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
          child: const StartScreen(),
        ),
      ),
    ),
  );
}
