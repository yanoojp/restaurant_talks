import 'package:flutter/material.dart';

void screenTransitionFunction(context, screenName) {
  Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => screenName,
        transitionDuration: const Duration(seconds: 0),
      ),
    );
}