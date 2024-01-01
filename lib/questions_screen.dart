import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column( 
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        const Text('question...', style: TextStyle(color: Colors.white),),
        const SizedBox(height: 30,),
        ElevatedButton(onPressed: () {}, child: const Text('answer 1')),
        const SizedBox(height: 10,),
        ElevatedButton(onPressed: () {}, child: const Text('answer 2')),
        const SizedBox(height: 10,),
        ElevatedButton(onPressed: () {}, child: const Text('answer 3')),
        const SizedBox(height: 10,),
        ElevatedButton(onPressed: () {}, child: const Text('answer 4')),
        
      ],
      
      ),
    );
    
  }
}