import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color textcolor;
  final FontWeight weight;

  const CustomText(
      {super.key,
      required this.text,
      required this.textcolor,
      required this.weight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textcolor,
        fontWeight: weight,
      ),
    );
  }
}
