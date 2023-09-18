import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_talks/constants/variables.dart';
import 'package:restaurant_talks/firebase/user_authentication.dart';
import 'package:restaurant_talks/models/users/profile_model.dart';
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
        )) {
    setUserInfo();
  }

  Future<void> setUserInfo() async {
    try {
      state = state.copyWith(isProcessing: true);

      final auth = FirebaseAuth.instance;
      final firestore = FirebaseFirestore.instance;

      final user = auth.currentUser;
      if (user != null) {
        state.emailController.text = user.email ?? '';
        state.passwordController.text = '';

        DocumentSnapshot userDoc =
            await firestore.collection('users').doc(user.uid).get();

        if (userDoc.exists) {
          Map<String, dynamic> userData =
              userDoc.data() as Map<String, dynamic>;

          state.managerNameController.text = userData['managerName'] ?? '';
          state.restaurantNameController.text =
              userData['restaurantName'] ?? '';
          // state.prefectureController.text = userData['prefecture'] ?? '';
        } else {
          print("User data not found in Firestore");
        }
      } else {
        print("No user currently signed in");
      }
    } catch (e) {
      print("Error setting user info: $e");
    } finally {
      state = state.copyWith(isProcessing: false);
    }
  }

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

    if (password.length < 8) {
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

  Future<void> updateProfile() async {
    final authService = FirebaseAuthService();
    String updateEmail = state.emailController.text;
    String updatedManagerName = state.managerNameController.text;
    String updatedRestaurantName = state.restaurantNameController.text;

    try {
      await authService.updateUserProfiles(
        email: updateEmail,
        managerName: updatedManagerName,
        restaurantName: updatedRestaurantName,
      );
    } catch (e) {
      print("Failed to update profile details: $e");
      // Handle error, perhaps notify the user
    }
  }

  Future<void> logout() async {
    final authService = FirebaseAuthService();
    await authService.signOut();
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

  Future<void> updateUserAuth() async {
    final authService = FirebaseAuthService();
    String updatedEmail = state.emailController.text;
    String? updatedPassword = state.passwordController.text != '' ? state.passwordController.text : null;

    try {
      await authService.updateUserAuths(
        email: updatedEmail,
        password: updatedPassword,
      );
    } catch (e) {
      print("Failed to update email: $e");
      // Handle error, perhaps notify the user
    }
  }
}

final profileStateManager =
    StateNotifierProvider<ProfileStateManager, ProfileState>(
        (ref) => ProfileStateManager());
