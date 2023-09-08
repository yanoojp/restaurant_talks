import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_talks/constants/variables.dart';
import 'package:restaurant_talks/firebase/userAuthentication.dart';
import 'package:restaurant_talks/models/users/login_model.dart';
import 'package:restaurant_talks/routes/app_routes.dart';
import 'package:restaurant_talks/views/widgets/base/error_dialog.dart';

part 'login_view_model.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required CustomisedUser user,
    required TextEditingController emailController,
    required TextEditingController passwordController,
  }) = _LoginState;
}

class LoginStateManager extends StateNotifier<LoginState> {
  LoginStateManager()
      : super(_LoginState(
          user: CustomisedUser(email: '', password: ''),
          emailController: TextEditingController(),
          passwordController: TextEditingController(),
        ));

  String? validateLoginForm(state) {
    String email = state.emailController.text;
    String password = state.passwordController.text;

    final emailRegex = RegExp(emailRegexString);

    if (!emailRegex.hasMatch(email)) {
      return invalidEmailMessage;
    }

    if (password.isEmpty || password.length < 8) {
      return invalidPasswordMessage;
    }

    return null;
  }

  Future<void> login(BuildContext context) async {
    final authService = FirebaseAuthService();
    final user =
        CustomisedUser(email: state.user.email, password: state.user.password);

    final userCredential = await authService.login(user);

    if (userCredential != null) {
      goRouter.go(itemIndexScreenPath);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Login failed! Please check your credentials.")));
    }
  }

  Future<void> showErrorDialog(context, errorMessage) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return ErrorDialog(
          errorMessage: errorMessage,
        );
      },
    );
  }
}

final loginStateManager = StateNotifierProvider<LoginStateManager, LoginState>(
    (ref) => LoginStateManager());
