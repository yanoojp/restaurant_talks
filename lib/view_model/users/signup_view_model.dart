import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../models/users/signup_model.dart';

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
  SignupStateManager() : super(_SignupState(
    isProcessing: false,
    signupRequest: Signup(
      email: '', password: '', managerName: '', restaurantName: '', prefecture: ''),
    emailController: TextEditingController(),
    passwordController: TextEditingController(),
    managerNameController: TextEditingController(),
    restaurantNameController: TextEditingController(),
    prefectureController: TextEditingController(),
  ));

  Future<void> signup() async {
    //... your code here
  }
}

final signupStateManager = StateNotifierProvider<SignupStateManager, SignupState>((ref) => SignupStateManager());
