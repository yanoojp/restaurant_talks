import 'package:flutter/material.dart';
import 'package:restaurant_talks/constants/variables.dart';

class ErrorDialog extends StatelessWidget {
  final String errorMessage;
  const ErrorDialog({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(errorMessage),
      // content: SingleChildScrollView(
      //   child: ListBody(
      //     children: <Widget>[
      //       Text(errorMessage),
      //     ],
      //   ),
      // ),
      actions: <Widget>[
        TextButton(
          child: Text(okButton, style: const TextStyle(color: darkYellow),),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
