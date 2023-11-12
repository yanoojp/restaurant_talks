import 'package:flutter/material.dart';
import 'package:restaurant_talks/constants/variables.dart';

class ButtonWithUnderline extends StatelessWidget {
  final String text;
  final Color? color;
  final Function()? func;

  const ButtonWithUnderline(
      {super.key, required this.text, this.func, this.color});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: func,
      child: Text(
        text,
        style: TextStyle(
            decoration: TextDecoration.underline, color: color ?? whiteColor),
      ),
    );
  }
}
