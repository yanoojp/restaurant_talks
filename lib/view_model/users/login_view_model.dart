import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:restaurant_talks/constants/variables.dart';
import 'package:restaurant_talks/utils/functions.dart';
import 'package:restaurant_talks/views/screens/items/item_index_screen.dart';
import 'package:restaurant_talks/views/widgets/base/error_dialog.dart';
import '../../models/users/login_model.dart';

part 'login_view_model.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required User user,
    required TextEditingController emailController,
    required TextEditingController passwordController,
  }) = _LoginState;
}

class LoginStateManager extends StateNotifier<LoginState> {
  LoginStateManager()
      : super(_LoginState(
          user: User(email: '', password: ''),
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

  Future<void> login(context) async {
    screenTransitionFunction(context, ItemIndexScreen());
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
