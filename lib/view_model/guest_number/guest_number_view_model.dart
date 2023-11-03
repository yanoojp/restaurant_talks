import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:restaurant_talks/constants/variables.dart';

part 'guest_number_view_model.freezed.dart';

class GuestNumberViewModel extends StateNotifier<GuestNumberState> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final CollectionReference guestNumbersCollectionInstance =
      FirebaseFirestore.instance.collection(guestNumbersCollection);

  GuestNumberViewModel()
      : super(GuestNumberState(
            guestNumber: 0, guestNumberController: TextEditingController())) {
    setGuestNumber();
  }

  Future<void> setGuestNumber() async {
    QuerySnapshot snapshot = await guestNumbersCollectionInstance
        .orderBy(guestNumberField, descending: true)
        .limit(1)
        .get();
    if (snapshot.docs.isNotEmpty) {
      int latestGuestNumber = snapshot.docs.first.get(guestNumberField);
      state.guestNumberController.text = latestGuestNumber.toString();
      state = state.copyWith(
          guestNumber: int.parse(state.guestNumberController.text));
    }
  }

  Future<void> saveGuestNumber(BuildContext context) async {
    final user = auth.currentUser;
    if (user == null) {
      showErrorDialog(context, userNotAuthenticatedMessage);
      return;
    }

    await guestNumbersCollectionInstance
        .add({guestNumberField: state.guestNumber, userIdField: user.uid});
  }

  bool _isValidNumber(String value) {
    if (value == "") return true;
    return int.tryParse(value) != null;
  }

  Future<void> showErrorDialog(BuildContext context, String message) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(enterValidNumberMessage),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: Text(okButton),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void updateGuestNumber(val, context) {
    if (_isValidNumber(state.guestNumberController.text)) {
      state = state.copyWith(guestNumber: val == '' ? 0 : int.parse(val));
    } else {
      showErrorDialog(context, invalidGuestNumberMessage);
    }
  }
}

final guestNumberProvider =
    StateNotifierProvider<GuestNumberViewModel, GuestNumberState>(
  (ref) => GuestNumberViewModel(),
);

@freezed
class GuestNumberState with _$GuestNumberState {
  const factory GuestNumberState({
    required int guestNumber,
    required TextEditingController guestNumberController,
  }) = _GuestNumberState;
}
