import 'package:flutter/material.dart';
import '../../../constants/variables.dart';

class Button extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;

  const Button({
    Key? key,
    required this.text,
    this.backgroundColor = darkYellow,
    this.textColor = blackColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(backgroundColor: backgroundColor),
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
    );
  }
}
