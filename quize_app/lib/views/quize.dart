import 'package:flutter/material.dart';
import 'package:quize_app/views/questions_screen.dart';
import 'package:quize_app/views/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
final activeScreen = const StartScreen();
  Widget widgetScreen = const Questions();

  void switchScreen() {
    setState(
      () {
        widgetScreen = const Questions();
      },
    );
  }

  @override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget widgetScreen = StartScreen(switchScreen);
    if (widgetScreen == const StartScreen()) {
      widgetScreen = const Questions();
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 8, 5, 155),
                Color.fromARGB(255, 10, 87, 221),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: widgetScreen,
        ),
      ),
    );
  }
}
