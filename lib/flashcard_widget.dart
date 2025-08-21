//flashcard_widget
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'flashcard_model.dart';
import 'design.dart';

class FlashcardWidget extends StatefulWidget {
  final List<Flashcard> flashcards;
  final String subjectName;

  const FlashcardWidget({
    Key? key,
    required this.flashcards,
    required this.subjectName,
  }) : super(key: key);

  @override
  _FlashcardWidgetState createState() => _FlashcardWidgetState();
}

class _FlashcardWidgetState extends State<FlashcardWidget> {
  late List<Flashcard> shuffledFlashcards;
  late List<Color> cardColors;
  final PageController _pageController = PageController();
  final List<Color> availableColors = [
    AppColors.softBlue,
    AppColors.lightPurple,
    AppColors.lightGreen,
    AppColors.lavender,
    AppColors.lightOrange,
    AppColors.pastelYellow,
    AppColors.peach,
    AppColors.pastelPink
  ];

  @override
  void initState() {
    super.initState();
    _shuffleFlashcards();
  }

  void _shuffleFlashcards() {
    shuffledFlashcards = List.from(widget.flashcards)..shuffle(Random());
    cardColors = List.generate(shuffledFlashcards.length, (index) {
      return availableColors[Random().nextInt(availableColors.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${widget.subjectName} Flashcards')),
      body: PageView.builder(
        controller: _pageController,
        scrollDirection: Axis.vertical,
        pageSnapping: true,
        allowImplicitScrolling: true,
        itemBuilder: (context, index) {
          // Get the correct index using modulo
          int currentIndex = index % shuffledFlashcards.length;

          // Reshuffle when reaching a multiple of the original length
          if (currentIndex == 0 && index != 0) {
            _shuffleFlashcards();
          }

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: FlipCard(
              front: FlashcardFront(
                flashcard: shuffledFlashcards[currentIndex],
                color: cardColors[currentIndex],
              ),
              back: FlashcardBack(
                flashcard: shuffledFlashcards[currentIndex],
                color: cardColors[currentIndex],
              ),
            ),
          );
        },
      ),
    );
  }
}

class FlashcardFront extends StatelessWidget {
  final Flashcard flashcard;
  final Color color;

  const FlashcardFront({
    Key? key,
    required this.flashcard,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Card(
        color: color, // Set randomized custom color
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Text(
              flashcard.topicName,
              style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(221, 59, 49, 34),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

class FlashcardBack extends StatelessWidget {
  final Flashcard flashcard;
  final Color color;

  const FlashcardBack({
    Key? key,
    required this.flashcard,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Card(
        color: color, // Set randomized custom color
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Text(
              flashcard.explanation,
              style: const TextStyle(
                fontSize: 22,
                fontStyle: FontStyle.italic,
                color: Colors.black54,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
