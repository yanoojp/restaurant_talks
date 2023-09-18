import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant_talks/constants/variables.dart';
import 'package:restaurant_talks/view_model/users/signup_view_model.dart';
import 'package:restaurant_talks/views/widgets/base/button.dart';
import 'package:restaurant_talks/views/widgets/base/button_with_underline.dart';
import 'package:restaurant_talks/views/widgets/base/logo.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginState = ref.watch(authStateManager);

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(50.0),
        color: darkBlue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Logo(
              fontSize: appTitleFontSize,
            ),
            const SizedBox(
              height: 100,
            ),
            TextField(
              cursorColor: whiteColor,
              style: const TextStyle(color: whiteColor),
              controller: loginState.emailController,
              decoration: const InputDecoration(
                hintText: emailHintText,
                hintStyle: TextStyle(
                  color: whiteColor,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
              cursorColor: whiteColor,
              style: const TextStyle(color: whiteColor),
              controller: loginState.passwordController,
              decoration: const InputDecoration(
                hintText: passwordHintText,
                hintStyle: TextStyle(
                  color: whiteColor,
                ),
              ),
              obscureText: true,
            ),
            const SizedBox(
              height: 80,
            ),
            Button(
              text: loginButton,
              func: () {
                final validationResult = ref
                    .read(authStateManager.notifier)
                    .validateAuthForm(loginState);
                if (validationResult == null) {
                  ref.read(authStateManager.notifier).login(context);
                } else {
                  ref
                      .read(authStateManager.notifier)
                      .showErrorDialog(context, validationResult);
                }
              },
            ),
            const ButtonWithUnderline(
              screenPath: signupScreenPath,
              text: toSignupScreenButton,
            )
          ],
        ),
      ),
    );
  }
}
