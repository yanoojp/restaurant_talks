import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant_talks/constants/variables.dart';
import 'package:restaurant_talks/routes/app_routes.dart';
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
        height: MediaQuery.of(context).size.height,
        color: darkBlue,
        child: SingleChildScrollView(
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
                decoration: InputDecoration(
                  hintText: emailHintText,
                  hintStyle: const TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                cursorColor: whiteColor,
                style: const TextStyle(color: whiteColor),
                controller: signupState.passwordController,
                decoration: InputDecoration(
                  hintText: passwordHintText,
                  hintStyle: const TextStyle(color: Colors.white),
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
                decoration: InputDecoration(
                  hintText: managerNameHintText,
                  hintStyle: const TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                cursorColor: whiteColor,
                style: const TextStyle(color: whiteColor),
                controller: signupState.restaurantNameController,
                decoration: InputDecoration(
                  hintText: restaurantNameHintText,
                  hintStyle: const TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // PrefectureDropdown(controller: signupState.prefectureController),
              // const SizedBox(
              //   height: 20,
              // ),
              DropdownButton<String>(
                value: ref.watch(authStateManager.notifier).getCurrentLanguage,
                items: <String>[enSelectItem, jaSelectItem].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value == enSelectItem
                        ? englishLanguage
                        : japaneseLanguage),
                  );
                }).toList(),
                onChanged: (newValue) {
                  ref.read(authStateManager.notifier).updateLanguage(newValue);
                },
                dropdownColor: darkBlue,
                style: const TextStyle(color: whiteColor),
              ),
              const SizedBox(
                height: 20,
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
              ButtonWithUnderline(
                  text: toLoginScreenButton,
                  func: () {
                    goRouter.go(loginScreenPath);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
