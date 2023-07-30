import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_model.freezed.dart';
part 'signup_model.g.dart';

@freezed
class SignupRequest with _$SignupRequest {
  factory SignupRequest({
    required String email,
    required String password,
    required String managerName,
    required String restaurantName,
    required String prefecture,
  }) = _SignupRequest;

  factory SignupRequest.fromJson(Map<String, dynamic> json) => _$SignupRequestFromJson(json);
}
