import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant_talks/constants/variables.dart';
import 'package:restaurant_talks/view_model/users/signup_view_model.dart';
import 'package:restaurant_talks/views/widgets/base/button.dart';
import 'package:restaurant_talks/views/widgets/base/button_with_underline.dart';
import 'package:restaurant_talks/views/widgets/base/logo.dart';

class SignupScreen extends ConsumerWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signupState = ref.watch(authStateManager);

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
              height: 70,
            ),
            TextField(
              cursorColor: whiteColor,
              style: const TextStyle(color: whiteColor),
              controller: signupState.emailController,
              decoration: const InputDecoration(
                hintText: emailHintText,
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              cursorColor: whiteColor,
              style: const TextStyle(color: whiteColor),
              controller: signupState.passwordController,
              decoration: const InputDecoration(
                hintText: passwordHintText,
                hintStyle: TextStyle(color: Colors.white),
              ),
              obscureText: true,
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              cursorColor: whiteColor,
              style: const TextStyle(color: whiteColor),
              controller: signupState.managerNameController,
              decoration: const InputDecoration(
                hintText: managerNameHintText,
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              cursorColor: whiteColor,
              style: const TextStyle(color: whiteColor),
              controller: signupState.restaurantNameController,
              decoration: const InputDecoration(
                hintText: restaurantNameHintText,
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // PrefectureDropdown(controller: signupState.prefectureController),
            const SizedBox(
              height: 50,
            ),
            Button(
              text: signupButton,
              func: () {
                final validationResult = ref
                    .read(authStateManager.notifier)
                    .validateAuthForm(signupState);
                if (validationResult == null) {
                  ref.read(authStateManager.notifier).signup(context);
                } else {
                  ref
                      .read(authStateManager.notifier)
                      .showErrorDialog(context, validationResult);
                }
              },
            ),
            const ButtonWithUnderline(
              screenPath: loginScreenPath,
              text: toLoginScreenButton,
            )
          ],
        ),
      ),
    );
  }
}
