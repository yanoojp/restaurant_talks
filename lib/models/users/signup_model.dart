import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_model.freezed.dart';
part 'signup_model.g.dart';

@freezed
class Signup with _$Signup {
  factory Signup({
    required String email,
    required String password,
    required String managerName,
    required String restaurantName,
    // required String prefecture,
  }) = _Signup;

  factory Signup.fromJson(Map<String, dynamic> json) => _$SignupFromJson(json);
}
