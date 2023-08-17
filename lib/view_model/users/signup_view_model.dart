import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_talks/utils/functions.dart';
import 'package:restaurant_talks/views/screens/items/item_index_screen.dart';
import '../../constants/variables.dart';
import '../../models/users/signup_model.dart';
import '../../views/widgets/base/error_dialog.dart';

part 'signup_view_model.freezed.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState({
    required bool isProcessing,
    required Signup signupRequest,
    required TextEditingController emailController,
    required TextEditingController passwordController,
    required TextEditingController managerNameController,
    required TextEditingController restaurantNameController,
    required TextEditingController prefectureController,
  }) = _SignupState;
}

class SignupStateManager extends StateNotifier<SignupState> {
  SignupStateManager()
      : super(_SignupState(
          isProcessing: false,
          signupRequest: Signup(
              email: '',
              password: '',
              managerName: '',
              restaurantName: '',
              prefecture: ''),
          emailController: TextEditingController(),
          passwordController: TextEditingController(),
          managerNameController: TextEditingController(),
          restaurantNameController: TextEditingController(),
          prefectureController: TextEditingController(),
        ));

  String? validateSignupForm(state) {
    String email = state.emailController.text;
    String password = state.passwordController.text;
    String managerName = state.managerNameController.text;
    String restaurantName = state.restaurantNameController.text;
    String prefecture = state.prefectureController.text;

    final emailRegex = RegExp(emailRegexString);

    if (!emailRegex.hasMatch(email)) {
      return invalidEmailMessage;
    }

    if (password.isEmpty || password.length < 8) {
      return invalidPasswordMessage;
    }

    if (managerName.isEmpty) {
      return invalidManagerNameMessage;
    }

    if (restaurantName.isEmpty) {
      return invalidRestaurantNameMessage;
    }

    if (prefecture.isEmpty) {
      return invalidPrefectureMessage;
    }

    return null;
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

  Future<void> signup(context) async {
    screenNavigationFunction(context, ItemIndexScreen());
  }
}

final signupStateManager =
    StateNotifierProvider<SignupStateManager, SignupState>(
        (ref) => SignupStateManager());
