class Question {
  String questionText;
  String option1;
  String option2;
  String option3;
  String option4;
  int answer;

  Question({
    this.questionText,
    this.option1,
    this.option2,
    this.option3,
    this.option4,
    this.answer,
  });

  static List<Question> questionsList() {
    List<Question> questions = [];

    questions.add(Question(
      questionText: 'O que é Flutter?',
      option1: 'Um novo smartphone.',
      option2: 'Um sistema operacional.',
      option3: 'Um SDK de desenvolvimento multiplataforma.',
      option4: 'Uma linguagem de programação orientada a objetos.',
      answer: 3,
    ));

    questions.add(Question(
      questionText: 'Qual linguagem de programação é usada pelo Flutter?',
      option1: 'Dart',
      option2: 'Java',
      option3: 'JavaScript',
      option4: 'Go',
      answer: 1,
    ));

    return questions;
  }
}
