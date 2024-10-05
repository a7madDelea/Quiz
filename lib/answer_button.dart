import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurple[900],
        foregroundColor: Colors.white,
      ),
      onPressed: () {},
      child: const Text(
        'data',
        textAlign: TextAlign.center,
      ),
    );
  }
}
