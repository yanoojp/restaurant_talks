import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'guest_number_view_model.freezed.dart';

class GuestNumberViewModel extends StateNotifier<GuestNumberState> {
  GuestNumberViewModel()
      : super(GuestNumberState(guestNumber: 0, guestNumberController: TextEditingController()));

  void setGuestNumber() {
    state = state.copyWith(guestNumber: int.parse(state.guestNumberController.text));
  }
}

final guestNumberProvider = StateNotifierProvider<GuestNumberViewModel, GuestNumberState>(
  (ref) => GuestNumberViewModel(),
);


@freezed
class GuestNumberState with _$GuestNumberState {
  const factory GuestNumberState({
    required int guestNumber,
    required TextEditingController guestNumberController,
  }) = _GuestNumberState;
}
