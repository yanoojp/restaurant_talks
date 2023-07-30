import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_talks/models/users/signup_model.dart';

import '../../../models/users/login_model.dart';

part 'auth_state.freezed.dart';
part 'auth_state.g.dart';

enum Status { idle, loading, success, error }

@freezed
class AuthState with _$AuthState {
  factory AuthState({
    required Status status,
    User? user,
    SignupRequest? signupRequest,
    String? errorMessage,
  }) = _AuthState;

  factory AuthState.fromJson(Map<String, dynamic> json) => _$AuthStateFromJson(json);
}