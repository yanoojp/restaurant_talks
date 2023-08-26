import 'package:flutter/material.dart';
import 'package:restaurant_talks/utils/functions.dart';
import '../../../constants/variables.dart';

class ButtonWithUnderline extends StatelessWidget {
  final String text;
  final Widget screenName;
  final Color? color;
  final Function()? func;

  const ButtonWithUnderline(
      {super.key, required this.text, required this.screenName, this.func, this.color});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        func;
        screenNavigationFunction(context, screenName);
      },
      child: Text(
        text,
        style: TextStyle(
            decoration: TextDecoration.underline, color: color ?? whiteColor),
      ),
    );
  }
}
