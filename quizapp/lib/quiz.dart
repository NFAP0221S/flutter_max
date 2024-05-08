import 'package:flutter/material.dart';
import 'package:quizapp/questions_screen.dart';
import 'package:quizapp/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // 타입을 Widget으로 두면, 모든 위젯 타입 할당가능
  // Widget? activeScreen;
  var activeScreen = 'start-screen';

  // @override
  // void initState() {
  // activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(() {
      // activeScreen = const QuestionScreen();
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    // 절대적으로 바뀌지 않을 때, final
    // final screenWidget = activeScreen == 'start-screen'
    //           ? StartScreen(switchScreen)
    //           : const QuestionScreen();
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = const QuestionScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 46, 166, 142),
                Color.fromARGB(255, 101, 209, 187),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          // child: activeScreen,
          // child: activeScreen == 'start-screen'
          //     ? StartScreen(switchScreen)
          //     : const QuestionScreen(),
          child: screenWidget,
        ),
      ),
    );
  }
}
