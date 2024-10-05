class QuizQuestion {
  QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> get getShuffledAnswers {
    final List<String> shuffledAnswers = List.of(answers);
    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }
}
