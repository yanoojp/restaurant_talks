import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../constants/variables.dart';
import '../../../view_model/users/login_view_model.dart';

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
            Text(
              appTitle,
              style: GoogleFonts.pacifico(
                color: whiteColor,
                fontSize: appTitleFontSize,
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            TextField(
              controller: loginState.passwordController,
              decoration: const InputDecoration(
                hintText: emailHintText,
                hintStyle: TextStyle(
                  color: whiteColor,
                ),
              ),
              obscureText: true,
            ),
            const SizedBox(
              height: 30,
            ),
            TextField(
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
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(backgroundColor: darkYellow),
              child: const Text(
                loginButton,
              ),
            ),
            TextButton(
              onPressed: () {
                final goRouter = GoRouter.of(context);
                goRouter.go(signupScreenPath);
              },
              child: const Text(
                toSignupScreenButton,
                style: TextStyle(
                    decoration: TextDecoration.underline, color: whiteColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
