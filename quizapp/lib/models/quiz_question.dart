class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnsswers() {
    // List.of는 list의 원본을 복사함
    // shuffle은 list의 원소의 순서를 랜덤하게 변경
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}