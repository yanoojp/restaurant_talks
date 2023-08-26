import 'package:flutter/material.dart';
import 'package:restaurant_talks/utils/functions.dart';
import 'package:restaurant_talks/views/screens/guest_number/guest_number_screen.dart';
import '../../constants/variables.dart';
import 'base/logo.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
                  screenNavigationFunction(context, GuestNumberScreen());
                },
                child: const Column(
                  children: [
                    Text("Guests: ", style: TextStyle(fontSize: normalFontSize)),
                    Text("100", style: TextStyle(fontSize: normalFontSize)),
                  ],
                ),
              ),
              const SizedBox(width: 20),
              const Column(
                children: [
                  Text("Weather: ", style: TextStyle(fontSize: normalFontSize)),
                  Text("Sunny 25°C", style: TextStyle(fontSize: normalFontSize)),
                ],
              ),
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
