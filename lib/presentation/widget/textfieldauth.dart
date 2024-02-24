import 'package:flutter/material.dart';

class TextFieldAuth extends StatelessWidget {
  const TextFieldAuth({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.textInputType,
  }) : super(key: key);

  final TextEditingController? controller;
  final String hintText;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: textInputType,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xFF7a7a7a),
          fontSize: 12,
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w500,
        ),
        filled: true,
        fillColor: const Color(0xff161819),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(
            color: Color(0xFF7a7a7a),
          ),
        ),
      ),
    );
  }
}
