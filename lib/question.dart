import 'package:flutter/material.dart';

import 'answer_button.dart';
import 'data/questions.dart';
import 'models/quiz_question.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  QuizQuestion question = questions[0];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              question.text,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 20),
            ...question.getShuffledAnswers.map(
              (e) => AnswerButton(
                e,
                () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
