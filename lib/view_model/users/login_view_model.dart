import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
  LoginStateManager() : super(_LoginState(
    user: User(email: '', password: ''),
    emailController: TextEditingController(),
    passwordController: TextEditingController(),
  ));

  Future<void> login() async {
    //... your code here
  }
}

final loginStateManager = StateNotifierProvider<LoginStateManager, LoginState>((ref) => LoginStateManager());
