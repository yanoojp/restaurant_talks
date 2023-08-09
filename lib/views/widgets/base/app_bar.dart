import 'package:flutter/material.dart';
import '../../../constants/variables.dart';
import 'logo.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
        automaticallyImplyLeading: false,
        title: const Row(
          children: [
            Logo(fontSize: 20),
            Spacer(),
            Row(
              children: [
                Column(
                  children: [
                    Text("Guests: ", style: TextStyle(fontSize: normalFontSize),),
                    Text("100", style: TextStyle(fontSize: normalFontSize),),
                  ],
                ),
                Column(
                  children: [
                    Text("Weather: ", style: TextStyle(fontSize: normalFontSize),),
                    Text("Sunny 25°C", style: TextStyle(fontSize: normalFontSize),),
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
