import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../models/users/signup_model.dart';
import 'model/auth_state.dart';

final signupViewModelProvider = StateNotifierProvider<SignupViewModel, AuthState>((ref) => SignupViewModel());

class SignupViewModel extends StateNotifier<AuthState> {
  SignupViewModel() : super(AuthState(status: Status.idle));

  Future<void> signup(SignupRequest request) async {
    state = state.copyWith(status: Status.loading);
    try {
      // Implement your signup logic here.
      // Upon successful signup, update the state.
      // state = state.copyWith(user: User(email: request.email, password: request.password), status: Status.success);
    } catch (e) {
      state = state.copyWith(status: Status.error, errorMessage: e.toString());
    }
  }
}