import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_model.freezed.dart';

@freezed
class User with _$User {
  factory User({
    required String email,
    required String password,
  }) = _User;
}