import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:restaurant_talks/constants/variables.dart';
import 'package:restaurant_talks/generated/l10n.dart';
import 'package:restaurant_talks/routes/app_routes.dart';
import 'package:restaurant_talks/view_model/items/item_index_view_model.dart';

class CustomBottomNavBar extends ConsumerWidget {
  final int currentIndex;

  const CustomBottomNavBar({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BottomNavigationBar(
        backgroundColor: darkBlue,
        selectedItemColor: darkYellow,
        unselectedItemColor: whiteColor,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: S.of(context).homeNavBar,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: S.of(context).profileNavBar,
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            ref.read(itemIndexViewModelProvider.notifier).loadInitialData();
            goRouter.go(itemIndexScreenPath);
          } else if (index == 1) {
            goRouter.go(profileScreenPath);
          }
        });
  }
}
