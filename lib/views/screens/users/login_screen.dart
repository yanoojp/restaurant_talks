import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant_talks/views/widgets/base/button_with_underline.dart';
import '../../../constants/variables.dart';
import '../../../view_model/users/login_view_model.dart';
import '../../widgets/base/button.dart';
import '../../widgets/base/logo.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginState = ref.watch(loginStateManager);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
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
                    .read(loginStateManager.notifier)
                    .validateLoginForm(loginState);
                if (validationResult == null) {
                  ref.read(loginStateManager.notifier).login();
                } else {
                  ref
                      .read(loginStateManager.notifier)
                      .showErrorDialog(context, validationResult);
                }
              },
            ),
            const ButtonWithUnderline(
              path: signupScreenPath,
              text: toSignupScreenButton,
            )
          ],
        ),
      ),
    );
  }
}
