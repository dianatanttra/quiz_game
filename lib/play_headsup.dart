import 'dart:async';
import 'dart:math';
import 'dart:ui';
import 'package:QuizzIn/home.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:sensors_plus/sensors_plus.dart';
import 'package:flutter/services.dart';
import 'design.dart';

class HeadsUpGame extends StatefulWidget {
  final List<String> subjectWords;
  const HeadsUpGame({super.key, required this.subjectWords});

  @override
  _HeadsUpGameState createState() => _HeadsUpGameState();
}

class _HeadsUpGameState extends State<HeadsUpGame> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  List<String> usedWords = [];
  String currentWord = "";
  int score = 0;
  bool isPlaying = false;
  bool showCountdown = true;
  Timer? timer;
  Timer? countdownTimer;
  int timeLeft = 60;
  int countdown = 3;
  Color _backgroundColor = AppColors.mintGreen; // Default background color

  StreamSubscription? gyroscopeSubscription;

  @override
  void initState() {
    super.initState();
    //startGame();
    startCountdown();
  }

  void startCountdown() {
    setState(() {
      showCountdown = true;
      countdown = 3;
    });
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
    ]);

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    countdownTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (countdown > 1) {
          countdown--;
        } else {
          timer.cancel(); // Stop the countdown timer
          HapticFeedback.heavyImpact();
          showCountdown = false; // Hide countdown UI
          startGame(); // Start the actual game
        }
      });
    });
  }

  void startGame() {
    setState(() {
      isPlaying = true;
      score = 0;
      timeLeft = 60;
      usedWords.clear();
      nextWord();
    });

    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (timeLeft > 0) {
          timeLeft--;
        } else {
          endGame();
        }
      });
    });

    startGyroscopeListener();
  }

  void endGame() {
    setState(() {
      isPlaying = false;
      timer?.cancel();
      gyroscopeSubscription?.cancel();
      widget.subjectWords.addAll(usedWords);
    });
  }

  @override
  void dispose() {
    countdownTimer?.cancel(); // Cancel countdown timer to prevent leaks
    gyroscopeSubscription?.cancel();
    timer?.cancel();

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.dispose();
  }

  bool canDetectTilt = true;

  void startGyroscopeListener() {
    gyroscopeSubscription = gyroscopeEvents.listen((GyroscopeEvent event) {
      if (canDetectTilt) {
        if (event.y > 2.1) {
          markCorrect();
        } else if (event.y < -2.1) {
          passWord();
        }

        canDetectTilt = false;
        Future.delayed(Duration(milliseconds: 600), () {
          canDetectTilt = true;
        });
      }
    });
  }

  void nextWord() {
    if (widget.subjectWords.isEmpty) {
      return;
    }

    setState(() {
      currentWord = widget.subjectWords
          .removeAt(Random().nextInt(widget.subjectWords.length));
      usedWords.add(currentWord);

      if (usedWords.length > 5) {
        widget.subjectWords.add(usedWords.removeAt(0));
      }
    });
  }

  void markCorrect() {
    if (isPlaying && widget.subjectWords.isNotEmpty) {
      setState(() {
        score++;
        HapticFeedback.heavyImpact();
        _audioPlayer.play(AssetSource("right.mp3"));
        _backgroundColor = const Color.fromARGB(255, 171, 249, 170); // Green
      });

      Future.delayed(Duration(milliseconds: 400), () {
        if (mounted) {
          setState(() {
            _backgroundColor = AppColors.mintGreen;
          });
        }
      });

      Future.delayed(
          Duration(milliseconds: 600), nextWord); // Delay before switching
    }
  }

  void passWord() {
    if (isPlaying && widget.subjectWords.isNotEmpty) {
      setState(() {
        HapticFeedback.mediumImpact();
        _audioPlayer.play(AssetSource("click.mp3"));
        _backgroundColor = const Color.fromARGB(255, 158, 162, 237); // Blue
      });

      Future.delayed(Duration(milliseconds: 400), () {
        if (mounted) {
          setState(() {
            _backgroundColor = AppColors.mintGreen;
          });
        }
      });

      Future.delayed(
          Duration(milliseconds: 600), nextWord); // Delay before switching
    }
  }

  Widget _buildGameScreen() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Time Left: $timeLeft", style: TextStyle(fontSize: 24)),
        SizedBox(height: 20),
        Text(currentWord,
            style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold)),
        SizedBox(height: 20),
        Text("Tilt Down = Correct | Tilt Up = Pass",
            style: TextStyle(fontSize: 18)),
      ],
    );
  }

  Widget _buildGameOverScreen() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Times Up! Your Score: $score", style: TextStyle(fontSize: 24)),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(width: 10),
            ElevatedButton(
                child: Text(
                  "Home",
                  style: TextStyle(
                    color: AppColors.darkTeal,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                }),
            ElevatedButton(
                child: Text(
                  "Play Again",
                  style: TextStyle(
                    color: AppColors.darkTeal,
                  ),
                ),
                onPressed: () {
                  SystemChrome.setPreferredOrientations([
                    DeviceOrientation.landscapeLeft,
                  ]);

                  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HeadsUpGame(
                        subjectWords: widget.subjectWords,
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop, // Calls _onWillPop when back button is pressed
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () async {
              bool shouldExit = await _onWillPop();
              if (shouldExit) {
                Navigator.pop(context);
              }
            },
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Score: $score",
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        backgroundColor: _backgroundColor,
        body: Center(
          child: showCountdown
              ? Text(
                  "$countdown",
                  style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
                )
              : isPlaying
                  ? _buildGameScreen()
                  : _buildGameOverScreen(),
        ),
      ),
    );
  }

  Future<bool> _onWillPop() async {
    _pauseTimer(); // Pause the game timer

    bool exit = await showDialog(
            context: context,
            builder: (context) => Stack(children: [
                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 2.5, sigmaY: 2.5),
                    child: Container(
                        color: Colors.black.withOpacity(0.1)), // Dark overlay
                  ),
                  AlertDialog(
                    title: Text(
                      'Exit Game?',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    content: Text('Are you sure you want to exit the game?'),
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
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          'CANCEL',
                          style: TextStyle(
                              color: AppColors.offWhite), // Text color
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Reset to portrait mode before exiting
                          SystemChrome.setPreferredOrientations([
                            DeviceOrientation.portraitUp,
                            DeviceOrientation.portraitDown,
                          ]);
                          SystemChrome.setEnabledSystemUIMode(
                              SystemUiMode.edgeToEdge);

                          Navigator.of(context).pop(true);
                        },
                        style: TextButton.styleFrom(
                          backgroundColor:
                              AppColors.offWhite, // Background color
                          side:
                              BorderSide(color: AppColors.darkTeal, width: 2.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          'EXIT',
                          style: TextStyle(color: AppColors.darkTeal),
                        ),
                      ),
                    ],
                  ),
                ])) ??
        false;

    return exit;
  }

  int? pausedTimeLeft; // Store remaining time when paused

  void _pauseTimer() {
    if (timer != null && timer!.isActive) {
      pausedTimeLeft = timeLeft; // Store remaining time
      timer?.cancel();
    }
  }

  void _resumeTimer() {
    if (pausedTimeLeft != null && isPlaying) {
      timer = Timer.periodic(Duration(seconds: 1), (t) {
        setState(() {
          if (pausedTimeLeft! > 0) {
            pausedTimeLeft = pausedTimeLeft! - 1;
            timeLeft = pausedTimeLeft!;
          } else {
            t.cancel();
            endGame();
          }
        });
      });
    }
  }
}
