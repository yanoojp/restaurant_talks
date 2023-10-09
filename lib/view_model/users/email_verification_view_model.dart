import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_talks/constants/variables.dart';
import 'package:restaurant_talks/routes/app_routes.dart';

part 'email_verification_view_model.freezed.dart';

@freezed
class EmailVerificationState with _$EmailVerificationState {
  const factory EmailVerificationState({
    required bool isLoading,
  }) = _EmailVerificationState;
}

class EmailVerificationStateManager
    extends StateNotifier<EmailVerificationState> {
  EmailVerificationStateManager()
      : super(const _EmailVerificationState(
          isLoading: false,
        ));

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> resendVerificationEmail() async {
    state = state.copyWith(isLoading: true);
    try {
      await _auth.currentUser?.sendEmailVerification();
    } catch (e) {
      if (e is FirebaseAuthException) {
        // Handle specific Firebase exceptions, or display a generic error message
      }
      // including other errors ahndle errors
      // do as much as tests to find what kind of error handling is needed
      // implement loading indicator (this is also everywhere)
      // as well as button disable feature when loading
    }
    state = state.copyWith(isLoading: false);
  }

  Future<bool> checkEmailVerified() async {
    state = state.copyWith(isLoading: true);
    await _auth.currentUser?.reload();
    bool isVerified = _auth.currentUser?.emailVerified ?? false;
    if (isVerified) {
      goRouter.go(itemIndexScreenPath);
    }
    state = state.copyWith(isLoading: false);
    return isVerified;
  }
}

final emailVerificationStateManager = StateNotifierProvider<
    EmailVerificationStateManager,
    EmailVerificationState>((ref) => EmailVerificationStateManager());
