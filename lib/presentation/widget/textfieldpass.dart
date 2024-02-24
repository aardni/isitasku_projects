import 'package:flutter/material.dart';

class TextFieldPass extends StatefulWidget {
  const TextFieldPass({
    Key? key,
    required this.controller,
    required this.hintText,
  }) : super(key: key);

  final TextEditingController? controller;
  final String hintText;

  @override
  State<TextFieldPass> createState() => _TextFieldAuthPassState();
}

class _TextFieldAuthPassState extends State<TextFieldPass> {
  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: passwordVisible,
      decoration: InputDecoration(
        suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                passwordVisible = !passwordVisible;
              });
            },
            icon: Icon(
                passwordVisible ? Icons.visibility_off : Icons.visibility)),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        hintText: widget.hintText,
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
