import 'package:flutter/material.dart';

import 'answer_button.dart';
import 'data/questions.dart';
import 'models/quiz_question.dart';

class Question extends StatefulWidget {
  const Question(this.onSelectedAnswer, {super.key});

  final void Function(String) onSelectedAnswer;

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  int currentQuestion = 0;

  void answerQuestion(String answer) {
    widget.onSelectedAnswer(answer);
    setState(() {
      currentQuestion++;
    });
  }

  @override
  Widget build(BuildContext context) {
    QuizQuestion question = questions[currentQuestion];
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
                () => answerQuestion(e),
              ),
            )
          ],
        ),
      ),
    );
  }
}
