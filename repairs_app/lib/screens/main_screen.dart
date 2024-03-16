import 'package:flutter/material.dart';
import 'package:repairs_app/theme/theme.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightModeTheme,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Repairs App',
            style: TextStyle(fontFamily: 'PlayfairDisplay'),
          ),
        ),
        body: const Center(
          child: Text('Welcome to Repairs App'),
        ),
      ),
    );
  }
}
