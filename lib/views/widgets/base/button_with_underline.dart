import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant_talks/utils/functions.dart';
import '../../../constants/variables.dart';

class ButtonWithUnderline extends StatelessWidget {
  final String text;
  final Widget screenName;
  const ButtonWithUnderline(
      {super.key, required this.text, required this.screenName});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        screenTransitionFunction(context, screenName);
      },
      child: Text(
        text,
        style: const TextStyle(
            decoration: TextDecoration.underline, color: whiteColor),
      ),
    );
  }
}
