import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_talks/constants/variables.dart';
import 'package:restaurant_talks/firebase/userAuthentication.dart';
import 'package:restaurant_talks/models/users/profile_model.dart';
import 'package:restaurant_talks/routes/app_routes.dart';
import 'package:restaurant_talks/views/widgets/base/error_dialog.dart';

part 'profile_view_model.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    required bool isProcessing,
    required Profile profileRequest,
    required TextEditingController emailController,
    required TextEditingController passwordController,
    required TextEditingController managerNameController,
    required TextEditingController restaurantNameController,
    // required TextEditingController prefectureController,
  }) = _ProfileState;
}

class ProfileStateManager extends StateNotifier<ProfileState> {
  ProfileStateManager()
      : super(_ProfileState(
          isProcessing: false,
          profileRequest: Profile(
            email: '',
            password: '',
            managerName: '',
            restaurantName: '',
            // prefecture: ''
          ),
          emailController: TextEditingController(),
          passwordController: TextEditingController(),
          managerNameController: TextEditingController(),
          restaurantNameController: TextEditingController(),
          // prefectureController: TextEditingController(),
        ));

  String? validateProfileForm(state) {
    String email = state.emailController.text;
    String password = state.passwordController.text;
    String managerName = state.managerNameController.text;
    String restaurantName = state.restaurantNameController.text;
    // String prefecture = state.prefectureController.text;

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

    // if (prefecture.isEmpty) {
    //   return invalidPrefectureMessage;
    // }

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
}

final profileStateManager =
    StateNotifierProvider<ProfileStateManager, ProfileState>(
        (ref) => ProfileStateManager());
