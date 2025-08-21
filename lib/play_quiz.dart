import 'package:flutter/material.dart';
import 'home.dart';
import 'question.dart';
import 'design.dart';
import 'question_model.dart';
import 'dart:math';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

class QuizScreen extends StatefulWidget {
  final List<QuizQuestion> questions; // Accepts a list of questions
  final bool hapticEnabled;
  final bool soundEnabled;
  const QuizScreen(
      {super.key,
      required this.questions,
      required this.hapticEnabled,
      required this.soundEnabled});
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  late List<QuizQuestion> remainingQuestions = List.from(widget.questions);
  QuizQuestion? currentQuestion;
  bool _isAnswerDisplayed = false;
  int score = 0;
  int timeLeft = 60; // 60-second timer
  Timer? timer;
  Random random = Random();

  @override
  void initState() {
    super.initState();
    getNextQuestion();
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (timeLeft > 0) {
        setState(() {
          timeLeft--;
        });
      } else {
        timer.cancel();
        endQuiz();
      }
    });
  }

  void getNextQuestion() {
    if (remainingQuestions.isEmpty) {
      endQuiz();
      return;
    }
    int index = random.nextInt(remainingQuestions.length);
    setState(() {
      currentQuestion = remainingQuestions.removeAt(index);
      _isAnswerDisplayed = false;
    });
  }

  void displayAnswer(String answer) {
    if (_isAnswerDisplayed) return;
    if (timeLeft == 0 || _isAnswerDisplayed) return;

    setState(() {
      _isAnswerDisplayed = true;

      if (currentQuestion!.answers[answer]!) {
        score++; // Increment score on correct answer
        if (widget.soundEnabled) {
          _audioPlayer.play(AssetSource("right.mp3")); // Play correct sound
        }
        if (widget.hapticEnabled) {
          HapticFeedback.lightImpact(); // Light vibration for correct answer
        }
      } else {
        if (widget.soundEnabled) {
          _audioPlayer.play(AssetSource("wrong.mp3")); // Play incorrect sound
        }
        if (widget.hapticEnabled) {
          HapticFeedback
              .heavyImpact(); // Stronger vibration for incorrect answer
        }
      }
    });

    // Wait 2 seconds before moving to the next question
    Timer(const Duration(seconds: 1), getNextQuestion);
  }

  void endQuiz() {
    timer?.cancel();
    setState(() {
      currentQuestion = null;
    });
  }

  Future<bool> _onWillPop() async {
    _pauseTimer();
    bool exit = await showDialog(
            context: context,
            //barrierDismissible: false,
            builder: (context) => Stack(children: [
                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 1.5, sigmaY: 1.5),
                    child: Container(
                        color: Colors.black.withOpacity(0.1)), // Dark overlay
                  ),
                  AlertDialog(
                    title: Text('Exit Quiz?'),
                    content: Text('Are you sure you want to exit the quiz?'),
                    actions: [
                      TextButton(
                        onPressed: () {
                          _resumeTimer(); // Resume timer if user cancels
                          Navigator.of(context).pop(false);
                        },
                        style: TextButton.styleFrom(
                          backgroundColor:
                              AppColors.darkTeal, // Background color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                8), // Optional: Rounded corners
                          ),
                        ),
                        child: Text(
                          'CANCEL',
                          style: TextStyle(
                              color: AppColors.offWhite), // Text color
                        ),
                      ),
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(true),
                        style: TextButton.styleFrom(
                          backgroundColor:
                              AppColors.offWhite, // Background color
                          side: BorderSide(
                              color: AppColors.darkTeal,
                              width: 2.0), // Border color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                8), // Optional: Rounded corners
                          ),
                        ),
                        child: Text(
                          'EXIT',
                          style: TextStyle(
                            color: AppColors.darkTeal,
                          ), // Text color
                        ),
                      ),
                    ],
                  ),
                ])) ??
        false;
    return exit;
  }

  void _pauseTimer() {
    if (timer != null && timer!.isActive) {
      timer!.cancel();
    }
  }

  void _resumeTimer() {
    if (timeLeft > 0) {
      startTimer();
    }
  }

  void _startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (timeLeft > 0) {
        setState(() => timeLeft--);
      } else {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: _onWillPop, // Calls _onWillPop when back button is pressed
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: AppColors.softBlue,
            //title: const Text("Quiz Game"),
            actions: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Score: $score",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          backgroundColor: AppColors.lightPurple,
          body: currentQuestion == null
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Quiz Completed! \nFinal Score: $score",
                        style: const TextStyle(fontSize: 24),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: 100,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(width: 10),
                          ElevatedButton(
                              child: Text("Home"),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const HomeScreen()));
                              }),
                          ElevatedButton(
                              child: Text("Play Again"),
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => QuizScreen(
                                      questions: widget.questions,
                                      hapticEnabled: widget.soundEnabled,
                                      soundEnabled: widget.hapticEnabled,
                                    ),
                                  ),
                                );
                              }),
                          SizedBox(
                            width: 10,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              : Padding(
                  padding:
                      const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Time Left: $timeLeft sec",
                        style: const TextStyle(fontSize: 20),
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(height: 100),
                      Text(
                        currentQuestion!.question,
                        style: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: Column(
                          children:
                              currentQuestion!.answers.entries.map((entry) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  shape: WidgetStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  backgroundColor: WidgetStateProperty.all(
                                    _isAnswerDisplayed
                                        ? entry.value
                                            ? const Color.fromARGB(
                                                255, 132, 233, 156)
                                            : const Color.fromARGB(
                                                255, 240, 128, 120)
                                        : AppColors.offWhite,
                                  ),
                                ),
                                onPressed: _isAnswerDisplayed
                                    ? null
                                    : () => displayAnswer(entry.key),
                                child: Text(entry.key),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
        ));
  }
}
