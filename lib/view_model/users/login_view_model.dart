import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'model/auth_state.dart';

final loginViewModelProvider = StateNotifierProvider<LoginViewModel, AuthState>((ref) => LoginViewModel());

class LoginViewModel extends StateNotifier<AuthState> {
  LoginViewModel() : super(AuthState(status: Status.idle));

  Future<void> login(String email, String password) async {
    state = state.copyWith(status: Status.loading);
    try {
      // Implement your authentication logic here.
      // Upon successful login, update the state.
      // state = state.copyWith(user: User(email: email, password: password), status: Status.success);
    } catch (e) {
      state = state.copyWith(status: Status.error, errorMessage: e.toString());
    }
  }
}