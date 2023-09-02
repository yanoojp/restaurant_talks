import 'package:flutter/material.dart';
import 'package:restaurant_talks/constants/variables.dart';
import 'package:restaurant_talks/routes/app_routes.dart';
import 'package:restaurant_talks/utils/functions.dart';
import 'package:restaurant_talks/views/screens/items/item_index_screen.dart';
import 'package:restaurant_talks/views/screens/users/profile_screen.dart';

class CustomBottomNavBar extends StatefulWidget {
  final int currentIndex;

  const CustomBottomNavBar({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);

  @override
  _CustomBottomNavBarState createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: darkBlue,
        selectedItemColor: lightBlue,
        unselectedItemColor: whiteColor,
        currentIndex: widget.currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: homeNavBar,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: profileNavBar,
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            goRouter.go(itemIndexScreenPath);
          } else if (index == 1) {
            goRouter.go(profileScreenPath);
          }
        });
  }
}
