import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

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
          color: const Color.fromARGB(133, 242, 233, 202),
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
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            foregroundColor: const Color.fromARGB(255, 242, 233, 202),
            
          ),
          child: const Text('Start quiz!', style: TextStyle(fontSize: 20),),
          
        ),
      ],
    ));
  }
}
