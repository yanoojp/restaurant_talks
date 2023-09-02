import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant_talks/constants/variables.dart';
import 'package:restaurant_talks/routes/app_routes.dart';
import 'package:restaurant_talks/utils/functions.dart';
import 'package:restaurant_talks/view_model/guest_number/guest_number_view_model.dart';
import 'package:restaurant_talks/views/screens/guest_number/guest_number_screen.dart';
import 'base/logo.dart';

class CustomAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final guestViewModel = ref.watch(guestNumberProvider);

    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        children: [
          const Logo(fontSize: 20),
          const Spacer(),
          Row(
            children: [
              InkWell(
                onTap: () {
                  goRouter.go(guestNumberScreenPath);
                },
                child: Column(
                  children: [
                    const Text(guestNumberAppBarHintText,
                        style: TextStyle(fontSize: normalFontSize)),
                    Text(guestViewModel.guestNumber.toString(),
                        style: const TextStyle(fontSize: normalFontSize)),
                  ],
                ),
              ),
              // const SizedBox(width: 20),
              // const Column(
              //   children: [
              //     Text("Weather: ", style: TextStyle(fontSize: normalFontSize)),
              //     Text("Sunny 25°C", style: TextStyle(fontSize: normalFontSize)),
              //   ],
              // ),
            ],
          ),
        ],
      ),
      backgroundColor: darkBlue,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
