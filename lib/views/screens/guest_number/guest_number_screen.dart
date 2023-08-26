import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant_talks/constants/variables.dart';
import 'package:restaurant_talks/view_model/guest_number/guest_number_view_model.dart';
import 'package:restaurant_talks/views/widgets/base/button.dart';

class GuestNumberScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final guestViewModel = ref.read(guestNumberProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text(guestNumberScreen),
        backgroundColor: darkBlue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(guestNumberHintText),
                const SizedBox(height: 15,),
                TextField(
                  controller: guestViewModel.guestNumberController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            Button(
                text: saveButton,
                func: () {
                  ref.read(guestNumberProvider.notifier).setGuestNumber();
                  Navigator.pop(context);
                })
          ],
        ),
      ),
    );
  }
}
