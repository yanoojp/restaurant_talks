import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_talks/constants/variables.dart';
import 'package:restaurant_talks/firebase/userAuthentication.dart';
import 'package:restaurant_talks/models/users/login_model.dart';
import 'package:restaurant_talks/models/users/profile_model.dart';
import 'package:restaurant_talks/routes/app_routes.dart';
import 'package:restaurant_talks/views/widgets/base/error_dialog.dart';

part 'user_authentication_view_model.freezed.dart';

@freezed
class UserAuthenticationState with _$UserAuthenticationState {
  const factory UserAuthenticationState({
    required CustomisedUser user,
    required TextEditingController emailController,
    required TextEditingController passwordController,
    required TextEditingController managerNameController,
    required TextEditingController restaurantNameController,
  }) = _UserAuthenticationState;
}

class UserAuthenticationStateManager
    extends StateNotifier<UserAuthenticationState> {
  UserAuthenticationStateManager()
      : super(_UserAuthenticationState(
          user: CustomisedUser(email: '', password: ''),
          emailController: TextEditingController(),
          passwordController: TextEditingController(),
          managerNameController: TextEditingController(),
          restaurantNameController: TextEditingController(),
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

  Future<void> signup(BuildContext context) async {
    final authService = FirebaseAuthService();
    final profile = Profile(
        email: state.emailController.text,
        password: state.passwordController.text,
        managerName: state.managerNameController.text,
        restaurantName: state.restaurantNameController.text);

    final userCredential = await authService.register(profile);

    if (userCredential != null) {
      goRouter.go(itemIndexScreenPath);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Signup failed! Please check your input.")));
    }
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

  Future<void> deleteAccount() async {
    final FirebaseAuth auth = FirebaseAuth.instance;
    final FirebaseFirestore firestore = FirebaseFirestore.instance;

    try {
      final user = auth.currentUser;

      if (user != null) {
        await firestore.collection('users').doc(user.uid).delete();
        await user.delete();
      } else {
        print("No user currently signed in");
      }
    } catch (e) {
      print("Error deleting account: $e");
      // You might want to throw the error or handle it differently depending on your needs.
    }
  }
}

final userAuthenticationStateManager = StateNotifierProvider<
    UserAuthenticationStateManager,
    UserAuthenticationState>((ref) => UserAuthenticationStateManager());
