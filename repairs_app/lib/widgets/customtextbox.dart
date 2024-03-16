import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String labelText;
  final String hintText;
  final IconData? icon;
  final bool obscureText;
  final TextEditingController controller;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;

  const CustomInput({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.controller,
    this.icon,
    this.obscureText = false,
    this.onChanged,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      validator: validator,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        icon: Icon(icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
