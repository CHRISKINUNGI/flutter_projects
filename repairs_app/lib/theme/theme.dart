import 'package:flutter/material.dart';

ThemeData lightModeTheme = ThemeData(
  fontFamily: 'playfair',
  primaryColor: const Color.fromARGB(255, 6, 104, 184),
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.blue,
    errorColor: Colors.red,
    backgroundColor: Colors.white,
  ),
  scaffoldBackgroundColor: Colors.blueGrey,
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: const TextStyle(
      color: Colors.black,
      fontSize: 20,
    ),
    hintStyle: const TextStyle(
      color: Colors.black,
      fontSize: 20,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  ),
);
