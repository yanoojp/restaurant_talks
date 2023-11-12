import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant_talks/constants/variables.dart';
import 'package:restaurant_talks/generated/l10n.dart';
import 'package:restaurant_talks/routes/app_routes.dart';
import 'package:restaurant_talks/view_model/items/item_index_view_model.dart';
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
      backgroundColor: darkBlue,
      body: Container(
        padding: const EdgeInsets.all(50.0),
        color: darkBlue,
        child: Center(
          child: SingleChildScrollView(
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
                  decoration: InputDecoration(
                    hintText: S.of(context).emailHintText,
                    hintStyle: const TextStyle(
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
                  decoration: InputDecoration(
                    hintText: S.of(context).passwordHintText,
                    hintStyle: const TextStyle(
                      color: whiteColor,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        loginState.isObscure
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: whiteColor,
                      ),
                      onPressed: () {
                        ref
                            .read(authStateManager.notifier)
                            .updateIsObscure(loginState.isObscure);
                      },
                    ),
                  ),
                  obscureText: loginState.isObscure,
                ),
                const SizedBox(
                  height: 80,
                ),
                Button(
                  text: S.of(context).loginButton,
                  func: () async {
                    final validationResult = ref
                        .read(authStateManager.notifier)
                        .validateAuthForm(loginState, context);
                    if (validationResult == null) {
                      await ref
                          .read(itemIndexViewModelProvider.notifier)
                          .loadInitialData();
                      ref.read(authStateManager.notifier).login(context);
                    } else {
                      ref
                          .read(authStateManager.notifier)
                          .showErrorDialog(context, validationResult);
                    }
                  },
                ),
                ButtonWithUnderline(
                    text: S.of(context).toSignupScreenButton,
                    func: () {
                      goRouter.go(signupScreenPath);
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
