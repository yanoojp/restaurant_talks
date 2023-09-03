import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant_talks/views/widgets/base/button_with_underline.dart';
import '../../../constants/variables.dart';
import '../../../view_model/users/profile_view_model.dart';
import '../../widgets/base/button.dart';
import '../../widgets/base/logo.dart';

class SignupScreen extends ConsumerWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileState = ref.watch(profileStateManager);

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
              controller: profileState.emailController,
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
              controller: profileState.passwordController,
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
              controller: profileState.managerNameController,
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
              controller: profileState.restaurantNameController,
              decoration: const InputDecoration(
                hintText: restaurantNameHintText,
                hintStyle: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // PrefectureDropdown(controller: profileState.prefectureController),
            const SizedBox(
              height: 50,
            ),
            Button(
              text: signupButton,
              func: () {
                final validationResult = ref
                    .read(profileStateManager.notifier)
                    .validateProfileForm(profileState);
                if (validationResult == null) {
                  ref.read(profileStateManager.notifier).signup(context);
                } else {
                  ref
                      .read(profileStateManager.notifier)
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
