// lib/models/flashcard_model.dart

class Flashcard {
  final String topicName; // Topic name (front of the card)
  final String explanation; // Explanation/context (back of the card)

  Flashcard({required this.topicName, required this.explanation});
}
