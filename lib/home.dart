import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'flashcards.dart';
import 'design.dart';
import 'question.dart';
import 'subject_template.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool hapticEnabled = true;
  bool soundEnabled = true;
  //bool musicEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Hero(
          tag: "logo", // Same tag as in SplashScreen
          child: Image.asset("assets/quizzin_logo.png",
              height: 150, fit: BoxFit.contain),
        ),
        centerTitle: true,
        toolbarHeight: 100,
      ),
      backgroundColor: AppColors.offWhite,
      body: ListView(scrollDirection: Axis.vertical, children: [
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SubjectCard(
            subjectName: "Data Structures",
            imagePath: "assets/ds.png",
            subjectQuestions: dsQuestions,
            subjectWords: dsWords,
            subjectFlash: dsFlashcards,
            soundEnabled: soundEnabled,
            hapticEnabled: hapticEnabled,
          ),
          SubjectCard(
            subjectName: "Mobile App Dev",
            imagePath: "assets/moad_logo.png",
            subjectQuestions: moadQuestions,
            subjectWords: moadWords,
            subjectFlash: moadFlashcards,
            soundEnabled: soundEnabled,
            hapticEnabled: hapticEnabled,
          ),
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SubjectCard(
            subjectName: "Discrete Math",
            imagePath: "assets/dm.png",
            subjectQuestions: dmQuestions,
            subjectWords: dmWords,
            subjectFlash: dmFlashcards,
            soundEnabled: soundEnabled,
            hapticEnabled: hapticEnabled,
          ),
          SubjectCard(
            subjectName: "Mass Media",
            imagePath: "assets/bmm.png",
            subjectQuestions: bmmQuestions,
            subjectWords: bmmWords,
            subjectFlash: bmmFlashcards,
            soundEnabled: soundEnabled,
            hapticEnabled: hapticEnabled,
          ),
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SubjectCard(
            subjectName: "Management Studies",
            imagePath: "assets/bms_logo.png",
            subjectQuestions: bmsQuestions,
            subjectWords: bmsWords,
            subjectFlash: bmsFlashcards,
            soundEnabled: soundEnabled,
            hapticEnabled: hapticEnabled,
          ),
          SubjectCard(
            subjectName: "Accounting & Finance",
            imagePath: "assets/baf_logo.png",
            subjectQuestions: bafQuestions,
            subjectWords: bafWords,
            subjectFlash: bafFlashcards,
            soundEnabled: soundEnabled,
            hapticEnabled: hapticEnabled,
          ),
        ]),
      ]),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: AppColors.darkTeal,
              ),
              child: SizedBox(),
              curve: Curves.fastOutSlowIn,
              //child: TextField(),
            ),
            ListTile(
              leading: const Icon(Icons.vibration),
              title: const Text(' Vibration '),
              contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
              //onTap: () { Navigator.pop(context);},
              trailing: Switch(
                value: hapticEnabled,
                onChanged: (value) {
                  setState(() {
                    hapticEnabled = value;
                  });
                  if (hapticEnabled) {
                    HapticFeedback.lightImpact();
                  }
                },
              ),
            ),
            ListTile(
              leading: const Icon(Icons.volume_up),
              title: const Text('Sound Effects'),
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
              //onTap: () {Navigator.pop(context);},
              trailing: Switch(
                  value: soundEnabled,
                  onChanged: (value) {
                    setState(() {
                      soundEnabled = value;
                    });
                    if (hapticEnabled) {
                      HapticFeedback.lightImpact();
                    }
                  }),
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text("About Us"),
              contentPadding: EdgeInsets.symmetric(horizontal: 16),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InfoAbout()));
              },
            )
          ],
        ),
      ), // Drawer
    );
  }
}

class InfoAbout extends StatelessWidget {
  const InfoAbout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('About Us'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              //mainAxisSize: MainAxisSize.min, // Prevents Column from taking full height
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Left-aligns children
              children: [
                Center(
                    child: Image.asset(
                  "assets/quizzin_logo.png",
                  height: 150,
                )),
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Text(
                      "Quizzin is built by students, for students! Our app provides an interactive way to study IT subjects through flashcards, quizzes, and a fun multiplayer game. We believe learning should be both effective and enjoyable— so dive in and challenge yourself!",
                      textAlign: TextAlign.justify,
                    )),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "The Team: \nAaliya Desousa, \nDiana Tanttra, \nShakti Singh, \nAlika Dabre"),
                SizedBox(
                  height: 20,
                ),
                Text("Version: 1.0"),
                SizedBox(
                  height: 20,
                ),
                Text("Contact us: quizzinteam@gmail.com")
              ],
            ),
          ),
        ));
  }
}
