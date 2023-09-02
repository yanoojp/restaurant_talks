import 'package:flutter/material.dart';
import 'package:restaurant_talks/routes/app_routes.dart';
import 'package:restaurant_talks/utils/functions.dart';
import '../../../constants/variables.dart';

class ButtonWithUnderline extends StatelessWidget {
  final String text;
  final String screenPath;
  final Color? color;
  final Function()? func;

  const ButtonWithUnderline(
      {super.key,
      required this.text,
      this.func,
      this.color,
      required this.screenPath});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        func;
        goRouter.go(screenPath);
      },
      child: Text(
        text,
        style: TextStyle(
            decoration: TextDecoration.underline, color: color ?? whiteColor),
      ),
    );
  }
}
