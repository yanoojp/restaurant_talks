import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant_talks/constants/variables.dart';
import 'package:restaurant_talks/routes/app_routes.dart';
import 'package:restaurant_talks/view_model/guest_number/guest_number_view_model.dart';
import 'package:restaurant_talks/view_model/items/item_index_view_model.dart';
import 'package:restaurant_talks/views/widgets/base/button.dart';

class GuestNumberScreen extends ConsumerWidget {
  const GuestNumberScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final guestNumberState = ref.read(guestNumberProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(guestNumberScreen),
        backgroundColor: darkBlue,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: whiteColor,
          ),
          onPressed: () {
            // Navigator.of(context).pop();
            ref.read(itemIndexViewModelProvider.notifier).loadInitialData();
            goRouter.go(itemIndexScreenPath);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(guestNumberHintText),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: guestNumberState.guestNumberController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(),
                  onChanged: (val) {
                    ref
                        .read(guestNumberProvider.notifier)
                        .updateGuestNumber(val, context);
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            Button(
                text: saveButton,
                func: () {
                  final currentContext = context;
                  ref
                      .read(guestNumberProvider.notifier)
                      .saveGuestNumber(currentContext)
                      .then((_) async {
                    await Future.delayed(const Duration(milliseconds: 100), () {
                      ref
                          .read(itemIndexViewModelProvider.notifier)
                          .loadInitialData();
                    });
                    goRouter.go(itemIndexScreenPath);
                  });
                })
          ],
        ),
      ),
    );
  }
}
