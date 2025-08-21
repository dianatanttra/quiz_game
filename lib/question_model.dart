class QuizQuestion {
  final String question;
  final Map<String, bool>
      answers; // key: answer text, value: true/false for correctness

  QuizQuestion(this.question, this.answers);
}

//this is my user defined questions variable which has a string- question and a map of answers with their result. 
