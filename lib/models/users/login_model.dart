import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_model.freezed.dart';

@freezed
class CustomisedUser with _$CustomisedUser {
  factory CustomisedUser({
    required String email,
    required String password,
  }) = _CustomisedUser;
}