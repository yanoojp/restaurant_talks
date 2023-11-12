import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_model.freezed.dart';

@freezed
class Profile with _$Profile {
  factory Profile({
    int? id,
    required String email,
    required String password,
    required String managerName,
    required String restaurantName,
    required String language
    // required String prefecture,
  }) = _Profile;
}
