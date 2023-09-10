import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'guest_number_view_model.freezed.dart';

class GuestNumberViewModel extends StateNotifier<GuestNumberState> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final CollectionReference guestNumbersCollection =
      FirebaseFirestore.instance.collection('guestNumbers');

  GuestNumberViewModel()
      : super(GuestNumberState(
            guestNumber: 0, guestNumberController: TextEditingController())) {
    setGuestNumber();
  }

  Future<void> setGuestNumber() async {
    QuerySnapshot snapshot = await guestNumbersCollection
        .orderBy('guestNumber', descending: true)
        .limit(1)
        .get();
    if (snapshot.docs.isNotEmpty) {
      int latestGuestNumber = snapshot.docs.first.get('guestNumber');
      state.guestNumberController.text = latestGuestNumber.toString();
    }
    state = state.copyWith(
        guestNumber: int.parse(state.guestNumberController.text));
  }

  Future<void> saveGuestNumber(BuildContext context) async {
    final user = auth.currentUser;
    if (user == null) {
      showErrorDialog(context, "User is not authenticated.");
      return;
    }

    if (_isValidNumber(state.guestNumberController.text)) {
      await guestNumbersCollection.add({
        'guestNumber': state.guestNumber,
        'userId': user.uid
      });
    } else {
      showErrorDialog(context, "Invalid guest number entered.");
    }
  }

  bool _isValidNumber(String value) {
    return int.tryParse(value) != null;
  }

  Future<void> showErrorDialog(BuildContext context, String message) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Enter a valid number'),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
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
