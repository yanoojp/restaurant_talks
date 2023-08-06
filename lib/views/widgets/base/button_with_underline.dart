import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../constants/variables.dart';

class ButtonWithUnderline extends StatelessWidget {
  final String text;
  final String path;
  const ButtonWithUnderline(
      {super.key, required this.text, required this.path});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        final goRouter = GoRouter.of(context);
        goRouter.go(path);
      },
      child: Text(
        text,
        style: const TextStyle(
            decoration: TextDecoration.underline, color: whiteColor),
      ),
    );
  }
}
