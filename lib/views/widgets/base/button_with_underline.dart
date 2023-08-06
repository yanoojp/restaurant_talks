import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../constants/variables.dart';

class ButtonWithUnderline extends StatelessWidget {
  const ButtonWithUnderline({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        final goRouter = GoRouter.of(context);
        goRouter.go(signupScreenPath);
      },
      child: const Text(
        toSignupScreenButton,
        style:
            TextStyle(decoration: TextDecoration.underline, color: whiteColor),
      ),
    );
  }
}
