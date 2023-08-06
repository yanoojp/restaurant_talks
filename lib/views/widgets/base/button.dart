import 'package:flutter/material.dart';
import '../../../constants/variables.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(backgroundColor: darkYellow),
      child: const Text(
        loginButton,
        style: TextStyle(color: blackColor),
      ),
    );
  }
}
