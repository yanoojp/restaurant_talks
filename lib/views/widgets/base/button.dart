import 'package:flutter/material.dart';
import 'package:restaurant_talks/constants/variables.dart';

class Button extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final Function() func;
  final double? width;
  final double? height;

  const Button({
    Key? key,
    required this.text,
    this.backgroundColor = darkYellow,
    this.textColor = blackColor,
    required this.func,
    this.width = 150,
    this.height = 40,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: func,
      style: ElevatedButton.styleFrom(backgroundColor: backgroundColor),
      child: Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
