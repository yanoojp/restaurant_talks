import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant_talks/views/widgets/base/button_with_underline.dart';
import '../../../constants/variables.dart';
import '../../../view_model/users/signup_view_model.dart';
import '../../widgets/base/button.dart';
import '../../widgets/base/logo.dart';

class SignupScreen extends ConsumerWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signupState = ref.watch(signupStateManager);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Logo(fontSize: appTitleFontSize,),
            const SizedBox(
              height: 70,
            ),
            TextField(
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
              controller: signupState.restaurantNameController,
              decoration: const InputDecoration(
                hintText: restaurantNameHintText,
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: signupState.prefectureController,
              decoration: const InputDecoration(
                hintText: prefectureHintText,
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Button(
              text: signupButton,
            ),
            const ButtonWithUnderline(
              path: loginScreenPath,
              text: toLoginScreenButton,
            )
          ],
        ),
      ),
    );
  }
}
