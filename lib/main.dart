import 'package:flutter/material.dart';
import 'home.dart';
import 'design.dart';
import 'dart:async';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins",
      ),
      //  home: QuizScreen(),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Use Scaffold for better structure
      backgroundColor: AppColors.offWhite,
      body: Center(
        child: Hero(
          tag: "logo", // Unique tag for animation
          flightShuttleBuilder:
              (flightContext, animation, direction, fromContext, toContext) {
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 1), // Start from bottom
                end: Offset.zero, // Move to original position
              ).animate(animation),
              child: Image.asset("assets/quizzin_logo.png"),
            );
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.87,
                child: Image.asset(
                  'assets/quizzin_logo.png',
                  fit: BoxFit.contain, // Keeps the aspect ratio
                ),
              ),
              Text(
                "The game for mindful Scrolling",

                //textAlign: TextAlign.end,
              ),
              SizedBox(
                height: 200,
              )
            ],
          ),
        ),
      ),
    );
  }
}
