import 'package:freezed_annotation/freezed_annotation.dart';

part 'guest_number_model.freezed.dart';

@freezed
class GuestNumber with _$GuestNumber {
  const factory GuestNumber({
    required String userId,
    required int guestNumber,
  }) = _GuestNumber;
}
