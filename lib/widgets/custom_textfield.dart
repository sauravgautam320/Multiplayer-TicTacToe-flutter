import 'package:flutter/material.dart';
import 'package:tictactoe/utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool isReadOnly;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.isReadOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            color: purpColor,
            spreadRadius: 2,
          ),
        ],
      ),
      child: TextField(
        readOnly: isReadOnly,
        controller: controller,
        cursorColor: purpColor,
        decoration: InputDecoration(
          fillColor: bgColor,
          filled: true,
          hintText: hintText,
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: purpColor,
            ),
          ),
        ),
      ),
    );
  }
}
