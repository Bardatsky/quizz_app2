import 'package:flutter/material.dart';
import 'package:quizz_app2/answer_button.dart';
import 'package:quizz_app2/data/questions.dart';


class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {

    var currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          //generate the list of buttons with number of "answer" items.
          ...currentQuestion.answers.map((answer){
            return AnswerButton(answerText: answer, onTap: (){});
          }),
        ],
      ),
    );
  }
}
