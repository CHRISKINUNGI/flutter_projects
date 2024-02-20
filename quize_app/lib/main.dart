import 'package:flutter/material.dart';
import 'package:quize_app/views/start_screen.dart';

void main() {
  runApp(const QuizeApp());
}

class QuizeApp extends StatelessWidget {
  const QuizeApp({super.key});

  @override
  Widget build(BuildContext context) {
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
          child: const StartScreen(),
        ),
      ),
    );
  }
}
