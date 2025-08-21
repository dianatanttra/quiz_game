import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'flashcard_model.dart';
import 'flashcard_widget.dart';
import 'play_headsup.dart';
import 'design.dart';
import 'play_quiz.dart';
import 'question_model.dart';

class SubjectCard extends StatefulWidget {
  final String subjectName;
  final String imagePath;
  final List<QuizQuestion> subjectQuestions;
  final List<String> subjectWords;
  final List<Flashcard> subjectFlash;
  final bool soundEnabled;
  final bool hapticEnabled;

  const SubjectCard({
    super.key,
    required this.subjectName,
    required this.imagePath,
    required this.subjectQuestions,
    required this.subjectWords,
    required this.subjectFlash,
    required this.soundEnabled,
    required this.hapticEnabled,
  });

  @override
  State<SubjectCard> createState() => _SubjectCardState();
}

class _SubjectCardState extends State<SubjectCard> {
  bool _isLongPressed = false; // Tracks long press state

  void _showCustomDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => CustomDialog(
        title: widget.subjectName,
        content: "Choose an option below:",
        width: 400, // Customize width
        height: 500, // Customize height
        subjectQuestions: widget.subjectQuestions,
        subjectWords: widget.subjectWords,
        subjectFlash: widget.subjectFlash, subjectName: widget.subjectName,
        soundEnabled: widget.soundEnabled,
        hapticEnabled: widget.hapticEnabled,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        HapticFeedback.selectionClick;
        _showCustomDialog(context);
      },
      onLongPressStart: (_) {
        setState(() {
          _isLongPressed = true;
        });
      },
      onLongPressEnd: (_) {
        setState(() {
          _isLongPressed = false;
        });
      },
      child: AnimatedScale(
        scale: _isLongPressed ? 1.1 : 1.0, // Slightly increases size
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            width: screenWidth * 0.4,
            height: screenHeight * 0.25,
            child: Card(
              color: AppColors.lightGreen,
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity, // Full width
                    height: screenHeight * 0.25 / 1.6, // Responsive height
                    child: ClipRRect(
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(
                              12)), // Optional: Rounds top corners
                      child: Image.asset(
                        widget.imagePath,
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(widget.subjectName,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ))
                      ]),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Customizable Dialog with "Learn" & "Play" buttons
class CustomDialog extends StatelessWidget {
  final String title;
  final String content;
  final double width;
  final double height;
  final List<QuizQuestion> subjectQuestions; // Add this parameter
  final List<String> subjectWords;
  final List<Flashcard> subjectFlash;
  final String subjectName;
  final bool soundEnabled;
  final bool hapticEnabled;

  const CustomDialog({
    super.key,
    required this.title,
    required this.content,
    this.width = 400, // Default width
    this.height = 550, // Default height
    required this.subjectQuestions, // Required list of questions
    required this.subjectWords,
    required this.subjectFlash,
    required this.subjectName,
    required this.soundEnabled,
    required this.hapticEnabled,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: SizedBox(
        width: width,
        height: height,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(title,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 12),
              Text(content, textAlign: TextAlign.center),
              const SizedBox(
                height: 12,
              ),
              GestureDetector(
                onTap: () {
                  HapticFeedback.selectionClick();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => QuizScreen(
                                questions: subjectQuestions,
                                hapticEnabled: hapticEnabled,
                                soundEnabled: soundEnabled,
                              )));
                },
                child: SizedBox(
                  width: width * 0.9,
                  height: height * 0.25,
                  child: Card(
                      margin: EdgeInsets.all(6),
                      color: AppColors.softBlue,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Text("QUIZ",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                              "Think fast, answer quick! Test your knowledge and see how many you get right in under a minute.",
                              style: TextStyle(fontSize: 12),
                              softWrap: true,
                            )
                          ],
                        ),
                      )),
                ),
              ),
              GestureDetector(
                onTap: () {
                  HapticFeedback.selectionClick();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => FlashcardWidget(
                              flashcards: subjectFlash,
                              subjectName:
                                  subjectName))); //should take subject name from card param
                },
                child: SizedBox(
                  width: width * 0.9,
                  height: height * 0.25,
                  child: Card(
                      margin: EdgeInsets.all(6),
                      color: AppColors.softBlue,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Text(
                              "LEARN",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Scroll through bite-sized flashcards and reinforce your knowledge, one fact at a time.",
                              style: TextStyle(fontSize: 12),
                              softWrap: true,
                            )
                          ],
                        ),
                      )),
                ),
              ),
              GestureDetector(
                onTap: () {
                  HapticFeedback.selectionClick();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HeadsUpGame(
                                subjectWords: subjectWords,
                              )));
                },
                child: SizedBox(
                  width: width * 0.9,
                  height: height * 0.25,
                  child: Card(
                      margin: EdgeInsets.all(6),
                      color: AppColors.softBlue,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Text("HEADS UP",
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                              "Guess the word or concept before time runs out. Play with friends and test each other’s knowledge!",
                              style: TextStyle(fontSize: 12),
                              softWrap: true,
                            )
                          ],
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
